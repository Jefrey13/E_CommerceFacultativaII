using eCommerce.Views;
using Firebase.Auth;
using GalaSoft.MvvmLight.Command;
using Newtonsoft.Json;
using Plugin.Toast;
using System;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace eCommerce.ViewModels
{
	class LoginViewModel : BaseViewModel                                  //En vez de INotifyPropertyChanged, ver impl BaseViewModel
	{
		// El valor WebAPIkey se sustituye acorde al registro de Firebase que se genera al registrar la APP

		#region Attribute
		public string email;
		public string password;
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

		public bool IsRunningTxt
		{
			get { return this.isRunning; }
			set { SetValue(ref this.isRunning, value); }
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

		#endregion

		#region Commands
		public ICommand LoginCommand
		{
			get
			{
				return new RelayCommand(LoginMethod);
			}
		}
		public ICommand ForgotCommand
		{
			get
			{
				return new RelayCommand(ResetPasswordEmail);
			}
		}
		#endregion

		#region Methods

		public async void LoginMethod()
		{
			if (string.IsNullOrEmpty(this.email))
			{
				CrossToastPopUp.Current.ShowCustomToast("You must enter a email.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				return;
			}
			// Validar formato de correo electrónico
			if (!Regex.IsMatch(this.email, @"^[^@\s]+@gmail\.com$"))
			{
				CrossToastPopUp.Current.ShowCustomToast("Invalid email format. Must be in the format 'text@gmail.com'.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}
			if (string.IsNullOrEmpty(this.password))
			{
				CrossToastPopUp.Current.ShowCustomToast("You must enter a password.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				return;
			}

			string WebAPIkey = "AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58";

			var authProvider = new FirebaseAuthProvider(new FirebaseConfig(WebAPIkey));
			try
			{
				var auth = await authProvider.SignInWithEmailAndPasswordAsync(EmailTxt.ToString(), PasswordTxt.ToString());
				var content = await auth.GetFreshAuthAsync();
				var serializedContent = JsonConvert.SerializeObject(content);

				await SecureStorage.SetAsync("firebase_refresh_token", serializedContent);
				Preferences.Set("MyFirebaseRefreshToken", serializedContent);

				CrossToastPopUp.Current.ShowCustomToast("Welcome to the app", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				await Application.Current.MainPage.Navigation.PushModalAsync(new HomePage());
			}
			catch (Exception ex)
			{
				CrossToastPopUp.Current.ShowCustomToast($"Network error. Please check your internet connection or verify that the data is correct.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}

			this.IsVisibleTxt = true;
			this.IsRunningTxt = true;
			this.IsEnabledTxt = false;

			await Task.Delay(20);

			this.IsRunningTxt = false;
			this.IsVisibleTxt = false;
			this.IsEnabledTxt = true;
		}


		public async void ResetPasswordEmail()
		{
			if (string.IsNullOrEmpty(this.email))
			{
				CrossToastPopUp.Current.ShowCustomToast("You must enter a email.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				return;
			}
			if (!Regex.IsMatch(this.email, @"^[^@\s]+@gmail\.com$"))
			{
				CrossToastPopUp.Current.ShowCustomToast("Invalid email format. Must be in the format 'text@gmail.com'.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}
			string WebAPIkey = "AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58";

			try
			{
				var authProvider = new FirebaseAuthProvider(new FirebaseConfig(WebAPIkey));
				await authProvider.SendPasswordResetEmailAsync(email);
				CrossToastPopUp.Current.ShowCustomToast("Password recovery sent, check your email", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}
			catch (Exception ex)
			{
				CrossToastPopUp.Current.ShowCustomToast("Invalid useremail, An error occurs", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}

		}

		#endregion

		#region Constructor
		public LoginViewModel()
		{
			this.IsEnabledTxt = true;
		}
		#endregion
	}
}
