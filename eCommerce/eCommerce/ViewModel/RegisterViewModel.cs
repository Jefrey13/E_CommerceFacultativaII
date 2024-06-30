using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Services;
using eCommerce.Views;
using eCommerce.Views.AccessApp;
using Firebase.Auth;
using GalaSoft.MvvmLight.Command;
using Plugin.Toast;
using System;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.ViewModels
{
	class RegisterViewModel : BaseViewModel
	{
		#region Attributes
		public string email;
		public string password;
		public string confirmPassword;
		public string name;
		public string age;

		public bool isRunning;
		public bool isVisible;
		public bool isEnabled;
		FirebaseService _firebaseService = new FirebaseService();
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

		public string ConfirmPasswordTxt
		{
			get { return this.confirmPassword; }
			set { SetValue(ref this.confirmPassword, value); }
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
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter an email.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}
			// Validar formato de correo electrónico
			if (!Regex.IsMatch(this.email, @"^[^@\s]+@gmail\.com$"))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. Invalid email format. Must be in the format 'text@gmail.com'.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			if (string.IsNullOrEmpty(this.password) || this.password.Length < 6)
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a stronger password.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			if (this.password != this.confirmPassword)
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. Passwords do not match.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			if (string.IsNullOrEmpty(this.NameTxt))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a name.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			if (string.IsNullOrEmpty(this.AgeTxt))
			{
				CrossToastPopUp.Current.ShowCustomToast("Error. You must enter an age.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				return;
			}

			string WebAPIkey = "AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58";

			try
			{
				IsRunningTxt = true;
				IsEnabledTxt = false;

				var authProvider = new FirebaseAuthProvider(new FirebaseConfig(WebAPIkey));
				var auth = await authProvider.CreateUserWithEmailAndPasswordAsync(EmailTxt, PasswordTxt);

				var user = new UserModel
				{
					EmailField = EmailTxt,
					NamesField = NameTxt,
					AgeField = AgeTxt
				};

				InsertMethod(user);

				CrossToastPopUp.Current.ShowCustomToast("User account successfully created!", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				await Application.Current.MainPage.Navigation.PushModalAsync(new Views.AccessApp.LoginPage());
			}
			catch (FirebaseAuthException ex) when (ex.Reason == AuthErrorReason.EmailExists)
			{
				CrossToastPopUp.Current.ShowCustomToast("Error: Email already exists.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}
			catch (HttpRequestException)
			{
				CrossToastPopUp.Current.ShowCustomToast("Error: Network error. Please check your internet connection.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}
			catch (Exception ex)
			{
				CrossToastPopUp.Current.ShowCustomToast($"Error: Network error. Please check your internet connection.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}
			finally
			{
				IsRunningTxt = false;
				IsEnabledTxt = true;
			}
		}

		private async void InsertMethod(UserModel user)
		{
			await _firebaseService.AddUser(user);
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