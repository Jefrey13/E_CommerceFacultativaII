using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace eCommerce.Model
{
	public class Brand
	{
        public int Id { get; set; }

		[Unique]
		[Required]
        public string Name { get; set; }
		[Required]
		public string Description { get; set; }

		[DataType(DataType.Date)]
		private DateTime createdAt;
		[DataType(DataType.Date)]
		private DateTime lastUpdatedAt;
		[DataType(DataType.Date)]
		private DateTime delateddAt;
		[Required]
		//[DataType(DataType.Url)]
		public string ImageUrl { get; set; }
		public DateTime CreateAt
		{
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
			get { return delateddAt; }
			set { delateddAt = DateTime.Now; }
		}
        public bool Status { get; set; }
    }
}
