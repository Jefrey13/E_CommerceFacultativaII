using eCommerce.Views;
using eCommerce.Views.AccessApp;
using Firebase.Auth;
using GalaSoft.MvvmLight.Command;
using Plugin.Toast;
using System;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.ViewModels
{

	class RegisterViewModel : BaseViewModel
	{
		#region Attributes
		public string email;
		public string password;
		public string name;
		public string age;

		public bool isRunning;
		public bool isVisible;
		public bool isEnabled;
		#endregion

		#region Properties
		public string EmailTxt
		{
			get { return this.email; }
			set { SetValue(ref this.email, value); }
		}

		public string PasswordTxt
		{
			get { return this.password; }
			set { SetValue(ref this.password, value); }
		}

		public string NameTxt
		{
			get { return this.name; }
			set { SetValue(ref this.name, value); }
		}

		public string AgeTxt
		{
			get { return this.age; }
			set { SetValue(ref this.age, value); }
		}

		public bool IsVisibleTxt
		{
			get { return this.isVisible; }
			set { SetValue(ref this.isVisible, value); }
		}

		public bool IsEnabledTxt
		{
			get { return this.isEnabled; }
			set { SetValue(ref this.isEnabled, value); }
		}

		public bool IsRunningTxt
		{
			get { return this.isRunning; }
			set { SetValue(ref this.isRunning, value); }
		}

		#endregion

		#region Commands
		public ICommand RegisterCommand
		{
			get
			{
				return new RelayCommand(RegisterMethod);
			}
		}
		#endregion

		#region Methods
		private async void RegisterMethod()
		{
			if (string.IsNullOrEmpty(this.email))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a email.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			if (string.IsNullOrEmpty(this.password))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a password.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}
			if (string.IsNullOrEmpty(this.NameTxt))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a name.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}
			if (string.IsNullOrEmpty(this.AgeTxt))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a age.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}


			string WebAPIkey = "AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58";

			try
			{
				var authProvider = new FirebaseAuthProvider(new FirebaseConfig(WebAPIkey));
				var auth = await authProvider.CreateUserWithEmailAndPasswordAsync(EmailTxt.ToString(), PasswordTxt.ToString());
				string gettoken = auth.FirebaseToken;

				CrossToastPopUp.Current.ShowCustomToast("User account successfully created!", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				await Application.Current.MainPage.Navigation.PushModalAsync(new Views.AccessApp.LoginPage());
			}
			catch (Exception ex)
			{
				CrossToastPopUp.Current.ShowCustomToast("Password Weak. Enter a stronger password.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}
		}
		#endregion

		#region Constructor
		public RegisterViewModel()
		{
			IsEnabledTxt = true;
		}
		#endregion
	}
}
