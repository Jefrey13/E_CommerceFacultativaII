using eCommerce.Data;
using eCommerce.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.DataAccess
{
	public class UserDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;
		public UserDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		public void InsertUser(User user)
		{
			_sqlConnection.Insert(user);
		}

		public void UpdateUser(User user)
		{
			_sqlConnection.Update(user);
		}

		public void DeleteEmpleado(User user)
		{
			_sqlConnection.Delete(user);
		}

		public User GetUser(int IdUser)
		{
			return _sqlConnection.Table<User>().FirstOrDefault(c => c.IdUser == IdUser);
		}

		public User GetUser(string email)
		{
			return _sqlConnection.Table<User>().FirstOrDefault(c => c.Email == email);
		}

		public List<User> GetUsers()
		{
			return _sqlConnection.Table<User>().OrderBy(c => c.UserName).ToList();
		}

		public User GetUsersValidate(string email, string pass)
		{
			User user = null;

			if ((user = GetUser(email)) != null)
			{
				if (user.Password == pass)
					return user;
			}
			return null;
		}
	}
}
