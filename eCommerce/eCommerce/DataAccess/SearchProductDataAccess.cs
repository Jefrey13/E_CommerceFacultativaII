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
    public class SearchProductDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public SearchProductDataAccess()
        {
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection(); ;
        }

		public GeneralResponse<List<Product>> GetProducts(string productName)
		{
			try
			{
				// Obtener la lista de productos
				var products = _sqlConnection.Table<Product>().ToList();

				// Si se proporciona un nombre de producto, filtrar los productos
				if (!string.IsNullOrEmpty(productName))
				{
					// Convertir ambos, el nombre del producto y la cadena de búsqueda, a minúsculas
					string lowerProductName = productName.ToLower();
					products = products
						.Where(p => p.Name.ToLower().Contains(lowerProductName))
						.ToList();
				}

				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving products", IsSuccess = false, Data = null };
			}
		}

	}

}
