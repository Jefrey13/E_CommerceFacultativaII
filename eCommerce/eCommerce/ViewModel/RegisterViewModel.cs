using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.ViewModels
{
	using GalaSoft.MvvmLight.Command;
	using eCommerce.Views;
	using System.Windows.Input;
	using Xamarin.Forms;
	using eCommerce.Model;
	using eCommerce.ViewModels;
	using System.Reflection;
	using eCommerce.DataAccess;

	class RegisterViewModel : BaseViewModel
	{
		//Los atributos privados que necesitamos refrescar
		#region Atributes
		private string user;
		private string email;
		private string confirmedEmail;
		private string password;
		private string confirmedPassword;
		private DateTime birthDay;
		private string country;
		private string province;
		private User userToRegister;
		private bool correct = true;
		#endregion

		#region Properties
		public string User
		{
			get
			{
				return this.user;
			}
			set
			{
				SetValue(ref this.user, value);
			}
		}
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

		public string ConfirmedEmail
		{
			get
			{
				return this.confirmedEmail;
			}
			set
			{
				SetValue(ref this.confirmedEmail, value);
			}
		}

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

		public string ConfirmedPassword
		{
			get
			{
				return this.confirmedPassword;
			}
			set
			{
				SetValue(ref this.confirmedPassword, value);
			}
		}

		//Date
		public DateTime BirthDay
		{
			get
			{
				return this.birthDay;
			}
			set
			{
				SetValue(ref this.birthDay, value);
			}

		}

		public string Country
		{
			get
			{
				return this.country;
			}
			set
			{
				SetValue(ref this.country, value);
			}
		}

		public string Province
		{
			get
			{
				return this.province;
			}
			set
			{
				SetValue(ref this.province, value);
			}
		}
		#endregion

		#region Commands
		public ICommand RegisterCommand
		{
			get
			{
				return new RelayCommand(Register);     //De la libreria instalada GalaSoft.MvvmLight.Command, y le pasamos un metodo por param
			}
		}


		//Param del RelayCommand
		private async void Register()      //Para manejar los alerts en dif dispos, hace falta metodos asincronos
		{
			correct = true; //Para validar
			if (string.IsNullOrEmpty(this.User))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",        //Titulo del error
					"You must enter an user ",     //Mensaje del error
					"Accept");      //Texto del boton
				correct = false;
				this.User = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.Email))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",        //Titulo del error
					"You must enter an email ",     //Mensaje del error
					"Accept");      //Texto del boton
				correct = false;
				this.Email = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.ConfirmedEmail))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",        //Titulo del error
					"You must confirm your email ",     //Mensaje del error
					"Accept");      //Texto del boton
				correct = false;
				this.ConfirmedEmail = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.Password))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",
					"You must enter a password ",
					"Accept");
				correct = false;
				this.Password = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.ConfirmedPassword))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",
					"You must confirm your password ",
					"Accept");
				correct = false;
				this.ConfirmedPassword = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.Country))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",
					"You must enter your country ",
					"Accept");
				correct = false;
				this.Country = string.Empty;
				return;
			}
			if (string.IsNullOrEmpty(this.Province))
			{
				await Application.Current.MainPage.DisplayAlert(
					"Error",
					"You must enter your province ",
					"Accept");
				correct = false;
				this.Province = string.Empty;
				return;
			}

			//Aqui creamos nuestra instancia de User


			if (correct && this.Email.Equals(this.confirmedEmail) && this.Password.Equals(this.ConfirmedPassword))
			{
				this.userToRegister.UserName = User;
				this.userToRegister.Email = Email;
				this.userToRegister.Password = Password;
				this.userToRegister.BirthDay = BirthDay;
				this.userToRegister.Country = Country;
				this.userToRegister.Province = Province;
				if (this.userToRegister.Email.Equals("welltec@gmail.com") && this.userToRegister.Password.Equals("1234"))
				{
					this.userToRegister.Admin = true;
				}
				else
				{
					this.userToRegister.Admin = false;
				}
				//Logica Base de datos para insertar el usuario
				var data = new UserDataAccess();
				
					data.InsertUser(userToRegister);
					await Application.Current.MainPage.DisplayAlert(
				   "Success",
				   "The user " + data.GetUser(userToRegister.IdUser).UserName + " has been succesfully inserted into the data base ",
				   "Accept");
				

				//Antes de ir a la pagina ComparePage, usamos ql patron Singleton e instanciamos nuestra MainViewModel
				MainViewModel.GetInstance().Login = new LoginViewModel();

				//Toca pushear la pagina ComparePage al validar el Login
				await Application.Current.MainPage.Navigation.PushAsync(new LoginPage());

			}
			else
			{
				await Application.Current.MainPage.DisplayAlert(
				   "Error",
				   "You must enter correctly your data  ",
				   "Accept");
				correct = false;
				//Borramos todos los datos al tener errores
				this.Email = string.Empty;
				this.Password = string.Empty;
				this.ConfirmedEmail = string.Empty;
				this.ConfirmedPassword = string.Empty;
				this.Country = string.Empty;
				this.Province = string.Empty;
				return;
			}

		}

		public ICommand ClearCommand
		{
			get
			{
				return new RelayCommand(Clear);     //De la libreria instalada GalaSoft.MvvmLight.Command, y le pasamos un metodo por param
			}
		}

		private void Clear()
		{
			this.Email = string.Empty;
			this.Password = string.Empty;
			this.ConfirmedEmail = string.Empty;
			this.ConfirmedPassword = string.Empty;
			this.Country = string.Empty;
			this.Province = string.Empty;
		}





		#endregion
		#region Constructors
		public RegisterViewModel()
		{
			this.userToRegister = new Model.User();


		}
		#endregion




	}
}
