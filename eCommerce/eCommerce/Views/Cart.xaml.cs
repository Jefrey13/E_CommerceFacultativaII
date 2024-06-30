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
using Plugin.Toast;

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
			// Obtener la instancia del ViewModel desde el contexto de datos
			if (BindingContext is CartViewModel viewModel)
			{
				if (viewModel.itemPreviewP.Count != 0)
				{
					// Acceder a la colección itemPreviewP y pasarla a la siguiente página
					var items = viewModel.itemPreviewP;

					// Aquí puedes pasar 'items' a la siguiente página como parámetro si es necesario
					await Navigation.PushModalAsync(new Confirmarorden(items));
				}
				else{
					CrossToastPopUp.Current.ShowCustomToast("Adding producto to the cart", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				}
			}
			else
			{
				// Manejar el caso en que el contexto de datos no sea del tipo esperado
				await DisplayAlert("Error", "ViewModel not found", "OK");
			}
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

        private async void TapGestureRecognizer_Tapped_2(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
    }
}