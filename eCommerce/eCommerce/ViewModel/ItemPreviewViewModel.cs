﻿using eCommerce.DataAccess;
using eCommerce.Views;
using SQLite;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.Model
{
    class ItemPreviewViewModel : INotifyPropertyChanged
    {

		private CategoryDataAccess _categoryDataAccess;
		private BrandTagDataAccess _brandTagDataAccess;
		private ProductTagDataAccess _productTagDataAccess;

		readonly IList<Category> source2;
		readonly IList<FeaturedBrands> source1;
		readonly IList<ItemsPreview> source;
		readonly IList<ItemsPreview> sourceBS;

		public ObservableCollection<ItemsPreview> itemPreview { get; private set; }
        public ObservableCollection<ItemsPreview> itemPreview2 { get; private set; }
        public ObservableCollection<FeaturedBrands> featuredItemPreview { get; private set; }
        public ObservableCollection<Category> categories { get; private set; }

        public ICommand FeaturedTapCommand { get; set; }
        public ICommand ItemTapCommand { get; set; }
        public ICommand CatTapCommand { get; set; }
		public ICommand SearchCommand { get; set; }
		public ItemPreviewViewModel()
        {
			//_categoryRepository = new CategoryImplementation();
			//_tagRepository = new TagImplementation();
			//_brandTagRepository = new BrandTagImplementation(); // Agrega esta línea

			_categoryDataAccess = new CategoryDataAccess();
			_brandTagDataAccess	 = new BrandTagDataAccess();
			_productTagDataAccess = new ProductTagDataAccess();

			source = new List<ItemsPreview>();
			sourceBS = new List<ItemsPreview>();
			source1 = new List<FeaturedBrands>();
            source2 = new List<Category>();

            CreateFeaturedItemCollection();
			CreateCategoriesCollection();
			CreateItemCollection2();
			CreateItemCollection();

            ItemTapCommand = new Command<ItemsPreview>(item =>
            {
				int Id = item.Id;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new ProductPage(Id)));
            });

            CatTapCommand = new Command<Category>(item =>
            {
				//Category name
                string selcate = item.Name;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new categoriesPage(selcate));
            });

            FeaturedTapCommand = new Command<FeaturedBrands>(brand =>
            {
                string selBrand = brand.brand;
                Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new NavigationPage(new BrandPage(selBrand)));
            });
			SearchCommand = new Command<string>(contain =>
			{
				Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new SearchPage(contain));
			});
        }

		//Categories
		void CreateCategoriesCollection()
		{
			try
			{
				var categoriesR = _categoryDataAccess.GetCategories();

				if (categoriesR != null)
				{
					foreach (var item in categoriesR.Data)
					{
						source2.Add(new Category
						{
							Image = item.Image,
							Name = item.Name,
							Link = item.Link
						});
					}

					categories = new ObservableCollection<Category>(source2);
				}
			}
			catch (SQLiteException ex)
			{
				categories = new ObservableCollection<Category>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				categories = new ObservableCollection<Category>();
				Console.WriteLine($"Error al crear la colección de elementos: {ex.Message}");
				// Manejar la excepción según sea necesario
			}
		}

		//Featured Brands
		void CreateFeaturedItemCollection()
		{
			try
			{
				var brandR = _brandTagDataAccess.GetBrandsByTag("Featured Brand");

				if (brandR.Data != null)
				{
					foreach (var item in brandR.Data)
					{
						source1.Add(new FeaturedBrands
						{
							ImageUrl = item.ImageUrl,
							brand = item.Name,
							details = item.Description
						});
					}

					featuredItemPreview = new ObservableCollection<FeaturedBrands>(source1);
				}
			}
			catch (SQLiteException ex)
			{
				featuredItemPreview = new ObservableCollection<FeaturedBrands>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				featuredItemPreview = new ObservableCollection<FeaturedBrands>();
				Console.WriteLine($"Error al crear la colección de elementos: {ex.Message}");
				// Manejar la excepción según sea necesario
			}
		}

		//Best Selling products
		void CreateItemCollection()
		{
			try
			{
				var productRecommended = _productTagDataAccess.GetProductsByTag("Bestseller");

				if (productRecommended != null)
				{
					foreach (var item in productRecommended.Data)
					{
						source.Add(new ItemsPreview
						{
							Id = item.Id,
							ImageUrl = item.Image,
							Name = item.Name,
							price = item.Price
						});
					}
					itemPreview = new ObservableCollection<ItemsPreview>(source);
				}
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

		//Recommended products
		void CreateItemCollection2()
		{
			try
			{
				var productBestS = _productTagDataAccess.GetProductsByTag("Recommended");

				if (productBestS != null)
				{
					foreach (var item in productBestS.Data)
					{
						sourceBS.Add(new ItemsPreview
						{
							Id = item.Id,
							ImageUrl = item.Image,
							Name = item.Name,
							price = item.Price
						});
					}
					itemPreview2 = new ObservableCollection<ItemsPreview>(sourceBS);
				}
			}
			catch (SQLiteException ex)
			{
				itemPreview2 = new ObservableCollection<ItemsPreview>();
				// Manejar excepciones de SQLite específicamente
				Console.WriteLine($"Error al acceder a SQLite: {ex.Message}");
			}
			catch (Exception ex)
			{
				itemPreview2 = new ObservableCollection<ItemsPreview>();
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
