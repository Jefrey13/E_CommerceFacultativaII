using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class ProductCategory
	{
		[PrimaryKey, AutoIncrement]
		public int Id { get; set; }
		[Indexed]
        public int ProductId { get; set; }
		[Indexed]
        public int CategoryId { get; set; }
    }
}
