using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProductPage : ContentPage
    {
        double lastScrollIndex;
        double currentScrollIndex;
		private ProductViewModel ViewModel { get; set; } // Agregar una propiedad para el ViewModel

		public ProductPage(int Id)
        {
            InitializeComponent();
            //review.HeightRequest = 4 * 90;

			// Crear una instancia de categoriesViewModel y asignarla como contexto de enlace
			ViewModel = new ProductViewModel(Id);
			BindingContext = ViewModel;

		}

        private void ScrollView_Scrolled(object sender, ScrolledEventArgs e)
        {
            currentScrollIndex = e.ScrollY;
            if (currentScrollIndex > lastScrollIndex)
            {
                footer.IsVisible = false;
            }
            else
            {
                footer.IsVisible = true;
            }
            lastScrollIndex = currentScrollIndex;
        }

       
        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();

        }

        private async  void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("Select Size", "Cancel", null, "X", "XL", "XXL");
           // size.Text = action;
        }
    }
}