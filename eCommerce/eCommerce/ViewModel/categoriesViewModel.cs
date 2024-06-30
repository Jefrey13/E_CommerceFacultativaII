using eCommerce.DataAccess;
using eCommerce.Views;
using SQLite;
using Stripe;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.Model
{  
    public class categoriesViewModel : INotifyPropertyChanged
    {
		private ProductCategoryDataAccess _productCategoryDataAccess;
        private BrandTagDataAccess _brandTagDataAccess;
        private BrandCategoryDataAccess _brandCategoryDataAccess;
		// Agregar una propiedad para almacenar el nombre de la categoría
		public string SelectedCategoryName { get; private set; }

		readonly IList<FeaturedBrands> sourceT;
        public ObservableCollection<FeaturedBrands> topBItemPreview { get; private set; }

        readonly IList<ItemsPreview> source;
        public ObservableCollection<ItemsPreview> itemPreview { get; private set; }

        public ICommand FeaturedTapCommand { get; set; }
        public ICommand ItemTapCommand { get; set; }
        public categoriesViewModel(string categoryName)
        {
			SelectedCategoryName = categoryName; // Asignar el nombre recibido a la propiedad
			_productCategoryDataAccess = new ProductCategoryDataAccess();
            _brandTagDataAccess = new BrandTagDataAccess();
            _brandCategoryDataAccess = new BrandCategoryDataAccess();

			source = new List<ItemsPreview>();
			sourceT = new List<FeaturedBrands>();
            CreateItemCollection();
            CreateFeaturedItemCollection();

            ItemTapCommand = new Command<ItemsPreview>(item =>
            {
                int Id = item.Id;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new ProductPage(Id)));
            });

            FeaturedTapCommand = new Command<FeaturedBrands>(brand =>
            {
                string selBrand = brand.brand;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new NavigationPage(new BrandPage(selBrand)));
            });
        }       
        void CreateItemCollection()
        {
            try
            {
                var productC = _productCategoryDataAccess.GetProductsByCategory(SelectedCategoryName);

                if (productC.Data != null)
                {
                    foreach (var item in productC.Data)
                    {
                        source.Add(new ItemsPreview
                        {
                            Id = item.Id,
                            ImageUrl = item.Image,
                            Name = item.Name,
                            price = item.Price
                        });
                    }
                }
                itemPreview = new ObservableCollection<ItemsPreview>(source);
            }
			catch (SQLiteException ex)
			{
				itemPreview = new ObservableCollection<ItemsPreview>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				itemPreview = new ObservableCollection<ItemsPreview>();
				Console.WriteLine($"Error al crear la colección de elementos: {ex.Message}");
				// Manejar la excepción según sea necesario
			}
		}

        void CreateFeaturedItemCollection()
        {
            try
            {

                var topBrands = _brandCategoryDataAccess.GetBrandsByCategory(SelectedCategoryName);

                if (topBrands.Data != null)
                {
                    foreach (var item in topBrands.Data)
                    {
                        sourceT.Add(new FeaturedBrands
                        {
                            ImageUrl = item.ImageUrl,
                            brand = item.Name,
                            details = item.Description
                        });
                    }
                    topBItemPreview = new ObservableCollection<FeaturedBrands>(sourceT);
                }
            }
			catch (SQLiteException ex)
			{
				topBItemPreview = new ObservableCollection<FeaturedBrands>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				topBItemPreview = new ObservableCollection<FeaturedBrands>();
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
