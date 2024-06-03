using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Data
{
	public class DatabaseInitializer
	{
		public static void Initialize()
		{ 
			var _sqlConnection = DatabaseConfiguration.GetDatabaseConnection();

			_sqlConnection.CreateTable<Product>();
			_sqlConnection.CreateTable<Category>();
			_sqlConnection.CreateTable<ProductCategory>();
		}
	}
}
