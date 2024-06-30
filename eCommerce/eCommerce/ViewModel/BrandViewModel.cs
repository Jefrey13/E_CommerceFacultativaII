using eCommerce.DataAccess;
using SQLite;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;

namespace eCommerce.Model
{
    public class BrandViewModel : INotifyPropertyChanged
    {
		private ProductTagDataAccess _productTagDataAccess;
		readonly IList<BrandsItems> source;
        readonly IList<ItemsPreview> source1;
        public ObservableCollection<BrandsItems> itemList{ get; private set; }
        public ObservableCollection<ItemsPreview> itemPreview { get; private set; }

        ICommand tapCommand;
        public  BrandViewModel()
        {
			_productTagDataAccess = new ProductTagDataAccess();

            source = new List<BrandsItems>();
            source1 = new List<ItemsPreview>();
            CreateItemCollection();
        }

        public ICommand TapCommand
        {
            
            get { 
                return tapCommand; 
            }
        }
		void CreateItemCollection()
		{
			try
			{
				var productBestSellers = _productTagDataAccess.GetProductsByTag("Bestseller");

				// Limpiar source1 antes de agregar nuevos elementos (si es necesario)
				source1.Clear();

				foreach (var product in productBestSellers.Data)
				{
					source1.Add(new ItemsPreview
					{
						ImageUrl = product.Image,
						Name = product.Name,
						price = product.Price
					});
				}

				// Asignar source1 a itemPreview
				itemPreview = new ObservableCollection<ItemsPreview>(source1);
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

        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}
