using eCommerce.Model;
using eCommerce.ViewModel;
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
    public partial class SearchPage : ContentPage
    {
        public SearchViewModel searchViewModel { get; set; }
        public SearchPage(string contain)
        {
            InitializeComponent();

			searchViewModel = new SearchViewModel(contain);
            BindingContext = searchViewModel;
        }



        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }

		private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
		{
			await Navigation.PushModalAsync(new NavigationPage(new ProductsTag("Bestseller")));
		}


	}
}