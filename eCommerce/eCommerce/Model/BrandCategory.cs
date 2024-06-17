using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class BrandCategory
	{
		[PrimaryKey, AutoIncrement]
		public int BrandCategoryId { get; set; }

		public int BrandId { get; set; }

		public int CategoryId { get; set; }
	}
}
