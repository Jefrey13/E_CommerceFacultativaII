using eCommerce.DataAccess;
using eCommerce.Model;
using eCommerce.Services;
using eCommerce.ViewModels;
using eCommerce.Views.AccessApp;
using eCommerce.Views;
using Firebase.Auth;
using Newtonsoft.Json;
using Plugin.Toast;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;

public class AccountSettingViewModel : BaseViewModel
{
	private readonly IList<UserModel> source;
	public ObservableCollection<UserModel> Users { get; set; }
	public ICommand UpdateCommand { get; set; }
	public ICommand DeleteCommand { get; set; }

	private FirebaseService _firebaseService = new FirebaseService();

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

		// Llamada asíncrona
		Task.Run(async () => await LoadUserDataAsync());

		UpdateCommand = new Command(async () => await UpdateUserAsync());

		DeleteCommand = new Command(OnDelete);
	}

	#region Methods

	private async Task LoadUserDataAsync()
	{
		var auth = await GetUserAsync();
		if (auth != null)
		{
			EmailTxt = auth.User.Email; // Asignar el correo electrónico del usuario autenticado

			var user = await _firebaseService.GetUserByEmailAsync(EmailTxt);
			if (user != null)
			{
				// Display user details
				EmailTxt = user.EmailField;
				NameTxt = user.NamesField;
				AgeTxt = user.AgeField.ToString();
			}
			else
			{
				// Manejar el caso cuando el usuario no se encuentra
				Console.WriteLine("User not found.");
				// Aquí puedes limpiar los campos si el usuario no se encuentra, si es necesario
				NameTxt = string.Empty;
				AgeTxt = string.Empty;
			}
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

	public async Task UpdateUserAsync()
	{
		try
		{
			var auth = await GetUserAsync();
			if (auth == null)
			{
				CrossToastPopUp.Current.ShowCustomToast("User not authenticated", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
				return;
			}

			// Actualizar los datos en Firebase Realtime Database
			var user = await _firebaseService.GetUserByEmailAsync(auth.User.Email);
			if (user != null)
			{
				user.NamesField = NameTxt;
				user.AgeField = AgeTxt;
				await _firebaseService.UpdateUser(user, auth.User.Email); // Actualizar en Firebase Database
			}

			/*
						string webAPIKey = "AIzaSyCLiMPb_GvCkWFeR0pfdyIi9USwTUK9b58";
					var authProvider = new FirebaseAuthProvider(new FirebaseConfig(webAPIKey));

					// Cambiar el correo electrónico en Firebase Authentication
					if (!string.IsNullOrEmpty(EmailTxt))
					{
						// Enviar correo de verificación
						await authProvider.SendEmailVerificationAsync(auth.FirebaseToken);

						CrossToastPopUp.Current.ShowCustomToast("Verification email sent. Please verify your new email address.", bgColor: "Orange", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);

						// Esperar verificación del correo antes de continuar
						// Aquí se asume que se notificará al usuario que vuelva a iniciar sesión después de verificar su correo.
						return;
					}

					// Verificar si la contraseña está vacía
					if (string.IsNullOrEmpty(PasswordTxt))
					{
						CrossToastPopUp.Current.ShowCustomToast("Error. Add a password", bgColor: "Orange", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
						throw new Exception("Password cannot be empty when reauthenticating.");
					}

					// Reautenticar para obtener un nuevo token después de los cambios
					var newAuth = await authProvider.SignInWithEmailAndPasswordAsync(EmailTxt ?? auth.User.Email, PasswordTxt);

					var serializedContent = JsonConvert.SerializeObject(newAuth);

					// Almacenar el nuevo token de manera segura
					await SecureStorage.SetAsync("firebase_refresh_token", serializedContent);
			 */

			CrossToastPopUp.Current.ShowCustomToast("Profile Updated Successfully", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			await Application.Current.MainPage.Navigation.PushModalAsync(new HomePage());
		}
		catch(FirebaseAuthException ex)
		{
			CrossToastPopUp.Current.ShowCustomToast("Failed to Update Profile", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			
			Console.WriteLine("Error updating user: " + ex.Message);
		}
		catch (Exception ex)
		{
			CrossToastPopUp.Current.ShowCustomToast("Failed to Update Profile", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			Console.WriteLine("Error updating user: " + ex.Message);
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
			await _firebaseService.DeleteUserByEmailAsync(EmailTxt);

			// Optionally, remove the local token
			SecureStorage.Remove("firebase_refresh_token");
			Preferences.Remove("MyFirebaseRefreshToken");

			return true;
		}
		catch (Exception ex)
		{
			// Handle exceptions
			Console.WriteLine("Error deleting user: " + ex.Message);
			return false;
		}
	}
	#endregion
}
