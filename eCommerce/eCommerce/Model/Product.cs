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
        [System.ComponentModel.DataAnnotations.MaxLength(70)]
        public string Name { get; set; }
		[Required]
		[System.ComponentModel.DataAnnotations.MaxLength(200)]
		public string Description { get; set; }
        [Required]
        [Range(1.00, 1000.00)]
        public decimal Price { get; set; }
		[Required]
		[Range(1.00, 100.00)]
		public int Quantity { get; set; }
		[Required]
		[DataType(DataType.ImageUrl)]
        public string Image { get; set; }

        [DataType(DataType.Date)]
		private DateTime createdAt;
		[DataType(DataType.Date)]
		private DateTime lastUpdatedAt;
		[DataType(DataType.Date)]
		private DateTime delateddAt;

		public DateTime CreateAt { 
			get { return createdAt; }
			set { createdAt = DateTime.Now; } 
		}
		public DateTime LastUpdatedAt
		{
			get { return lastUpdatedAt; }
			set { createdAt = DateTime.Now; }
		}
		public DateTime DeleteAt
		{
			get { return DeleteAt; }
			set { createdAt = DateTime.Now; }
		}
		[Required]
		public bool Status { get; set; }
    }
}
