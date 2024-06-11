using eCommerce.DataAccess;
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
            CreateMenuCollection();
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
			var productBestS = _productTagDataAccess.GetProductsByTag("Bestseller");

			var e = productBestS.Data;
			foreach (var item in productBestS.Data)
			{
				source1.Add(new ItemsPreview
				{
					ImageUrl = item.Image,
					Name = item.Name,
					price = item.Price
				});
			}
			itemPreview = new ObservableCollection<ItemsPreview>(source1);
        }
        void CreateMenuCollection()
        {
            source.Add(new BrandsItems
            {                
                brand = "Bang and Olufsen",
                itemName = "All"
            });
            source.Add(new BrandsItems
            {
                brand = "Bang and Olufsen",
                itemName = "Headphones"
            });
            source.Add(new BrandsItems
            {
                brand = "Bang and Olufsen",
                itemName = "Speakers"
            });
            source.Add(new BrandsItems
            {
                brand = "Bang and Olufsen",
                itemName = "Microphones"
            });
            itemList = new ObservableCollection<BrandsItems>(source);
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
