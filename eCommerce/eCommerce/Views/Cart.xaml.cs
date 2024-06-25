using eCommerce.Model;
using eCommerce.ViewModel;
using PayPal.Forms.Abstractions;
using PayPal.Forms;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Cart : ContentPage
    {
		private CartViewModel ViewModel { get; set; } // Agregar una propiedad para el ViewModel
		public Cart()
        {
            InitializeComponent();
			// Crear una instancia de categoriesViewModel y asignarla como contexto de enlace
			ViewModel = new CartViewModel();
			BindingContext = ViewModel;
		}

		async void OnDeleteSwipeItemInvoked(object sender, EventArgs e)
		{
			await DisplayAlert("SwipeView", "Delete invoked.", "OK");
		}

		async void OnFavoriteSwipeItemInvoked(object sender, EventArgs e)
		{
			await DisplayAlert("SwipeView", "Favorite invoked.", "OK");
		}

		private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new HomePage());
		}

		private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new Account());
		}
		private async void btnConfirmar_Clicked(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new Confirmarorden());
		}

		private async void btnPayment_Clicked(object sender, EventArgs e)
		{
			try
			{
				var result = await CrossPayPalManager.Current.Buy(new PayPalItem("Test Product", new Decimal(12.50), "MXN"),
					new Decimal(0));
				if (result.Status == PayPalStatus.Cancelled)
				{
					Debug.WriteLine("Cancelled");
				}
				else if (result.Status == PayPalStatus.Error)
				{
					Debug.WriteLine(result.ErrorMessage);
				}
				else if (result.Status == PayPalStatus.Successful)
				{
					Debug.WriteLine(result.ServerResponse.Response.Id);
				}
			}
			catch (Exception exception)
			{
				Console.WriteLine(exception);
			}
		}

		private async void btnStrapi_Clicked(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new StripePage());
		}
	}
}