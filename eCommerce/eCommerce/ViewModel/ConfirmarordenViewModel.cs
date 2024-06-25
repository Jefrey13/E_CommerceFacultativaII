using eCommerce.Model;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

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


        public ObservableCollection<Item> ItemPreview { get; set; }

        public ConfirmarordenViewModel()
        {
            NumeroFactura = GenerateRandomInvoiceNumber();
            Fecha = DateTime.Now;
            ItemPreview = new ObservableCollection<Item>
            {
                new Item { Nombre = "Producto 1", Precio = 10 },
                new Item { Nombre = "Producto 2", Precio = 20 },
                new Item { Nombre = "Producto 3", Precio = 30 }
            };

           
            SubTotal = CalculateSubTotal();
            Iva = SubTotal * 0.15m;
            Total = SubTotal + Iva ;
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

        private decimal CalculateSubTotal()
        {
            decimal subtotal = 0;
            foreach (var item in ItemPreview)
            {
                subtotal += item.Precio;
            }
            return subtotal;
        }
    }

    public class Item
    {
        public string Nombre { get; set; }
        public decimal Precio { get; set; }
    }
}





