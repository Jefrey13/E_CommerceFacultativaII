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

		public GeneralResponse<Brand> GetBrandByName(string brandName)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Obtener la marca con el nombre especificado
				var brand = _sqlConnection.Table<Brand>()
										  .FirstOrDefault(b => b.Name == brandName);

				_sqlConnection.Commit();

				if (brand != null)
				{
					return new GeneralResponse<Brand> { Message = "Success", IsSuccess = true, Data = brand };
				}
				else
				{
					return new GeneralResponse<Brand> { Message = "Brand not found", IsSuccess = false, Data = null };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<Brand> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}


		public GeneralResponse<List<Product>> GetProductsByBrand(int brandId)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Obtener la lista de ProductId de la marca especificada
				var productIds = _sqlConnection.Table<ProductBrand>()
											   .Where(pb => pb.BrandId == brandId)
											   .Select(pb => pb.ProductId)
											   .ToList();

				// Obtener los productos correspondientes a los ProductId
				var products = _sqlConnection.Table<Product>()
											 .Where(p => productIds.Contains(p.Id))
											 .ToList();

				_sqlConnection.Commit();

				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<List<Product>> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

	}
}
