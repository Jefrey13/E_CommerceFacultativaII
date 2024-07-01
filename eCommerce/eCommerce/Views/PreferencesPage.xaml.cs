using eCommerce.Model;
using eCommerce.ViewModels;
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
    public partial class PreferencesPage : ContentPage
    {
        int index = 1;
        //private PreferencesViewModel ViewModel { get; set; } // Agregar una propiedad para el ViewModel
        public PreferencesPage()
        {
            InitializeComponent();
            // Crear una instancia de categoriesViewModel y asignarla como contexto de enlace
            //ViewModel = new PreferencesViewModel();
            //BindingContext = ViewModel;
			BindingContext = new PreferencesViewModel();
		}

        public void changeColor(object sender, EventArgs e)
        {
           

            switch (index)
            {
                case 1:
                    BackgroundColor = Color.FromHex("#801515");
                    index++;
                    break;
                case 2:
                    BackgroundColor = Color.FromHex("#AA6C39");
                    index++;
                    break;
                case 3:
                    BackgroundColor = Color.FromHex("#AAA939");
                    index++;
                    break;
                case 4:
                    BackgroundColor = Color.FromHex("#669933");
                    index = 1;
                    break;
            }
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

        private async void TapGestureRecognizer_Tapped_2(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}