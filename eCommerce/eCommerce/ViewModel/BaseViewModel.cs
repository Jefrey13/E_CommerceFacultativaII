using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace eCommerce.ViewModels
{

	using System.ComponentModel;
	using System.Runtime.CompilerServices;
	//Clase genérica para evitar la redundancia y duplicidad en nuestro código para setear propiedades 
	//e implementar la interfaz INotifyPropertyChanged
	public class BaseViewModel : INotifyPropertyChanged
	{
		public event PropertyChangedEventHandler PropertyChanged;

		protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
		{

			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

		}

		protected void SetValue<T>(ref T backingField, T value, [CallerMemberName] string propertyName = null)
		{
			if (EqualityComparer<T>.Default.Equals(backingField, value))
			{
				return;
			}

			backingField = value;
			OnPropertyChanged(propertyName);
		}
	}
}
