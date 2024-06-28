using eCommerce.ViewModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views.AccessApp
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ConfigUserPage : ContentPage
	{
		private AccountSettingViewModel ViewModel { get; set; }

		public ConfigUserPage()
		{
			InitializeComponent();
			ViewModel = new AccountSettingViewModel();
			BindingContext = ViewModel;
		}

        private async void TapGestureRecognizer_Tapped(object sender, System.EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}