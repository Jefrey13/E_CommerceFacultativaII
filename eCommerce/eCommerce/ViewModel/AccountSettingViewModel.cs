using eCommerce.Model;
using eCommerce.Views;
using eCommerce.Views.AccessApp;
using Plugin.Toast;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using Xamarin.Forms;

namespace eCommerce.ViewModel
{
	public class AccountSettingViewModel : INotifyPropertyChanged
	{
		private readonly IList<UserModel> source;
		public ObservableCollection<UserModel> Users { get; set; }
		public ICommand SaveCommand { get; set; }
		public ICommand DeleteCommand { get; set; }

		public AccountSettingViewModel()
		{
			source = new List<UserModel>();
			Users = new ObservableCollection<UserModel>(source);

			SaveCommand = new Command(OnSave);
			DeleteCommand = new Command(OnDelete);
		}

		private async void OnSave()
		{
			CrossToastPopUp.Current.ShowCustomToast("Welcome to factus", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			await Application.Current.MainPage.Navigation.PushModalAsync(new HomePage());
		}

		private async void OnDelete()
		{
			CrossToastPopUp.Current.ShowCustomToast("Account Deleted", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
			await Application.Current.MainPage.Navigation.PushModalAsync(new LoginPage());
		}

		public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
