using eCommerce.Model;
using eCommerce.ViewModels;
using eCommerce.Views;
using Org.BouncyCastle.Asn1.Esf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.ViewModel
{
	public class ProductTagViewModel:BaseViewModel
	{
		public ICommand ProductByIdCommand { get; set; }
		public ProductTagViewModel()
		{
			ProductByIdCommand = new Command<ItemsPreview>(product=>
			{
				Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync((new ProductPage(product.Id)));
			});
		}
	}
}
