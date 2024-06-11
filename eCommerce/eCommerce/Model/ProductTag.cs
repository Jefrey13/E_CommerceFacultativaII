using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class ProductTag
	{
		[PrimaryKey, AutoIncrement]
		public int ProductTagId { get; set; }
		public int ProductId { get; set; }
		public int TagId { get; set; }
	}
}
