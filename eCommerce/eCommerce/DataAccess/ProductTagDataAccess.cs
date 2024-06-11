using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace eCommerce.DataAccess
{
    public class ProductTagDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public ProductTagDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		public GeneralResponse<ProductTag> AddProductTag(ProductTag productTag)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var result = _sqlConnection.Insert(productTag);

                if (result > 0)
                {
                    _sqlConnection.Commit();
                    var response = new GeneralResponse<ProductTag> { Message = "Success", IsSuccess = true, Data = productTag };
                    return response;
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<ProductTag> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
                }
            }
            catch (SQLiteException ex)
            {
                _sqlConnection.Rollback();
                var response = new GeneralResponse<ProductTag> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
                return response;
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<ProductTag> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
		public GeneralResponse<List<Product>> GetProductsByTag(string tagName)
		{
			try
			{
				if (tagName == string.Empty)
				{
					return new GeneralResponse<List<Product>> { Message = "Invalid tag", IsSuccess = false, Data = null };
				}

				var tag = _sqlConnection.Table<Tag>().FirstOrDefault(x => x.Name == tagName);

				var products = _sqlConnection.Table<Product>()
				.Join(
						_sqlConnection.Table<ProductTag>(),
						p => p.Id,
						pt => pt.ProductId,
						(p, pt) => new { Product = p, ProductTag = pt }
					)
					.Where(x => x.ProductTag.TagId == tag.Id)
					.Select(x => x.Product)
					.ToList();

				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving products by tag", IsSuccess = false, Data = null };
			}
		}

	}
}
