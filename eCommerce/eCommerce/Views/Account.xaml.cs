using eCommerce.Views.AccessApp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Account : ContentPage
    {
        public Account()
        {
            InitializeComponent();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ConfigUserPage());
        }

        private async void TapGestureRecognizer_Tapped_2(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new Cart());
        }

        private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new HomePage());
        }

		public async void TapGestureRecognizer_Tapped_4(object sender, EventArgs e)
		{
			var resultadoD = await this.DisplayAlert("Alert!", "Do you want to log out?", "Yes", "No");

			if (resultadoD)
			{
				SecureStorage.Remove("firebase_refresh_token");
				Application.Current.MainPage = new LoginPage(); // Navigate to login page or appropriate page
			}
			else
			{
				return;
			}
		}
		
	}
}