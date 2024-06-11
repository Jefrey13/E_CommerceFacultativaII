using eCommerce.Data;
using eCommerce.Dtos;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;

namespace eCommerce.DataAccess
{
    public class ProductCategoryDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public ProductCategoryDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		public GeneralResponse<ProductCategory> AddProductCategory(ProductCategory productCategory)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                int result = _sqlConnection.Insert(productCategory);
                _sqlConnection.Commit();
                return new GeneralResponse<ProductCategory> { Message = "Success", IsSuccess = true, Data = null };
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<ProductCategory> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<List<Product>> GetProductsByCategory(string categoryName)
        {
            try
            {
                // Buscar la categoría por su nombre
                var category = _sqlConnection.Table<Category>()
                                             .FirstOrDefault(c => c.Name == categoryName);

                if (category != null)
                {
                    // Realizar la consulta SQL para obtener los IDs de los productos asociados a la categoría
                    var productCategoryIds = _sqlConnection.Table<ProductCategory>()
                                                           .Where(pc => pc.CategoryId == category.Id)
                                                           .Select(pc => pc.ProductId)
                                                           .ToList();

                    // Utilizar los IDs obtenidos para obtener los productos correspondientes
                    var products = _sqlConnection.Table<Product>()
                                                 .Where(p => productCategoryIds.Contains(p.Id))
                                                 .ToList();

                    // Verificar si se encontraron productos
                    if (products != null && products.Any())
                    {
                        return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
                    }
                    else
                    {
                        return new GeneralResponse<List<Product>> { Message = "No products found for the specified category", IsSuccess = false, Data = null };
                    }
                }
                else
                {
                    return new GeneralResponse<List<Product>> { Message = "Category not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                return new GeneralResponse<List<Product>> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<List<CategoryWithProducts>> GetProductsGroupedByCategory()
        {
            try
            {
                // Realizar una consulta SQL para unir las tablas ProductCategory, Product y Category
                var query = from productCategory in _sqlConnection.Table<ProductCategory>()
                            join product in _sqlConnection.Table<Product>() on productCategory.ProductId equals product.Id
                            join category in _sqlConnection.Table<Category>() on productCategory.CategoryId equals category.Id
                            select new { Product = product, Category = category };

                // Agrupar los productos por categoría
                var groupedProducts = query.GroupBy(x => x.Category)
                                           .Select(g => new CategoryWithProducts
                                           {
                                               Category = g.Key,
                                               Products = g.Select(x => x.Product).ToList()
                                           })
                                           .ToList();

                // Verificar si se encontraron productos
                if (groupedProducts != null && groupedProducts.Any())
                {
                    return new GeneralResponse<List<CategoryWithProducts>> { Message = "Success", IsSuccess = true, Data = groupedProducts };
                }
                else
                {
                    return new GeneralResponse<List<CategoryWithProducts>> { Message = "No products found for any category", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                return new GeneralResponse<List<CategoryWithProducts>> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }

    }
}
