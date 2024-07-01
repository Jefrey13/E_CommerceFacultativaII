using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
using GalaSoft.MvvmLight;
using Plugin.Toast;
using SQLite;
using Stripe;
using Stripe.Climate;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific;

namespace eCommerce.ViewModel
{
	public class CartViewModel : INotifyPropertyChanged
	{
		private CartDataAccess _cartDataAccess;
		private ProductDataAccess _productDataAccess;
		private FavoriteDataAccess _favoriteDataAccess;

		readonly List<ItemsPreview> sourceP;
		public ObservableCollection<ItemsPreview> itemPreviewP { get; private set; }
		public ICommand DecreseTapCommand { get; set; }
		public ICommand IncreaseTapCommand { get; set; }
		public ICommand FavoriteProductCommand { get; set; }
		public ICommand DeleteProduvtCartCommand { get; set; }

		private decimal totalPrice;
		public decimal TotalPrice
		{
			get => totalPrice;
			set
			{
				totalPrice = value;
				OnPropertyChanged(nameof(TotalPrice));
			}
		}

		public CartViewModel()
		{
			sourceP = new List<ItemsPreview>();
			_cartDataAccess = new CartDataAccess();
			_productDataAccess = new ProductDataAccess();
			_favoriteDataAccess = new FavoriteDataAccess();

			Task.Run(async () => await ItemToCartCollection());

			IncreaseTapCommand = new Command<ItemsPreview>( async item =>
			{
				int Id = item.Id;
				await _cartDataAccess.IncreaseCartItemQuantity(Id, 1);
				await ItemToCartCollection(1, Id);

			});
			DecreseTapCommand = new Command<ItemsPreview>(async item =>
			{
				if(item.Quantity > 1)
				{
					int Id = item.Id;
					 await _cartDataAccess.DecreaseCartItemQuantity(Id, 1);
					 var product = _productDataAccess.GetProductsById(Id);

					 await ItemToCartCollection(2, Id);
				}
				else
				{
					CrossToastPopUp.Current.ShowCustomToast("You cannot decrease the quantity of this product any further.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});
			FavoriteProductCommand = new Command<ItemsPreview>(async item =>
			{
				try
				{
					var result = await _favoriteDataAccess.AddFavorite(item.Id); // Llamar al método con el parámetro item.Id

					if (result == 1)
					{ 
						CrossToastPopUp.Current.ShowCustomToast("Product added to your favorites.", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new PreferencesPage());
					} else if(result == 2)
					{
						CrossToastPopUp.Current.ShowCustomToast("Product has already been added to your favorites.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
					}
					else
					{
						throw new Exception();
					}
				}
				catch (Exception ex)
				{
					CrossToastPopUp.Current.ShowCustomToast("The product couldn't be added to your favorites.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});
			DeleteProduvtCartCommand = new Command<ItemsPreview>( async item =>
			{
				try
				{
					int Id = item.Id;
					var result = await _cartDataAccess.RemoveCartItem(Id);

					if (result.IsSuccess == true)
					{
						CrossToastPopUp.Current.ShowCustomToast("Product has been removed from your cart.", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						await ItemToCartCollection();
					}
					else
					{
						throw new Exception();
					}
				}
				catch(Exception ex)
				{
					CrossToastPopUp.Current.ShowCustomToast("Product couldn't be removed", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});
		}

		async Task ItemToCartCollection(int id = -1, int type = 0)
		{
			try
			{
				var product = await _cartDataAccess.GetCartProducts();

				if (product.Data != null)
				{
					sourceP.Clear();
					decimal totalPrice = 0m;

					foreach (var item in product.Data)
					{
						int quantity = item.Quantity;
						decimal price;

						// Intentar convertir el precio a decimal
						if (!decimal.TryParse(item.Price, out price))
						{
							// Si no se puede convertir, saltar este producto
							continue;
						}

						if (type == 1 && id == item.Id) // Aumentar la cantidad de productos en el carrito
						{
							quantity++;
						}
						else if (type == 2 && id == item.Id) // Disminuir la cantidad de productos en el carrito
						{
							quantity = Math.Max(0, quantity - 1); // Asegurarse de que la cantidad no sea negativa
						}

						sourceP.Add(new ItemsPreview
						{
							Id = item.Id,
							Name = item.Name,
							ImageUrl = item.Image,
							price = (price * quantity).ToString("F2"), // Formatear como cadena con 2 decimales
							Description = item.Description,
							Quantity = quantity
						});

						totalPrice += price * quantity;
					}

					TotalPrice = totalPrice; // Asegurarse de asignar el totalPrice calculado
					itemPreviewP = new ObservableCollection<ItemsPreview>(sourceP);
					OnPropertyChanged(nameof(itemPreviewP));
					OnPropertyChanged(nameof(TotalPrice)); // Notificar cambio en TotalPrice si es necesario
				}
			}
			catch (SQLiteException ex)
			{
				itemPreviewP = new ObservableCollection<ItemsPreview>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				itemPreviewP = new ObservableCollection<ItemsPreview>();
				Console.WriteLine($"Error al crear la colección de elementos: {ex.Message}");
				// Manejar la excepción según sea necesario
			}
		}

		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
