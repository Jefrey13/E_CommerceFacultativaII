using eCommerce.Data;
using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Views;
using Microsoft.Extensions.DependencyInjection;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce
{
    public partial class App : Application
    {
		//public static IServiceProvider ServiceProvider { get; private set; }
		public App()
        {
            InitializeComponent();
			
			/*
			#region Data
			var categoryRepository = new CategoryDataAccess();
			var productRepository = new ProductDataAccess();
			var brandRepository = new BrandDataAccess();
			var tagRepository = new TagDataAccess();
			var productCategoryRepository = new ProductCategoryDataAccess();
			var productBrandRepository = new ProductBrandDataAccess();
			var productTagRepository = new ProductTagDataAccess();
			var brandTagRepository = new BrandTagDataAccess();
			var brandCategoryRepository = new BrandCategoryDataAccess();

			brandRepository.DeleteAllBrands();
			brandTagRepository.DeleteAllBrandTags();

			// Añadir categorías
			var categories = new List<Category>
			{
				new Category { Name = "Electronics", Description = "Devices and gadgets", Image = "https://i.ibb.co/0ByB5R2/electronics.png", Status = true },
				new Category { Name = "Fashion", Description = "Clothing and accessories", Image = "https://i.ibb.co/zm6V2Pf/fashion.png", Status = true },
				new Category { Name = "Home Appliances", Description = "Household electronic devices", Image = "https://i.ibb.co/JBMWSVV/homeappliances.png", Status = true},
				new Category { Name = "Furniture", Description = "Home and office furniture", Image = "https://i.ibb.co/QmxDRj1/furnitures.png", Status = true },
				new Category { Name = "Books", Description = "Literature and educational materials", Image = "https://i.ibb.co/2Zb4YKt/books.png", Status = true }
			};

			foreach (var category in categories)
			{
				categoryRepository.AddCategory(category);
			}

			// Añadir productos
			var products = new List<Product>
			{
					new Product { Name = "iPhone 13", Description = "Latest Apple smartphone", Price = "999.99", Stock = 50, Image = "https://i.ibb.co/wcBGhQ4/iphone13.png", Status = true},
					new Product { Name = "Air Jordan 1", Description = "Popular Nike sneakers", Price = "150.00", Stock = 100, Image = "https://i.ibb.co/Dwyr4BR/airjordan1.png", Status = true},
					new Product { Name = "Samsung Galaxy S21", Description = "Latest Samsung smartphone", Price = "799.99", Stock = 75, Image = "https://i.ibb.co/prTdbHK/samsungalaxys21.png", Status = true },
					new Product { Name = "Mesa de Centro", Description = "Functional and stylish coffee table", Price = "299.99", Stock = 30, Image = "https://i.ibb.co/zX4vdjY/mesadecentro.png", Status = true },
					new Product { Name = "The Great Gatsby", Description = "Classic novel by F. Scott Fitzgerald", Price = "12.99", Stock = 20, Image = "https://i.ibb.co/FnYv4zL/thegreatgatsby.png", Status = true }
			};

			foreach (var product in products)
			{
				productRepository.AddProduct(product);
			}

			// Añadir marcas
			// Añadir marcas solo si no existen previamente
			var brands = new List<Brand>
			{
				new Brand { Name = "Apple", Description = "Apple Inc.", ImageUrl = "https://i.ibb.co/wJHH1B9/apple.png", Status = true },
				new Brand { Name = "Nike", Description = "Nike, Inc.", ImageUrl = "https://i.ibb.co/khrRgWq/nike.png", Status = true },
				new Brand { Name = "Samsung", Description = "Samsung Electronics", ImageUrl = "https://i.ibb.co/8MsRjbk/samsung.png", Status = true },
				new Brand { Name = "IKEA", Description = "IKEA Furniture", ImageUrl = "https://i.ibb.co/gSgcJsW/ikea.png", Status = true },
				new Brand { Name = "Penguin Random House", Description = "Penguin Random House Publisher", ImageUrl = "https://i.ibb.co/BgXpmVk/penguinrandomhouse.png", Status = true }
			};

			foreach (var brand in brands)
			{
				brandRepository.AddBrand(brand);
			}

			// Añadir etiquetas
			var tags = new List<Tag>
			{
				new Tag { Name = "Bestseller", Description = "Top selling items", Status = true },
				new Tag { Name = "New Arrival", Description = "Recently arrived products", Status = true },
				new Tag { Name = "Discount", Description = "Products with discounts", Status = true },
				new Tag { Name = "Recommended", Description = "Products Recommended", Status = true },
				new Tag { Name = "Featured Brand", Description = "Featured Brand", Status = true },
				new Tag { Name = "TopBrand", Description = "TopBrand", Status = true },
			};

			foreach (var tag in tags)
			{
				tagRepository.AddTag(tag);
			}

			var products1 = productRepository.GetProducts().Data;
			// Establecer relaciones entre productos y categorías
			var productCategories = new List<ProductCategory>
			{
				new ProductCategory { ProductId = products1.FirstOrDefault(p => p.Name == "iPhone 13").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Electronics").Id },
				new ProductCategory { ProductId = products1.FirstOrDefault(p => p.Name == "Air Jordan 1").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Fashion").Id },
				new ProductCategory { ProductId = products1.FirstOrDefault(p => p.Name == "Samsung Galaxy S21").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Electronics").Id },
				new ProductCategory { ProductId = products1.FirstOrDefault(p => p.Name == "Mesa de Centro").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Furniture").Id },
				new ProductCategory { ProductId = products1.FirstOrDefault(p => p.Name == "The Great Gatsby").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Books").Id }
			};

			foreach (var productCategory in productCategories)
			{
				productCategoryRepository.AddProductCategory(productCategory);
			}

			// Obtener las marcas del repositorio
			var brands1 = brandRepository.GetBrands().Data;

			// Establecer relaciones entre productos y marcas
			var productBrands = new List<ProductBrand>
			{
				new ProductBrand { ProductId = products.FirstOrDefault(p => p.Name == "iPhone 13").Id, BrandId = brands1.FirstOrDefault(b => b.Name == "Apple").Id },
				new ProductBrand { ProductId = products.FirstOrDefault(p => p.Name == "Air Jordan 1").Id, BrandId = brands1.FirstOrDefault(b => b.Name == "Nike").Id },
				new ProductBrand { ProductId = products.FirstOrDefault(p => p.Name == "Samsung Galaxy S21").Id, BrandId = brands1.FirstOrDefault(b => b.Name == "Samsung").Id },
				new ProductBrand { ProductId = products.FirstOrDefault(p => p.Name == "Mesa de Centro").Id, BrandId = brands1.FirstOrDefault(b => b.Name == "IKEA").Id },
				new ProductBrand { ProductId = products.FirstOrDefault(p => p.Name == "The Great Gatsby").Id, BrandId = brands1.FirstOrDefault(b => b.Name == "Penguin Random House").Id }
			};

			foreach (var productBrand in productBrands)
			{
				productBrandRepository.AddProductBrand(productBrand);
			}

			// Obtener las etiquetas del repositorio
			var tags1 = tagRepository.GetTags().Data;
			// Establecer relaciones entre productos y etiquetas
			var productTags = new List<ProductTag>
			{
				new ProductTag { ProductId = products.FirstOrDefault(p => p.Name == "iPhone 13").Id, TagId = tags1.First(t => t.Name == "Bestseller").Id },
				new ProductTag { ProductId = products.FirstOrDefault(p => p.Name == "Air Jordan 1").Id, TagId = tags1.First(t => t.Name == "Bestseller").Id },
				new ProductTag { ProductId = products.FirstOrDefault(p => p.Name == "Samsung Galaxy S21").Id, TagId = tags1.First(t => t.Name == "Bestseller").Id },
				new ProductTag { ProductId = products.FirstOrDefault(p => p.Name == "Mesa de Centro").Id, TagId = tags1.First(t => t.Name == "Recommended").Id },
				new ProductTag { ProductId = products.FirstOrDefault(p => p.Name == "The Great Gatsby").Id, TagId = tags1.First(t => t.Name == "Recommended").Id }
			};

			foreach (var productTag in productTags)
			{
				productTagRepository.AddProductTag(productTag);
			}

			// Establecer relaciones entre marcas y etiquetas
			var brandTags = new List<BrandTag>
			{
				new BrandTag { BrandId = brands1.FirstOrDefault(b => b.Name == "Apple").Id, TagId = tags.FirstOrDefault(t => t.Name == "TopBrand").Id },
				new BrandTag { BrandId = brands1.FirstOrDefault(b => b.Name == "Nike").Id, TagId = tags.FirstOrDefault(t => t.Name == "Featured Brand").Id },
				new BrandTag { BrandId = brands1.FirstOrDefault(b => b.Name == "Samsung").Id, TagId = tags.FirstOrDefault(t => t.Name == "Featured Brand").Id },
				new BrandTag { BrandId = brands1.FirstOrDefault(b => b.Name == "IKEA").Id, TagId = tags.FirstOrDefault(t => t.Name == "Featured Brand").Id },
				new BrandTag { BrandId = brands1.FirstOrDefault(b => b.Name == "Penguin Random House").Id, TagId = tags.FirstOrDefault(t => t.Name == "TopBrand").Id }
			};

			foreach (var brandTag in brandTags)
			{
				brandTagRepository.AddBrandTag(brandTag);
			}
			// Establecer relaciones entre marcas y categorías
			var brandCategories = new List<BrandCategory>
			{
				new BrandCategory { BrandId = brands.FirstOrDefault(b => b.Name == "Apple").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Electronics").Id },
				new BrandCategory { BrandId = brands.FirstOrDefault(b => b.Name == "Nike").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Fashion").Id },
				new BrandCategory { BrandId = brands.FirstOrDefault(b => b.Name == "Samsung").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Electronics").Id },
				new BrandCategory { BrandId = brands.FirstOrDefault(b => b.Name == "IKEA").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Furniture").Id },
				new BrandCategory { BrandId = brands.FirstOrDefault(b => b.Name == "Penguin Random House").Id, CategoryId = categories.FirstOrDefault(c => c.Name == "Books").Id }
			};

			// Insertar las relaciones en la base de datos
			foreach (var brandCategory in brandCategories)
			{
				brandCategoryRepository.AddBrandCategory(brandCategory);
			}

			//brandRepository.DeleteAllBrands();
			//brandTagRepository.DeleteAllBrandTags();
			#endregion
			*/


			//ConfigureServices();

			MainPage = new Views.HomePage();
			//MainPage = new NavigationPage(new LoginPage());     //Arrancamos la app de momento desde el login-->Se carga la pagina solo(LoginPage)
			//MainPage = new NavigationPage(new LoginPage());     //Arrancamos la app de momento desde el login-->Se carga la pagina solo(LoginPage)
		}
		/**private void ConfigureServices()
		{
			var serviceCollection = new ServiceCollection();

			// Configura la conexión SQLite
			serviceCollection.AddSingleton<SQLiteConnection>(provider =>
			{
				return DatabaseConfiguration.GetDatabaseConnection();
			});

			// Registra los repositorios
			serviceCollection.AddTransient<IBrandRepository, BrandImplementation>();
			serviceCollection.AddTransient<IBrandTagRepository, BrandTagImplementation>();
			serviceCollection.AddTransient<ICategoryRepository, CategoryImplementation>();
			serviceCollection.AddTransient<IProductBrandRepository, ProductBrandImplementation>();
			serviceCollection.AddTransient<IProductCategoryRepository, ProductCategoryImplementation>();
			serviceCollection.AddTransient<IProductRepository, ProductImplementation>();
			serviceCollection.AddTransient<IProductTagRepository, ProductTagImplementation>();
			serviceCollection.AddTransient<ITagRepository, TagImplementation>();
			// Registra otros repositorios según sea necesario

			// Construye el proveedor de servicios
			ServiceProvider = serviceCollection.BuildServiceProvider();
		}**/

		protected override void OnStart()
        {
        }
        protected override void OnSleep()
        {
        }
        protected override void OnResume()
        {
        }
    }
}