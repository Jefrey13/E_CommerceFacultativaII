using eCommerce.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace eCommerce.Data
{
	public static class DatabaseConfiguration
	{
		private static SQLiteConnection _sqlConnection;

		public static SQLiteConnection GetDatabaseConnection()
		{
            if (_sqlConnection == null)
            {
				string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "E_CommerceDataBase");
				_sqlConnection = new SQLiteConnection(dbPath);
			}
			return _sqlConnection;
		}	
	}
}