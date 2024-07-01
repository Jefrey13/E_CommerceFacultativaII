using eCommerce.DataAccess;
using eCommerce.Views;
using Org.BouncyCastle.Asn1.Cmp;
using Plugin.Toast;
using SQLite;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.Model
{
    public class ProductViewModel: INotifyPropertyChanged
    {
        private int _id;

        private ProductDataAccess _productDataAccess;
        private FavoriteDataAccess _favoriteDataAccess;
		private CartDataAccess _productCartDataAccess;

		readonly List<ItemsPreview> sourceP;
		public ObservableCollection<ItemsPreview> itemPreviewP { get; private set; }

		readonly IList<Reviews> source;
        public ObservableCollection<Reviews> itemPreview { get; private set; }
		public ICommand AddCommand { get; set; }
		public ICommand FavoriteProductCommand { get; set; }
		public ProductViewModel(int id)
        {
            _id = id;
            _productDataAccess = new ProductDataAccess();
			_productCartDataAccess  = new CartDataAccess();
			_favoriteDataAccess  = new FavoriteDataAccess();
			source = new List<Reviews>();            
            sourceP = new List<ItemsPreview>();
            CreateDetailItemCollection();

            AddCommand = new Command<ItemsPreview>(async item =>
			{
				try
				{
					var cart = await _productCartDataAccess.AddCartItem(_id, 1);

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
				}catch(Exception ex)
				{
					CrossToastPopUp.Current.ShowCustomToast("Product couldn't be added to your cart.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			});

			FavoriteProductCommand = new Command<ItemsPreview>(async _ =>
			{
				try
				{
					var result = await _favoriteDataAccess.AddFavorite(_id); // Llamar al método con el parámetro item.Id

					if (result == 1)
					{
						CrossToastPopUp.Current.ShowCustomToast("Product added to your favorites.", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new PreferencesPage());
					}
					else if (result == 2)
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

		}
		void CreateDetailItemCollection()
		{
			try
			{
				var product = _productDataAccess.GetProductsById(_id);

				if (product.Data != null)
				{
					sourceP.Add(new ItemsPreview
					{
						ImageUrl = product.Data.Image,
						Name = product.Data.Name,
						price = product.Data.Price,
						Description = product.Data.Description
					});
					itemPreviewP = new ObservableCollection<ItemsPreview>(sourceP);
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

        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}
