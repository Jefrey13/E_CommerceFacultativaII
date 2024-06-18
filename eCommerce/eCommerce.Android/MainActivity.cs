using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
using PayPal.Forms.Abstractions;
using PayPal.Forms;
using Android.Content;

namespace eCommerce.Droid
{
    [Activity(Label = "eCommerce", Icon = "@mipmap/icon", Theme = "@style/MainTheme",
        MainLauncher = false, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;

            base.OnCreate(savedInstanceState);
            Rg.Plugins.Popup.Popup.Init(this);           
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            LoadApplication(new App());

			//Simulación de Paypal
			var config = new PayPalConfiguration(PayPalEnvironment.NoNetwork, "YOUR-API-KEY")
			{
				//If you want to accept credit cards
				AcceptCreditCards = true,
				//Your business name
				MerchantName = "Test Store",
				MerchantPrivacyPolicyUri = "https://www.example.com/privacy",
				MerchantUserAgreementUri = "https://www.example.com/legal",
				// OPTIONAL - ShippingAddressOption (Both, None, PayPal, Provided)
				//ShippingAddressOption = ShippingAddressOption.Both,
				// OPTIONAL - Language: Default languege for PayPal Plug-In
				Language = "es",
				// OPTIONAL - PhoneCountryCode: Default phone country code for PayPal Plug-In
				PhoneCountryCode = "52",
			};
			CrossPayPalManager.Init(config, this);
		}
		protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
		{
			base.OnActivityResult(requestCode, resultCode, data);
			PayPalManagerImplementation.Manager.OnActivityResult(requestCode, resultCode, data);
		}
		protected override void OnDestroy()
		{
			base.OnDestroy();
			PayPalManagerImplementation.Manager.Destroy();
		}
		public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}