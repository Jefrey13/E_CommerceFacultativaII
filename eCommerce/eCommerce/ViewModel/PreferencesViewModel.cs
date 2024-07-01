using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
using Plugin.Toast;
using SQLite;
using Stripe;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace eCommerce.ViewModels
{
	public class PreferencesViewModel: BaseViewModel
	{
		private FavoriteDataAccess _favoriteDataAccess;
		private CartDataAccess _cartDataAccess;
		readonly List<ItemsPreview> source;
		private ObservableCollection<ItemsPreview> _itemPreviewP;
		public ObservableCollection<ItemsPreview> itemPreviewP
		{
			get { return _itemPreviewP; }
			set { SetValue(ref _itemPreviewP, value); }
		}
		public ICommand AddFavoriteToCartCommand { get; set; }
		public ICommand RemoveProductCommand { get; set; }

		public PreferencesViewModel() {
			source = new List<ItemsPreview>();
			_favoriteDataAccess = new FavoriteDataAccess();
			_cartDataAccess = new CartDataAccess();
			_itemPreviewP = new ObservableCollection<ItemsPreview>();
			// Llamar LoadData() de manera asincrónica desde el constructor
			Task.Run(async () => await LoadData());

			RemoveProductCommand = new Command<ItemsPreview>(async item =>
			{
				try
				{
					var result = await _favoriteDataAccess.RemoveFavorite(item.Id);

					if (result == 1)
					{
						CrossToastPopUp.Current.ShowCustomToast("Product has been removed from your favorites.", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						await LoadData();
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
			AddFavoriteToCartCommand = new Command<ItemsPreview>(async item =>
			{
				try
				{
					var cart = await _cartDataAccess.AddCartItem(item.Id, 1);

					if (cart.IsSuccess == true)
					{
						CrossToastPopUp.Current.ShowCustomToast("Product has been added to your cart.", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new Cart()));
					}
					else if (cart.IsSuccess == false)
					{
						// Mostrar mensaje si el producto ya está en el carrito o si hay otro problema
						CrossToastPopUp.Current.ShowCustomToast("Product already exists, couldn't be added to your cart.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
					}
				}
				catch (Exception ex)
				{
					CrossToastPopUp.Current.ShowCustomToast("Product couldn't added this producto to your cart.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});
		}

		async Task LoadData()
		{
			try
			{
				var products = await _favoriteDataAccess.GetFavorites();

				if (products != null)
				{
					_itemPreviewP.Clear();
					foreach (var item in products.Data)
					{
						_itemPreviewP.Add(new ItemsPreview
						{
							Id= item.Id,
							ImageUrl = item.Image,
							Name = item.Name,
							Description = item.Description,
							price = item.Price
						});
					}
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
			finally{
				OnPropertyChanged(nameof(itemPreviewP)); // Notificar a la vista que los datos han cambiado
			}
		}

		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
