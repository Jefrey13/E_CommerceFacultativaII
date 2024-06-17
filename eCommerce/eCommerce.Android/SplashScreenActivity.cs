
using Android.App;
using Android.OS;
using eCommerce.Droid;

namespace ComparePro.Droid
{
	[Activity(Label = "SplashScreenActivity",
		Theme = "@style/Theme.Splash",
		MainLauncher = true,
		NoHistory = true)]
	public class SplashScreenActivity : Activity
	{
		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			// Create your application here
			StartActivity(typeof(MainActivity));
		}
	}
}