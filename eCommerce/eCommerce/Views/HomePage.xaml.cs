using eCommerce.Model;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using eCommerce;

namespace eCommerce.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class HomePage : ContentPage
	{
		//private readonly ItemPreviewViewModel _viewModel;
		public HomePage()
		{
			InitializeComponent();
		}


		private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new BrandPage("Recommended"));

		}
		private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new NavigationPage(new BrandPage("Bestseller")));
		}

		private async void TapGestureRecognizer_Tapped_2(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new Cart());
		}

		private async void TapGestureRecognizer_Tapped_3(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new Account());
		}

		protected override bool OnBackButtonPressed()
		{
			return false;
		}
	}
}