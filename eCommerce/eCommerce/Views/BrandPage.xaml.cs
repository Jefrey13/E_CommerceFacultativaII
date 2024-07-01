using eCommerce.DataAccess;
using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class BrandPage : TabbedPage
    {
		private ProductBrandDataAccess _productBrandDataAccess;
		readonly List<ItemsPreview> source1;
		private string _brandName;
		public BrandPage(string name)
		{
			InitializeComponent();

			title.Text = name;
			_brandName = name;
			source1 = new List<ItemsPreview>(); // Inicializar source1 aquí
			Thread loadData = new Thread(LoadData);
			loadData.Start();
			BindingContext = new BrandViewModel();
		}
		private void LoadData()
		{
			try
			{
				// Inicializar las instancias de acceso a datos
				_productBrandDataAccess = new ProductBrandDataAccess();

				// Obtener la marca por nombre
				var brandResponse = _productBrandDataAccess.GetBrandByName(_brandName);

				if (brandResponse.IsSuccess && brandResponse.Data != null)
				{
					// Obtener el BrandId de la marca obtenida
					int brandId = brandResponse.Data.Id;

					// Obtener los productos de la marca usando el BrandId
					var productsResponse = _productBrandDataAccess.GetProductsByBrand(brandId);

					if (productsResponse.IsSuccess && productsResponse.Data != null)
					{
						var products = productsResponse.Data;
						foreach (var item in products)
						{
							lock (source1)
							{
								source1.Add(new ItemsPreview
								{
									Id = item.Id,
									ImageUrl = item.Image,
									Name = item.Name,
									price = item.Price
								});
							}
						}

						// Actualizar la interfaz de usuario en el hilo principal
						Device.BeginInvokeOnMainThread(() =>
						{
							this.ItemsSource = new MainClass[]
							{
						new MainClass("Explore the finest offerings from the iconic brand " + _brandName, source1),
							};
						});
					}
					else
					{
						// Manejar el error al obtener los productos
						Console.WriteLine(productsResponse.Message);
					}
				}
				else
				{
					// Manejar el error al obtener la marca
					Console.WriteLine(brandResponse.Message);
				}
			}
			catch (Exception ex)
			{
				// Manejar cualquier excepción que ocurra
				Console.WriteLine("Error: " + ex.Message);
			}
		}


		class MainClass
        {
            public MainClass(string name, IList<ItemsPreview> list)
            {
                this.Name = name;
                this.list = list;
            }

            public string Name { private set; get; }
            public IList<ItemsPreview> list { private set; get; }

            public override string ToString()
            {
                return Name;
            }
        }
        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();

        }

        async void OnItemSelected(object sender, SelectionChangedEventArgs e)
        {

            await Navigation.PushModalAsync(new ProductPage(1));
        }

      
    }
}