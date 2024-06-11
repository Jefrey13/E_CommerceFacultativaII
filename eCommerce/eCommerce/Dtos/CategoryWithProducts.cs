using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Dtos
{
	public class CategoryWithProducts
	{
		public Category Category { get; set; }
		public List<Product> Products { get; set; }
	}
}
