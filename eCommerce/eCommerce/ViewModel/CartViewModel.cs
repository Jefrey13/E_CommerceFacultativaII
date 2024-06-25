using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
using GalaSoft.MvvmLight;
using Plugin.Toast;
using Stripe;
using Stripe.Climate;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific;

namespace eCommerce.ViewModel
{
	public class CartViewModel : INotifyPropertyChanged
	{
		private CartDataAccess _cartDataAccess;
		private ProductDataAccess _productDataAccess;

		readonly List<ItemsPreview> sourceP;
		public ObservableCollection<ItemsPreview> itemPreviewP { get; private set; }
		public ICommand DecreseTapCommand { get; set; }
		public ICommand IncreaseTapCommand { get; set; }
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

			ItemToCartCollection();

			IncreaseTapCommand = new Command<ItemsPreview>(item =>
			{
				int Id = item.Id;
				_cartDataAccess.IncreaseCartItemQuantity(Id, 1);
				ItemToCartCollection(1, Id);

			});
			DecreseTapCommand = new Command<ItemsPreview>(item =>
			{
				if(item.Quantity > 1)
				{
					int Id = item.Id;
					_cartDataAccess.DecreaseCartItemQuantity(Id, 1);
					var product = _productDataAccess.GetProductsById(Id);

					ItemToCartCollection(2, Id);
				}
				else
				{
					CrossToastPopUp.Current.ShowCustomToast("You cannot decrease the quantity of this product any further.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});
			DeleteProduvtCartCommand = new Command<ItemsPreview>(item =>
			{
				int Id = item.Id;
				_cartDataAccess.RemoveCartItem(Id);
				ItemToCartCollection();
			});
		}

		void ItemToCartCollection(int id = -1, int type = 0)
		{
			var product = _cartDataAccess.GetCartProducts();

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



		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
