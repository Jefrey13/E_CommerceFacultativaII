using eCommerce.Model;
using Rg.Plugins.Popup.Services;
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
    public partial class categoriesPage : ContentPage
    {
		private categoriesViewModel ViewModel { get; set; } // Agregar una propiedad para el ViewModel
		public categoriesPage(string categoryName)
        {
            InitializeComponent();
            title.Text = categoryName;

			// Crear una instancia de categoriesViewModel y asignarla como contexto de enlace
			ViewModel = new categoriesViewModel(categoryName);
			BindingContext = ViewModel;
		}

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
           
        }

        private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PushAsync(new Filter());
        }
    }
}