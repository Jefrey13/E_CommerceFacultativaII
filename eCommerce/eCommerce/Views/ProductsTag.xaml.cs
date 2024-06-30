using eCommerce.DataAccess;
using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Threading;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProductsTag : TabbedPage
    {
		private ProductTagDataAccess _productTagDataAccess;
		readonly List<ItemsPreview> source1;
		private string _categoryName;

		
		public ProductsTag(string name)
		{
			InitializeComponent();

			title.Text = name;
			_categoryName = name;
			source1 = new List<ItemsPreview>(); // Inicializar source1 aquí
			Thread loadData = new Thread(LoadData);
			loadData.Start();
		}

		private void LoadData()
		{
			try
			{
				// Código a ejecutar en el nuevo hilo
				_productTagDataAccess = new ProductTagDataAccess();
				var productBestS = _productTagDataAccess.GetProductsByTag(_categoryName);

				var source1 = new List<ItemsPreview>();

				foreach (var item in productBestS.Data)
				{
					try
					{
						lock (source1)
						{
							source1.Add(new ItemsPreview
							{
								Id = item.Id,
								ImageUrl = item.Image,
								Name = item.Name,
								price = item.Price // Corregido a "Price" en lugar de "price"
							});
						}
					}
					catch (Exception ex)
					{
						// Manejar excepción dentro del bucle si es necesario
						Console.WriteLine($"Error al procesar el elemento: {ex.Message}");
					}
				}

				Device.BeginInvokeOnMainThread(() =>
				{
					// Asignar el origen de los datos a la propiedad ItemsSource
					this.ItemsSource = new MainClass[]
					{
				new MainClass("Discover all the " + _categoryName + " products available", source1),
					};
				});
			}
			catch (Exception ex)
			{
				// Manejar excepciones generales fuera del bucle principal
				Console.WriteLine($"Error general al cargar los datos: {ex.Message}");
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
    }
}