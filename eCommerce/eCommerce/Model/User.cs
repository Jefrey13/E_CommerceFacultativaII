using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class User
	{

		[PrimaryKey, AutoIncrement]
		public int IdUser { get; set; }
		public string UserName { get; set; }
		public string Email { get; set; }
		public string Password { get; set; }
		public DateTime BirthDay { get; set; }
		public string Province { get; set; }
		public string Country { get; set; }
		public bool Admin { get; set; }

		public string BirthDayEdited
		{
			get
			{
				return string.Format("{0: yyyy-MM-dd}", BirthDay);
			}
		}
		public override string ToString()
		{
			return string.Format("{0} {1} {2} {3} {4} {5} {6}", IdUser, UserName, Email, BirthDayEdited, Province, Country);
		}
	}
}
