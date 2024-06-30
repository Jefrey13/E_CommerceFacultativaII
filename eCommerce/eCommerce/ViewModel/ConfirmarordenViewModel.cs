using eCommerce.DataAccess;
using eCommerce.Model;
using iTextSharp.text.pdf.draw;
using iTextSharp.text.pdf;
using iTextSharp.text;
using Stripe;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using eCommerce.Views;
using Plugin.Toast;

namespace eCommerce.ViewModel
{
    public class ConfirmarordenViewModel : INotifyPropertyChanged
    {
        private string _numeroFactura;
        private string _nombreCliente;
        private string _direccion;
        private string _numcontact;
        private decimal _subTotal;
        private decimal _iva;
        private decimal _total;
        private DateTime _fecha;

		private CartDataAccess _cartDataAccess;
		public ICommand GenerarFacturaCommand { get; set; }
		public ObservableCollection<ItemsPreview> ItemPreview { get; set; }

        public ConfirmarordenViewModel(ObservableCollection<ItemsPreview> items)
        {
            NumeroFactura = GenerateRandomInvoiceNumber();
            Fecha = DateTime.Now;
            ItemPreview = items;
            Load();
			_cartDataAccess = new CartDataAccess();
			GenerarFacturaCommand = new Command(async() =>
			{
				if (string.IsNullOrEmpty(this.NombreCliente))
				{
					CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a fullname.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
					return;
				}
				if (string.IsNullOrEmpty(this.Direccion))
				{
					CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a address.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
					return;
				}
				if (string.IsNullOrEmpty(this.Numcontact))
				{
					CrossToastPopUp.Current.ShowCustomToast("Error. You must enter a cellphone number.", bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Long);
					return;
				}
				await GenerarFactura();
			});
		}
		public void Load()
        {
			try
			{
				if (ItemPreview != null)
				{
					foreach (var item in ItemPreview)
					{
						SubTotal += Convert.ToDecimal(item.price);
						Iva = SubTotal * 0.15m;
						Total = SubTotal + Iva;
					}
				}
			}
			catch (Exception ex)
			{
				
				Console.WriteLine($"Error al crear la colección de elementos: {ex.Message}");
				// Manejar la excepción según sea necesario
			}
		}
        private string GenerateRandomInvoiceNumber()
        {
            Random random = new Random();
            return "FAC-" + random.Next(1000, 9999);
        }

        public string NumeroFactura
        {
            get => _numeroFactura;
            set => SetProperty(ref _numeroFactura, value);
        }
        public DateTime Fecha { get; }
        public string NombreCliente
        {
            get => _nombreCliente;
            set => SetProperty(ref _nombreCliente, value);
        }

        public string Direccion
        {
            get => _direccion;
            set => SetProperty(ref _direccion, value);
        }

        public string Numcontact
        {
            get => _numcontact;
            set => SetProperty(ref _numcontact, value);
        }

        public decimal SubTotal
        {
            get => _subTotal;
            set => SetProperty(ref _subTotal, value);
        }

        public decimal Iva
        {
            get => _iva;
            set => SetProperty(ref _iva, value);
        }


