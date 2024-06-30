using eCommerce.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace eCommerce.Data
{
	public class DatabaseConfiguration
	{
		public static SQLiteConnection _sqlConnection;

		public static SQLiteConnection GetDatabaseConnection()
		{
			if (_sqlConnection == null)
			{
				string folderPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
				string dbPath = Path.Combine(folderPath, "ECommerce101.db3");

				_sqlConnection = new SQLiteConnection(dbPath);

				_sqlConnection.CreateTable<Product>();
				_sqlConnection.CreateTable<Category>();
				_sqlConnection.CreateTable<Brand>();
				_sqlConnection.CreateTable<ProductCategory>();
				_sqlConnection.CreateTable<ProductBrand>();
				_sqlConnection.CreateTable<Tag>();
				_sqlConnection.CreateTable<BrandTag>();
				_sqlConnection.CreateTable<ProductTag>();
				_sqlConnection.CreateTable<User>();
				_sqlConnection.CreateTable<BrandCategory>();
				_sqlConnection.CreateTable<CartModel>();
				_sqlConnection.CreateTable<CartProduct>();
				_sqlConnection.CreateTable<UserModel>();
			}
			return _sqlConnection;
		}
	}
}
