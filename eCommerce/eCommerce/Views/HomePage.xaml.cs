using eCommerce.Model;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using eCommerce;
using static System.Net.Mime.MediaTypeNames;
using Plugin.Toast;

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
			await Navigation.PushModalAsync(new NavigationPage(new ProductsTag("Recommended")));

		}
		private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new NavigationPage(new ProductsTag("Bestseller")));
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
		private async void btnSearch_Clicked(object sender, EventArgs e)
		{
			string txt = txtSearch.Text;
			if (string.IsNullOrWhiteSpace(txt))
			{
				CrossToastPopUp.Current.ShowCustomToast("Please enter some text", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}
			else
			{
				await Navigation.PushModalAsync(new SearchPage(txt));
			}
		}
	}
}