using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace eCommerce.ViewModels
{
	using eCommerce.Model;
	using eCommerce.Views;
	using eCommerce.Model;
	using eCommerce.Views;
	using GalaSoft.MvvmLight.Command;
	using System.ComponentModel;
	using System.Windows.Input;
	using Xamarin.Forms;
	using eCommerce.ViewModels;
	using eCommerce.DataAccess;

	class LoginViewModel : BaseViewModel                                  //En vez de INotifyPropertyChanged, ver impl BaseViewModel
	{
		//Los atributos privados que necesitamos refrescar
		#region Atributes
		private string email;
		private string password;
		private bool isRunning;
		private bool isEnabled;
		private bool isRemembered;
		private bool correct;
		#endregion

		#region Properties
		public string Email
		{
			get
			{
				return this.email;
			}
			set
			{
				SetValue(ref this.email, value);
			}
		}

		//En vez de todo el chorizo de código como el que aparece abajo, usamos la clase BaseViewModel
		/* public string Password
         {
             get
             {
                 return this.password;
             }
             set
             {
                 if(this.password != value)
                 {
                     this.password = value;
                     //Para refrescar las instrucciones en tpo de ejecucion
                     PropertyChanged?.Invoke(this,
                         new PropertyChangedEventArgs(nameof(this.Password)));
                 }
             }
         }*/

		public string Password
		{
			get
			{
				return this.password;
			}
			set
			{
				SetValue(ref this.password, value);
			}
		}

		public bool IsRunning
		{
			get
			{
				return this.isRunning;
			}
			set
			{
				SetValue(ref this.isRunning, value);
			}
		}

		public bool IsRemembered
		{
			get
			{
				return this.isRemembered;
			}
			set
			{
				SetValue(ref this.isRemembered, value);
			}
		}

		public bool IsEnabled
		{
			get
			{
				return this.isEnabled;
			}
			set
			{
				SetValue(ref this.isEnabled, value);
			}
		}
		#endregion

		#region Commands
		public ICommand LoginCommand
		{
			get
			{
				return new RelayCommand(Login);     //De la libreria instalada GalaSoft.MvvmLight.Command, y le pasamos un metodo por param
			}
		}

		//Param del RelayCommand
		private async void Login()      //Para manejar los alerts en dif dispos, hace falta metodos asincronos
		{
			correct = true;
			if (string.IsNullOrEmpty(this.Email))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",        //Titulo del error
					"You must enter an email ",     //Mensaje del error
					"Accept");      //Texto del boton
				correct = false;
				return;
			}
			if (string.IsNullOrEmpty(this.Password))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",
					"You must enter a password ",
					"Accept");
				correct = false;
				return;
			}

			this.IsRunning = true;
			this.IsEnabled = false;
			//Esto es temporal, ya que esto debería ir a un archivo de recursos (solucion temporal) y luego en la BBDD
			/*if (this.Email != "welltec@gmail.com" || this.Password != "1234")
            {
                this.IsRunning = false;
                this.IsEnabled = true;
                await Application.Current.MainPage.DisplayAlert(
                   "Error",
                   "Email or password incorrect ",
                   "Accept");
                //Limpiamos el campo del password al ingresar uno erroneo
                this.Password = string.Empty;       //No va a funcionar pq no está referenciado en el ViewModel-->sol: Implementar la interfaz INotifyPropertyChanged
                correct = false;
                return;
            }*/

			this.IsRunning = false;
			this.IsEnabled = true;
			/*await Application.Current.MainPage.DisplayAlert(
                "Ok",
                "Hell Yeah!!",
                "Accept");
            return;*/
			/*this.email = string.Empty;
            this.password = string.Empty;*/

			//LOGUEO
			if (correct)
			{
				User u = null;
				var data = new UserDataAccess();
				
					u = data.GetUsersValidate(this.email, this.password);
				
				if (u == null)
				{
					correct = false;
					await Application.Current.MainPage.DisplayAlert(
					"Error",
					"Email or Password incorrect",
					"Accept");
				}
				else
				{
					await Application.Current.MainPage.DisplayAlert(
					"Ok",
					"Access granted!",
					"Accept");
				}
			}

			//Si todo es correcto y el logueo es correcto, pasamos al HomePage
			if (correct)
			{
				MainViewModel.GetInstance().Home = new HomeViewModel();
				//Toca pushear la pagina ComparePage al validar el Login
				await Application.Current.MainPage.Navigation.PushAsync(new HomePage());

			}

			//Antes de ir a la pagina ComparePage, usamos ql patron Singleton e instanciamos nuestra MainViewModel

		}

		public ICommand RegisterCommand
		{
			get
			{
				return new RelayCommand(Register);
			}
		}

		private async void Register()      //Para manejar los alerts en dif dispos, hace falta metodos asincronos
		{
			//Antes de ir a la pagina RegisterPage, usamos ql patron Singleton e instanciamos nuestra MainViewModel
			MainViewModel.GetInstance().Register = new RegisterViewModel();
			//Toca pushear la pagina RegisterPage al validar el registro
			await Application.Current.MainPage.Navigation.PushAsync(new RegisterPage());
		}

		public ICommand PreferenceCommand
		{
			get
			{
				return new RelayCommand(Preference);     //De la libreria instalada GalaSoft.MvvmLight.Command, y le pasamos un metodo por param
			}
		}

		private async void Preference()
		{
			//Antes de ir a la pagina RegisterPage, usamos ql patron Singleton e instanciamos nuestra MainViewModel
			MainViewModel.GetInstance().Preference = new PreferencesViewModel();
			//Toca pushear la pagina RegisterPage al validar el registro
			await Application.Current.MainPage.Navigation.PushAsync(new PreferencesPage());
		}


		#endregion

		#region Constructors
		public LoginViewModel()
		{
			this.IsRemembered = true;
			this.IsEnabled = true;

			/*this.Email = "welltec@gmail.com";           //Luego se quita esto
            this.Password = "1234";  */                   //Luego se quita esto
		}
		#endregion
	}
}
