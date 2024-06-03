using eCommerce.Views;
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
    class ItemPreviewViewModel : INotifyPropertyChanged
    {
        readonly IList<ItemsPreview> source;
        public ObservableCollection<ItemsPreview> itemPreview { get; private set; }

        readonly IList<FeaturedBrands> source1;
        public ObservableCollection<FeaturedBrands> featuredItemPreview { get; private set; }

        readonly IList<Category> source2;
        public ObservableCollection<Category> categories { get; private set; }

        public ICommand FeaturedTapCommand { get; set; }
        public ICommand ItemTapCommand { get; set; }
        public ICommand CatTapCommand { get; set; }
        public ItemPreviewViewModel()
        {
            source = new List<ItemsPreview>();
            source1 = new List<FeaturedBrands>();
            source2 = new List<Category>();
            CreateItemCollection();
            CreateFeaturedItemCollection();
            CreateCategoriesCollection();

            ItemTapCommand = new Command<ItemsPreview>(items =>
            {                
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new ProductPage()));
            });

            CatTapCommand = new Command<Category>(items =>
            {
                string selcate = items.Title;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new categoriesPage(selcate));
            });

            FeaturedTapCommand = new Command<FeaturedBrands>(brand =>
            {
                string selBrand = brand.brand;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new NavigationPage(new BrandPage(selBrand)));
            });
        }

       
        void CreateCategoriesCollection()
        {
            source2.Add(new Category
            {
                Image = "Icon_Mens_Shoe",
                Title = "Men",
                Link = "5693 Products"
            });
            source2.Add(new Category
            {
                Image = "women_shoe",
                Title = "Women",
                Link = "1124 Products"
            });
            source2.Add(new Category
            {
                Image = "devices",
                Title = "Devices",
                Link = "5693 Products"
            });

            source2.Add(new Category
            {
                Image = "headphone",
                Title = "Gadgets",
                Link = "5693 Products"
            });

            source2.Add(new Category
            {
                Image = "Icon_Gaming",
                Title = "Gaming",
                Link = "5693 Products"
            });

            categories = new ObservableCollection<Category>(source2);
        }
        void CreateFeaturedItemCollection()
        {
            source1.Add(new FeaturedBrands
            {
                ImageUrl = "Icon_Bo",
                brand = "B&o",
                details = "5693 Products"
            });
            source1.Add(new FeaturedBrands
            {
                ImageUrl = "beats",
                brand = "Beats",
                details = "1124 Products"
            });
            source1.Add(new FeaturedBrands
            {
                ImageUrl = "Icon_Apple",
                brand = "Apple Inc",
                details = "5693 Products"
            });

            featuredItemPreview = new ObservableCollection<FeaturedBrands>(source1);
        }
        void CreateItemCollection()
        {
            source.Add(new ItemsPreview
            {
                ImageUrl = "Image1",
                Name= "BeoPlay Speaker",
                brand= "Bang and Olufsen",
                price= "$755"
            });
            source.Add(new ItemsPreview
            {
                ImageUrl = "Image2",
                Name = "Leather Wristwatch",
                brand = "Tag Heuer",
                price = "$450"
            });
            source.Add(new ItemsPreview
            {
                ImageUrl = "Image3",
                Name = "Smart Bluetooth Speaker",
                brand = "Google LLC",
                price = "$9000"
            });
            source.Add(new ItemsPreview
            {
                ImageUrl = "Image4",
                Name = "Smart Luggage",
                brand = "Smart Inc",
                price = "$1200"
            });
            itemPreview = new ObservableCollection<ItemsPreview>(source);
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
