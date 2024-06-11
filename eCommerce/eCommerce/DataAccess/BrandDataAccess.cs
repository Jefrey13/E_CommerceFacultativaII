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
	public class BrandDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;
		public BrandDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		// CRUD Brand
		public GeneralResponse<List<Brand>> GetBrands()
		{
			try
			{
				var brands = _sqlConnection.Table<Brand>().ToList();
				return new GeneralResponse<List<Brand>> { Message = "Success", IsSuccess = true, Data = brands };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Brand>> { Message = "An error occurred while retrieving brands", IsSuccess = false, Data = null };
			}
		}

		public GeneralResponse<Brand> GetBrandById(int id)
		{
			try
			{
				if (id <= 0)
				{
					return new GeneralResponse<Brand> { Message = "Invalid brand ID", IsSuccess = false, Data = null };
				}

				var brand = _sqlConnection.Find<Brand>(id);
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
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<Brand> { Message = "An error occurred while retrieving the brand", IsSuccess = false, Data = null };
			}
		}

		public GeneralResponse<Brand> AddBrand(Brand brand)
		{
			try
			{
				// Verificar si la marca ya existe
				var existingBrand = _sqlConnection.Table<Brand>().FirstOrDefault(b => b.Name == brand.Name);
				if (existingBrand != null)
				{
					return new GeneralResponse<Brand> { Message = $"Brand '{brand.Name}' already exists", IsSuccess = false, Data = null };
				}

				_sqlConnection.BeginTransaction();
				int result = _sqlConnection.Insert(brand);

				if (result > 0)
				{
					_sqlConnection.Commit();
					return new GeneralResponse<Brand> { Message = "Success", IsSuccess = true, Data = brand };
				}
				else
				{
					_sqlConnection.Rollback();
					return new GeneralResponse<Brand> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
				}
			}
			catch (SQLiteException ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<Brand> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<Brand> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}



		public GeneralResponse<Brand> UpdateBrand(Brand brand)
		{
			try
			{
				_sqlConnection.BeginTransaction();
				var brandUpdated = _sqlConnection.Find<Brand>(brand.Id);
				if (brandUpdated != null)
				{
					int result = _sqlConnection.Update(brand);
					_sqlConnection.Commit();
					return new GeneralResponse<Brand> { Message = "Success", IsSuccess = true, Data = null };
				}
				else
				{
					_sqlConnection.Rollback();
					return new GeneralResponse<Brand> { Message = "Brand not found", IsSuccess = false, Data = null };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<Brand> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

		public GeneralResponse<Brand> DeleteBrand(Brand brand)
		{
			try
			{
				_sqlConnection.BeginTransaction();
				var brandToDelete = _sqlConnection.Find<Brand>(brand.Id);
				if (brandToDelete != null)
				{
					int result = _sqlConnection.Delete(brandToDelete);
					_sqlConnection.Commit();
					return new GeneralResponse<Brand> { Message = "Success", IsSuccess = true, Data = null };
				}
				else
				{
					_sqlConnection.Rollback();
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
				// Validar la entrada
				if (brandId <= 0)
				{
					return new GeneralResponse<List<Product>> { Message = "Invalid brand ID", IsSuccess = false, Data = null };
				}

				var products = _sqlConnection.Table<Product>()
					.Join(
						_sqlConnection.Table<ProductBrand>(),
						p => p.Id,
						pb => pb.ProductId,
						(p, pb) => new { Product = p, ProductBrand = pb }
					)
					.Where(x => x.ProductBrand.BrandId == brandId)
					.Select(x => x.Product)
					.ToList();

				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving products by brand", IsSuccess = false, Data = null };
			}
		}
		
		public GeneralResponse<int> CountProductsByBrand(int brandId)
		{
			try
			{
				// Validar la entrada
				if (brandId <= 0)
				{
					return new GeneralResponse<int> { Message = "Invalid brand ID", IsSuccess = false, Data = 0 };
				}

				var productCount = _sqlConnection.Table<ProductBrand>()
					.Count(pb => pb.BrandId == brandId);

				return new GeneralResponse<int> { Message = "Success", IsSuccess = true, Data = productCount };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<int> { Message = "An error occurred while counting products by brand", IsSuccess = false, Data = 0 };
			}
		}

		public GeneralResponse<bool> DeleteAllBrands()
		{
			try
			{
				_sqlConnection.BeginTransaction();
				int result = _sqlConnection.DeleteAll<Brand>();

				if (result > 0)
				{
					_sqlConnection.Commit();
					return new GeneralResponse<bool> { Message = "Success", IsSuccess = true, Data = true };
				}
				else
				{
					_sqlConnection.Rollback();
					return new GeneralResponse<bool> { Message = "No brands found to delete", IsSuccess = false, Data = false };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<bool> { Message = "Error: " + ex.Message, IsSuccess = false, Data = false };
			}
		}

	}
}
