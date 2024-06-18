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
		private ProductTagDataAccess _productTagDataAccess;
		readonly List<ItemsPreview> source1;
		private string _categoryName;
		public BrandPage(string name)
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
			// Código a ejecutar en el nuevo hilo
			_productTagDataAccess = new ProductTagDataAccess();
			var productBestS = _productTagDataAccess.GetProductsByTag(_categoryName);

			var e = productBestS.Data;
			foreach (var item in productBestS.Data)
			{
				lock (source1)
				{
					source1.Add(new ItemsPreview
					{
						ImageUrl = item.Image,
						Name = item.Name,
						price = item.Price
					});
				}
			}

			Device.BeginInvokeOnMainThread(() =>
			{
				this.ItemsSource = new MainClass[] {
					new MainClass ("All",  source1 ),
					new MainClass ("Electronics", source1),
					new MainClass ("Furniture", source1),
					new MainClass ("Books", source1),
				};
			});
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