using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace eCommerce.Model
{
	public class Product
	{
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        [Required]
        [System.ComponentModel.DataAnnotations.MaxLength(100)]
        public string Name { get; set; }
		[Required]
		[System.ComponentModel.DataAnnotations.MaxLength(300)]
		public string Description { get; set; }
        [Required]
        //[Range(1.00, 1000.00)]
        public string Price { get; set; }
		[Required]
		//[Range(1.00, 100.00)]
		public int Stock { get; set; }
		[Required]
		//[DataType(DataType.ImageUrl)]
        public string Image { get; set; }

        
		[Required]
		public bool Status { get; set; }
		public int Quantity { get; set; }
	}
}
