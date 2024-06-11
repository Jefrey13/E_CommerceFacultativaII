using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.DataAccess
{
    public class ProductDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public ProductDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		//CRUD product
		public GeneralResponse<List<Product>> GetProducts()
        {
            try
            {
                var products = _sqlConnection.Table<Product>().ToList();
                return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving products", IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<Product> GetProductsById(int id)
        {
            try
            {
                if (id <= 0)
                {
                    return new GeneralResponse<Product> { Message = "Invalid product ID", IsSuccess = false, Data = null };
                }

                var product = _sqlConnection.Find<Product>(id);
                if (product != null)
                {
                    return new GeneralResponse<Product> { Message = "Success", IsSuccess = true, Data = product };
                }
                else
                {
                    return new GeneralResponse<Product> { Message = "Product not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<Product> { Message = "An error occurred while retrieving the product", IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<Product> AddProduct(Product product)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var result = _sqlConnection.Insert(product);

                if (result > 0)
                {
                    _sqlConnection.Commit();
                    var i = new GeneralResponse<Product> { Message = "Success", IsSuccess = true, Data = product };
                    return i;
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Product> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
                }
            }
            catch (SQLiteException ex)
            {
                _sqlConnection.Rollback();
                var l = new GeneralResponse<Product> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
                return l;
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Product> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }


        public GeneralResponse<Product> UpdateProduct(Product product)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var productUpdated = _sqlConnection.Find<Product>(product.Id);
                if (productUpdated != null)
                {
                    int result = _sqlConnection.Update(product);
                    _sqlConnection.Commit();
                    return new GeneralResponse<Product> { Message = "Success", IsSuccess = true, Data = null };
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Product> { Message = "Product not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Product> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }

        public GeneralResponse<Product> DeleteProduct(Product product)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var productToDelete = _sqlConnection.Find<Product>(product.Id);
                if (productToDelete != null)
                {
                    int result = _sqlConnection.Delete(productToDelete);
                    _sqlConnection.Commit();
                    return new GeneralResponse<Product> { Message = "Success", IsSuccess = true, Data = null };
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Product> { Message = "Product not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Product> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<List<Product>> FilterProduct(string filter)
        {
            try
            {
                // Validar la entrada
                if (string.IsNullOrWhiteSpace(filter))
                {
                    return new GeneralResponse<List<Product>> { Message = "Filter cannot be empty", IsSuccess = false, Data = null };
                }

                // Utilizar una consulta parametrizada
                var products = _sqlConnection.Query<Product>(
                    "SELECT * FROM Product WHERE Name LIKE ?", "%" + filter + "%"
                ).ToList();

                return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Product>> { Message = "An error occurred while filtering products", IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<List<Product>> GetProductByCategory(int categoryId)
        {
            try
            {
                // Validar la entrada
                if (categoryId <= 0)
                {
                    return new GeneralResponse<List<Product>> { Message = "Invalid category ID", IsSuccess = false, Data = null };
                }

                var products = _sqlConnection.Table<Product>()
                    .Join(
                        _sqlConnection.Table<ProductCategory>(),
                        p => p.Id,
                        pc => pc.ProductId,
                        (p, pc) => new { Product = p, ProductCategory = pc }
                    )
                    .Where(x => x.ProductCategory.CategoryId == categoryId)
                    .Select(x => x.Product)
                    .ToList();

                return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving products by category", IsSuccess = false, Data = null };
            }
        }
    }
}
