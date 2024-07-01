using SQLite;
using System;
using System.Collections.Generic;
using System.Text;


namespace eCommerce.Model
{
	public class Favorite
	{
		[PrimaryKey, AutoIncrement]
		public int Id { get; set; }
		public string UserEmail { get; set; }
		public int ProductId { get; set; }
	}
}