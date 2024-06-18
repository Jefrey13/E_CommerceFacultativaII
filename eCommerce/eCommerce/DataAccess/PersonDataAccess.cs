using eCommerce.Data;
using eCommerce.Model;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.DataAccess
{
	public class PersonDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;
		public PersonDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		public PersonModel GetPersonModelAynsc(int id)
		{ 
			return _sqlConnection.Table<PersonModel>().Where(i => i.PersonID == id).FirstOrDefault(); 
		}

		public List<PersonModel> GetPersonModel() {
			return _sqlConnection.Table<PersonModel>().ToList(); 
		}

		/* METOD-O GUARDAR Y ACTUALIZAR ()*/
		public int SavePersonModelAsync(PersonModel personModel)
		{
			if (personModel.PersonID != 0)
			{
				return _sqlConnection.Update(personModel);
			}
			else
			{
				return _sqlConnection.Insert(personModel);
			}
		}

		/* METOD-O ELIMINAR () */
		public int DeletePersonModelAsync(PersonModel personModel) { 
			return _sqlConnection.Delete(personModel); 
		}
	}
}
