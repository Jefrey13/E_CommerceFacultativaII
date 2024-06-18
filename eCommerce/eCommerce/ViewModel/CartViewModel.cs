using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
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

namespace eCommerce.ViewModel
{
	public class CartViewModel : INotifyPropertyChanged
	{
		private CartDataAccess _cartDataAccess;

		readonly List<ItemsPreview> sourceP;
		public ObservableCollection<ItemsPreview> itemPreviewP { get; private set; }
		public ICommand DecreseTapCommand { get; set; }
		public ICommand IncreaseTapCommand { get; set; }

		public CartViewModel()
		{
			sourceP = new List<ItemsPreview>();
			_cartDataAccess = new CartDataAccess();

			ItemToCartCollection();

			IncreaseTapCommand = new Command<ItemsPreview>(item =>
			{
				int Id = item.Id;
				_cartDataAccess.IncreaseCartItemQuantity(Id, 1);
				ItemToCartCollection();

			});
			DecreseTapCommand = new Command<ItemsPreview>(item =>
			{
				int Id = item.Id;
				_cartDataAccess.DecreaseCartItemQuantity(Id, 1);
				ItemToCartCollection();
				
			});
		}

		void ItemToCartCollection()
		{
			var product = _cartDataAccess.GetCartProducts();

			if (product.Data != null)
			{
				{
					sourceP.Clear();
					foreach (var item in product.Data)
					{ 
						sourceP.Add(new ItemsPreview
						{
							Id = item.Id,
							Name = item.Name,
							ImageUrl = item.Image,
							price = item.Price,
							Description = item.Description,
							Quantity = item.Quantity
						});
					}
					itemPreviewP = new ObservableCollection<ItemsPreview>(sourceP);
					OnPropertyChanged(nameof(itemPreviewP));
				}
			}
		}
		public event PropertyChangedEventHandler PropertyChanged;

		protected virtual void OnPropertyChanged(string propertyName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
