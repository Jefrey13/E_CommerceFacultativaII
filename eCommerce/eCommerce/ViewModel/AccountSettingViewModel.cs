using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.ViewModels;
using eCommerce.Views;
using eCommerce.Views.AccessApp;
using Firebase.Auth;
using Newtonsoft.Json;
using Plugin.Toast;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace eCommerce.ViewModel
{
	public class AccountSettingViewModel : BaseViewModel
	{
		private readonly IList<UserModel> source;
		public ObservableCollection<UserModel> Users { get; set; }
		public ICommand UpdateCommand { get; set; }
		public ICommand DeleteCommand { get; set; }

		private UserModelDataAccess _userModelDataAccess;

		#region Attributes
		public bool isRunning;
		public bool isVisible;
		public bool isEnabled;
		public string emailTxt;
		public string passwordTxt;
		public string nameTxt;
		public string ageTxt;
		#endregion

		#region Properties

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

		public string EmailTxt
		{
			get { return this.emailTxt; }
			set { SetValue(ref this.emailTxt, value); }
		}

		public string PasswordTxt
		{
			get { return this.passwordTxt; }
			set { SetValue(ref this.passwordTxt, value); }
		}

		public string NameTxt
		{
			get { return this.nameTxt; }
			set { SetValue(ref this.nameTxt, value); }
		}

		public string AgeTxt
		{
			get { return this.ageTxt; }
			set { SetValue(ref this.ageTxt, value); }
		}
		#endregion
		public AccountSettingViewModel()
		{
			source = new List<UserModel>();
			Users = new ObservableCollection<UserModel>(source);
			_userModelDataAccess = new UserModelDataAccess();
			InitializeUserDataAsync();

			UpdateCommand = new Command(OnSave);
			DeleteCommand = new Command(OnDelete);
		}
		#region Methods
		private async void InitializeUserDataAsync()
		{
			try
			{
				var user = await _userModelDataAccess.GetUserAsync();
				if (user != null)
				{
					EmailTxt = user.EmailField;     // Suponiendo que UserModel tiene una propiedad Email
					NameTxt = user.NamesField;   // Suponiendo que UserModel tiene una propiedad FullName
					//AgeTxt = user.Age.ToString(); // Suponiendo que UserModel tiene una propiedad Age de tipo int
												  // Otros campos si es necesario
				}
				else
				{
					// Manejar el caso donde no se puede obtener el usuario
					// Esto puede ser porque el usuario no ha iniciado sesión, por ejemplo.
					CrossToastPopUp.Current.ShowCustomToast("User data not available. Please login again.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				}
			}
			catch (Exception ex)
			{
				// Handle exceptions, e.g., network error, storage error
				CrossToastPopUp.Current.ShowCustomToast("Error loading user data: " + ex.Message, bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}
		}

		private async void OnSave()
		{
			var isSuccess = await UpdateUserAsync(emailTxt, passwordTxt);
			if (isSuccess)
			{
				CrossToastPopUp.Current.ShowCustomToast("Profile Updated Successfully", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				await Application.Current.MainPage.Navigation.PushModalAsync(new HomePage());
			}
			else
			{
				CrossToastPopUp.Current.ShowCustomToast("Failed to Update Profile", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}
		}

		private async void OnDelete()
		{
			var isSuccess = await DeleteUserAsync();
			if (isSuccess)
			{
				CrossToastPopUp.Current.ShowCustomToast("Account Deleted", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				await Application.Current.MainPage.Navigation.PushModalAsync(new LoginPage());
			}
			else
			{
				CrossToastPopUp.Current.ShowCustomToast("Failed to Delete Account", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			}
		}


		public async Task<string> GetTokenAsync()
		{
			try
			{
				var token = await SecureStorage.GetAsync("firebase_refresh_token");
				return token;
			}
			catch (Exception ex)
			{
				// Handle possible errors, such as if the key does not exist
				return null;
			}
		}

		public async Task<FirebaseAuth> GetUserAsync()
		{
			var token = await GetTokenAsync();
			if (!string.IsNullOrEmpty(token))
			{
				var auth = JsonConvert.DeserializeObject<FirebaseAuth>(token);
				return auth;
			}
			else
			{
				// Handle the case where the token is not available
				return null;
			}
		}

		public async Task<bool> UpdateUserAsync(string newEmail, string newPassword)
		{
			try
			{
				var auth = await GetUserAsync();
				if (auth == null)
				{
					// User not logged in or token not available
					return false;
				}

				var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58"));

				if (!string.IsNullOrEmpty(newEmail))
				{
					await authProvider.ChangeUserEmail(auth.FirebaseToken, newEmail);
				}

				if (!string.IsNullOrEmpty(newPassword))
				{
					await authProvider.ChangeUserPassword(auth.FirebaseToken, newPassword);
				}

				// Assuming you need to reauthenticate to get a fresh token after changes
				var newAuth = await authProvider.SignInWithEmailAndPasswordAsync(newEmail ?? auth.User.Email, newPassword ?? "CurrentPassword"); // Make sure to use the current password if not changing it
				var serializedContent = JsonConvert.SerializeObject(newAuth);

				// Store the new token securely
				await SecureStorage.SetAsync("firebase_refresh_token", serializedContent);

				return true;
			}
			catch (Exception ex)
			{
				// Handle exceptions
				return false;
			}
		}


		public async Task<bool> DeleteUserAsync()
		{
			try
			{
				var auth = await GetUserAsync();
				if (auth == null)
				{
					// User not logged in or token not available
					return false;
				}

				var authProvider = new FirebaseAuthProvider(new FirebaseConfig("AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58"));
				await authProvider.DeleteUserAsync(auth.FirebaseToken);

				// Clear the stored token
				SecureStorage.Remove("firebase_refresh_token");

				return true;
			}
			catch (Exception ex)
			{
				// Handle exceptions
				return false;
			}
		}


		#endregion

		#region Constructor
		public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
		#endregion
	}
}
