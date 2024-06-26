using eCommerce.Model;
using eCommerce.ViewModel;
using System.Collections.ObjectModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace eCommerce.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Confirmarorden : ContentPage
    {
		private ConfirmarordenViewModel ViewModel { get; set; } // Agregar una propiedad para el ViewModel
		public Confirmarorden(ObservableCollection<ItemsPreview> items)
        {
            InitializeComponent();

			// Asignar la colección recibida al property de esta clase
			// Crear una instancia de categoriesViewModel y asignarla como contexto de enlace
			ViewModel = new ConfirmarordenViewModel(items);
			BindingContext = ViewModel;
		}
		public void ScrollView_Scrolled()
        {

        }

	}
}