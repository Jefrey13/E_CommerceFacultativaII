using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.DataAccess
{
    public class ProductBrandDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public ProductBrandDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		public GeneralResponse<ProductBrand> AddProductBrand(ProductBrand productBrand)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                int result = _sqlConnection.Insert(productBrand);
                _sqlConnection.Commit();
                return new GeneralResponse<ProductBrand> { Message = "Success", IsSuccess = true, Data = null };
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<ProductBrand> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
    }
}
