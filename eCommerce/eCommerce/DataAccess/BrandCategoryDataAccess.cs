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
	public class BrandCategoryDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;

		public BrandCategoryDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		public GeneralResponse<BrandCategory> AddBrandCategory(BrandCategory brandCategory)
		{
			try
			{
				_sqlConnection.BeginTransaction();
				int result = _sqlConnection.Insert(brandCategory);

				if (result > 0)
				{
					_sqlConnection.Commit();
					return new GeneralResponse<BrandCategory> { Message = "Success", IsSuccess = true, Data = null };
				}
				else
				{
					_sqlConnection.Rollback();
					return new GeneralResponse<BrandCategory> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
				}
			}
			catch (SQLiteException ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<BrandCategory> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<BrandCategory> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

		public GeneralResponse<List<Brand>> GetBrandsByCategory(string categoryName)
		{
			try
			{
				var brandCategories = _sqlConnection.Table<BrandCategory>().ToList();
				foreach (var bc in brandCategories)
				{
					Console.WriteLine($"BrandCategoryId: {bc.BrandCategoryId}, BrandId: {bc.BrandId}, CategoryId: {bc.CategoryId}");
				}

				if (string.IsNullOrEmpty(categoryName))
				{
					return new GeneralResponse<List<Brand>> { Message = "Invalid category", IsSuccess = false, Data = null };
				}

				// Obtener la categoría correspondiente
				var category = _sqlConnection.Table<Category>().FirstOrDefault(x => x.Name == categoryName);
				if (category == null)
				{
					return new GeneralResponse<List<Brand>> { Message = "Category not found", IsSuccess = false, Data = null };
				}

				// Obtener las marcas relacionadas con la categoría
				var brands = _sqlConnection.Table<Brand>()
					.Join(
						_sqlConnection.Table<BrandCategory>(),
						b => b.Id,
						bc => bc.BrandId,
						(b, bc) => new { Brand = b, BrandCategory = bc }
					)
					.Where(x => x.BrandCategory.CategoryId == category.Id)
					.Select(x => x.Brand)
					.Distinct()
					.ToList();

				return new GeneralResponse<List<Brand>> { Message = "Success", IsSuccess = true, Data = brands };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Brand>> { Message = "An error occurred while retrieving brands by category", IsSuccess = false, Data = null };
			}
		}

	}
}
