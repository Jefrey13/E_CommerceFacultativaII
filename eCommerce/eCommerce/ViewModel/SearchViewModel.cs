using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
using Stripe;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.ViewModel
{
	public class SearchViewModel: INotifyPropertyChanged
    {
        readonly List<ItemsPreview> source;
		readonly List<FeaturedBrands> brandSource;
		private string _contain;
		private ObservableCollection<ItemsPreview> _itemPreview;
		private ObservableCollection<FeaturedBrands> _brandItemPreview;
		private SearchProductDataAccess _searchProductDataAccess;
		private BrandTagDataAccess _brandTagDataAccess;

		public ICommand ProductDetailCommand { get; set; }
		public ICommand BrandDetailCommand { get; set; }

		public SearchViewModel(string contain)
		{
			_contain = contain;

			source = new List<ItemsPreview>();
			brandSource = new List<FeaturedBrands>();
			_searchProductDataAccess = new SearchProductDataAccess();
			_brandTagDataAccess = new BrandTagDataAccess();
			CreateItemCollection();
			TopBrandItemCollection();

			ProductDetailCommand = new Command<ItemsPreview>(item =>
			{
				int Id = item.Id;
				Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new ProductPage(Id)));
			});
			BrandDetailCommand = new Command<FeaturedBrands>(brand =>
			{
				string selBrand = brand.brand;
				Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new NavigationPage(new BrandPage(selBrand)));
			});
		}

		public ObservableCollection<ItemsPreview> ItemPreview
		{
			get => _itemPreview;
			set
			{
				_itemPreview = value;
				OnPropertyChanged();
			}
		}

		public ObservableCollection<FeaturedBrands> BrandItemPreview
		{
			get => _brandItemPreview;
			set
			{
				_brandItemPreview = value;
				OnPropertyChanged();
			}
		}

		void CreateItemCollection()
		{
			var producSearched = _searchProductDataAccess.GetProducts(_contain);

			if (producSearched.Data != null)
			{
				foreach (var item in producSearched.Data)
				{
					source.Add(new ItemsPreview
					{
						Id = item.Id,
						ImageUrl = item.Image,
						Name = item.Name,
						price = item.Price
					});
				}

				ItemPreview = new ObservableCollection<ItemsPreview>(source);
			}
		}

		void TopBrandItemCollection()
		{
			var producSearched = _brandTagDataAccess.GetBrandsByTag("TopBrand");

			if (producSearched.Data != null)
			{
				foreach (var item in producSearched.Data)
				{
					brandSource.Add(new FeaturedBrands
					{
						ImageUrl = item.ImageUrl,
						brand = item.Name,
						details = item.Description
					});
				}

				BrandItemPreview = new ObservableCollection<FeaturedBrands>(brandSource);
			}
		}

		public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}