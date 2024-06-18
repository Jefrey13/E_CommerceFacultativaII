using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
    public class ItemsPreview
    {
        public int Id { get; set; }
        public string ImageUrl { get; set; }
		public string Name { get; set; }
		public int Quantity { get; set; }
		public string Description { get; set; }
		public string brand { get; set; }
        public string price { get; set; }
        

    }
}
