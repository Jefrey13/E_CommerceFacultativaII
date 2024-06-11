using eCommerce.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.ViewModels
{
	class MainViewModel     //Nuestro controlador principal
	{
		#region ViewModels
		public LoginViewModel Login
		{
			get;
			set;
		}

		public CompareViewModel Compare
		{
			get;
			set;
		}

		public RegisterViewModel Register
		{
			get;
			set;
		}

		public PreferencesViewModel Preference
		{
			get;
			set;
		}

		public HomeViewModel Home
		{
			get;
			set;
		}

		public InsertViewModel Insert
		{
			get;
			set;
		}

		public ShowViewModel Show
		{
			get;
			set;
		}
		#endregion

		#region Constructors
		public MainViewModel()
		{
			instance = this;
			this.Login = new LoginViewModel();
			this.Register = new RegisterViewModel();
			this.Home = new HomeViewModel();
			this.Insert = new InsertViewModel();
			this.Show = new ShowViewModel();
			this.Preference = new PreferencesViewModel();

		}

		//Para poder tener una sola instancia en toda la applicacion de la MainViewModel
		#endregion
		#region Singleton
		private static MainViewModel instance;

		public static MainViewModel GetInstance()
		{
			if (instance == null)
			{
				return new MainViewModel();
			}
			return instance;
		}
		#endregion


	}
}
