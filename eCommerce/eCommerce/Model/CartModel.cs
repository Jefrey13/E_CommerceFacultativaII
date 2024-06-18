using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;

namespace eCommerce.Model
{
    public class CartModel
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string image { get; set; }
		public string name { get; set; }
        public string price { get; set; }
        public int numbers { get; set; }
    }
}
