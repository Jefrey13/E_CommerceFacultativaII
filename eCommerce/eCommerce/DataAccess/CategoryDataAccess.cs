using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
namespace eCommerce.DataAccess
{
    public class CategoryDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public CategoryDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		public GeneralResponse<List<Category>> GetCategories()
        {
            try
            {
                var categories = _sqlConnection.Table<Category>().ToList();
                return new GeneralResponse<List<Category>> { Message = "Success", IsSuccess = true, Data = categories };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Category>> { Message = "An error occurred while retrieving category", IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<Category> AddCategory(Category category)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                int result = _sqlConnection.Insert(category);

                if (result > 0)
                {
                    _sqlConnection.Commit();
                    var response = new GeneralResponse<Category> { Message = "Success", IsSuccess = true, Data = category };
                    return response;
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Category> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
                }
            }
            catch (SQLiteException ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Category> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Category> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
    }
}
