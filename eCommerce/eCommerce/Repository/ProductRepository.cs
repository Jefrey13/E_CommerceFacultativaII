using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;

namespace eCommerce.Repository
{
	public class ProductRepository
	{
		private SQLiteConnection _sqlConnection;
		public ProductRepository() 
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}
		//CRUD product
		public GeneralResponse<List<Product>> GetProducts()
		{
			try
			{
				var products = _sqlConnection.Table<Product>().ToList();
				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = false, Data = products };
			}
			catch(Exception ex)
			{
				return new GeneralResponse<List<Product>> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<Product> GetProductsById(int id)
		{
			try{
				var product = _sqlConnection.Find<Product>(id);
				if(product != null)
				{
					return new GeneralResponse<Product> { Message = "Success", IsSuccess =false, Data = product };
				}
				else
				{
					return new GeneralResponse<Product> { Message = "error: ", IsSuccess = false, Data = null };
				}
			}
			catch(Exception ex) 
			{
				return new GeneralResponse<Product> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<Product> AddProduct(Product product)
		{
			try
			{
				var result = _sqlConnection.Insert(product);
				return new GeneralResponse<Product> { Message = "Success: ", IsSuccess = true, Data = null };
			}
			catch(Exception ex)
			{
				return new GeneralResponse<Product> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<Product> UpdateProduct(Product product)
		{
			try
			{
				var productUpdated = _sqlConnection.Find<Product>(product.Id);
				if (product != null) _sqlConnection.Update(productUpdated);

				return new GeneralResponse<Product> { Message = "success", IsSuccess = true, Data = null };
			}
			catch(Exception ex)
			{
				return new GeneralResponse<Product> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<Product> DeleteProduct(Product id)
		{
			try
			{
				var product = _sqlConnection.Find<Product>(id);
				if (product != null) _sqlConnection.Delete(product);

				return new GeneralResponse<Product> { Message = "success", IsSuccess = true, Data = null };
			}
			catch(Exception ex)
			{
				return new GeneralResponse<Product> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
        public GeneralResponse<List<Product>> FilterProduct(string filter) 
		{
			try
			{
				var products = _sqlConnection.Table<Product>().Where(p => p.Name.Equals(filter,
						StringComparison.OrdinalIgnoreCase
						)).ToList();
				return new GeneralResponse<List<Product>> { Message = "success: ", IsSuccess = true, Data = products };

			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<List<Product>> GetProductByCategory(int categoryId)
		{
			try
			{
				var products = _sqlConnection.Table<Product>().Join(_sqlConnection.Table<ProductCategory>(),
					//Join
					p => p.Id, pc => pc.ProductId, (p, pc) => new { Product = p, ProductCategory = pc })
					.Where(x => x.ProductCategory.CategoryId == categoryId)
					.Select(x => x.Product).ToList();
				return new GeneralResponse<List<Product>> { Message = "success:", IsSuccess = true, Data = products };

			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
    }
}
