using eCommerce.Data;
using eCommerce.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.DataAccess
{
	public class UserdDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;
		public UserdDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		#region CRUD - USER TABLE

		public UserModel GetUserModelAynsc(int id)
		{ 
			return _sqlConnection.Table<UserModel>().Where(i => i.UserID == id).FirstOrDefault(); 
		}

		/* METOD-O SELECT ()*/
		public List<UserModel> GetUserModel() {
			return _sqlConnection.Table<UserModel>().ToList(); 
		}

		/* METOD-O GUARDAR Y ACTUALIZAR ()*/
		public int SaveUserModelAsync(UserModel userModel)
		{
			if (userModel.UserID != 0)
			{
				return _sqlConnection.Update(userModel);
			}
			else
			{
				return _sqlConnection.Insert(userModel);
			}
		}

		/* METOD-O ELIMINAR () */
		public int DeleteUserModelAsync(UserModel userModel) { return _sqlConnection.Delete(userModel); }

		public List<UserModel> GetUsersValidate(string email, string password)
		{
			return _sqlConnection.Query<UserModel>(
				"SELECT * FROM UserModel WHERE EmailField = '" + email + "' AND PasswordField = '" + password + "'");
		}
		#endregion
	}
}
