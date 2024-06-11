using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class BrandTag
	{ 
		[PrimaryKey, AutoIncrement]
		public int BrandTagId { get; set; }
		public int BrandId { get; set; }
		public int TagId { get; set; }
	}
}