        public decimal Total
        {
            get => _total;
            set => SetProperty(ref _total, value);
        }

       
        protected bool SetProperty<T>(ref T storage, T value, [CallerMemberName] string propertyName = null)
        {
            if (Equals(storage, value)) return false;

            storage = value;
            OnPropertyChanged(propertyName);
            return true;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

		public async Task GenerarFactura()
		{
			Random random = new Random();
			int randomNumber = random.Next(1000, 9999);  // Generar un número aleatorio para el nombre del archivo
														 // Crear una lista de productos de ejemplo
			string directoryPath = Path.Combine(FileSystem.AppDataDirectory, "Download");
			Directory.CreateDirectory(directoryPath);  // Crear el directorio si no existe
			string pdfPath = Path.Combine(directoryPath, $"Download{NumeroFactura}.pdf");
			// Fuente para el texto

			BaseFont bf = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
			iTextSharp.text.Font font = new iTextSharp.text.Font(bf, 12, iTextSharp.text.Font.NORMAL);
			iTextSharp.text.Font fontitle = new iTextSharp.text.Font(bf, 12, iTextSharp.text.Font.BOLD);

			// Lógica para generar el PDF
			using (var fs = new FileStream(pdfPath, FileMode.Create, FileAccess.Write, FileShare.None))
			{
				Document document = new Document();
				PdfWriter writer = PdfWriter.GetInstance(document, fs);
				document.Open();
				//document.Add(new Paragraph("Factura Electrónica"));
				document.Add(new Paragraph("Factus!", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph("Thank You for ordering!", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add a line separator
				document.Add(new LineSeparator());
				// Add invoice title
				document.Add(new Paragraph("Invoice", font) { Alignment = iTextSharp.text.Element.ALIGN_CENTER });

				// Add invoice details
				document.Add(new Paragraph($"Invoice Number: {NumeroFactura}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });

				document.Add(new Paragraph($"Date: {Fecha}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add a line separator
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add a line separator
				document.Add(new LineSeparator());
				document.Add(new Paragraph("Client Details", font) { Alignment = iTextSharp.text.Element.ALIGN_CENTER });
				document.Add(new Paragraph($"Client Name: {NombreCliente}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph($"Client Address: {Direccion}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph($"Client PhoneNumber {Numcontact}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				//document.Add(new Paragraph($"Client Email {}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add a line separator
				document.Add(new LineSeparator());
				document.Add(new Paragraph("Order Details", font) { Alignment = iTextSharp.text.Element.ALIGN_CENTER });
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });

				// Crear una tabla con 3 columnas
				PdfPTable table = new PdfPTable(3);
				table.WidthPercentage = 100;
				table.SetWidths(new float[] { 40, 20, 20 });

				// Agregar las celdas de cabecera
				// Define a bold font for headers
				iTextSharp.text.Font boldFont = FontFactory.GetFont("Arial", 12, iTextSharp.text.Font.BOLD);

				// Add header cells
				PdfPCell cell = new PdfPCell(new Phrase("Name Product", boldFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);

				cell = new PdfPCell(new Phrase("Quantity", boldFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);

				cell = new PdfPCell(new Phrase("Unit Price", boldFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);

				/// CELDAS DEL CUERPO DE LA TABLA DE PRUEBA EL RECORRIDO DEBE SER POR EL FOREACH QUE SE ENCUENTRA COMENTADO ABAJO
				// Add data cells
				iTextSharp.text.Font normalFont = FontFactory.GetFont("Arial", 12);

				/**
				 * cell = new PdfPCell(new Phrase("Name Product", normalFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);

				cell = new PdfPCell(new Phrase("Quantity", normalFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);

				cell = new PdfPCell(new Phrase("Unit Price", normalFont));
				cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
				table.AddCell(cell);
				*/

				foreach (var item in ItemPreview)
				{
					cell = new PdfPCell(new Phrase(item.Name));
					cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
					table.AddCell(cell);

					cell = new PdfPCell(new Phrase(item.Quantity.ToString()));
					cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
					table.AddCell(cell);

					cell = new PdfPCell(new Phrase("$" + item.price.ToString()));
					cell.HorizontalAlignment = iTextSharp.text.Element.ALIGN_CENTER;
					table.AddCell(cell);
				}

				// Agregar las celdas de datos
				//foreach (var product in products)
				//{
				//table.AddCell(product.Name);
				//table.AddCell(product.Quantity.ToString());
				//table.AddCell(product.UnitPrice.ToString("C"));
				//}

				// Add table to document
				document.Add(table);
				// Add a line separator
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add total amount
				document.Add(new Paragraph($"SubTotal: {SubTotal}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph($"IVA: {Iva}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				//document.Add(new Paragraph($"?:", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph($"Total: {Total}", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				document.Add(new Paragraph("‎ ", font) { Alignment = iTextSharp.text.Element.ALIGN_LEFT });
				// Add a line separator
				document.Add(new LineSeparator());
				// Add footer
				document.Add(new Paragraph("Thank you for your business!") { Alignment = iTextSharp.text.Element.ALIGN_CENTER });
				document.Close();
			}
			// Mostrar confirmación
			await Xamarin.Forms.Application.Current.MainPage.DisplayAlert("PDF Generado", $"PDF guardado en: {pdfPath}", "OK");
			// Abre el PDF después de crearlo
			Device.BeginInvokeOnMainThread(async () =>
			{
				await Launcher.OpenAsync(new OpenFileRequest
				{
					File = new ReadOnlyFile(pdfPath)
				});
			});

			_cartDataAccess.RemoveAllCartItem();

			await Xamarin.Forms.Application.Current.MainPage.Navigation.PushModalAsync(new NavigationPage(new HomePage()));
		}
	}

	public class Item
    {
        public string Nombre { get; set; }
        public decimal Precio { get; set; }
    }
}





