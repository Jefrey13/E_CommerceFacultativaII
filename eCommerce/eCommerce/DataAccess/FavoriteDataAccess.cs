using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using Firebase.Auth;
using Newtonsoft.Json;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace eCommerce.DataAccess
{
	public class FavoriteDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;

		public FavoriteDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		// Método para añadir un favorito
		public async Task<int> AddFavorite(int productId)
		{
			try
			{
				var auth = await GetUserAsync();
				if (auth != null)
				{
					var existingFavorite = _sqlConnection.Table<Favorite>()
						.FirstOrDefault(x => x.ProductId == productId && x.UserEmail == auth.User.Email);
					if(existingFavorite != null)
					{
						return 2;
					}
					Favorite favorite = new Favorite
					{
						UserEmail = auth.User.Email,
						ProductId = productId
					};
					_sqlConnection.Insert(favorite);
					return 1;
				}
				return 1; // Si se pudo obtener el usuario autenticado
			}
			catch (Exception ex)
			{
				Console.WriteLine($"Error al añadir favorito: {ex.Message}");
				return 0;
			}
		}

		// Método para eliminar un favorito
		public async Task<int> RemoveFavorite(int productId)
		{
			try
			{
				var auth = await GetUserAsync();
				if (auth != null)
				{
					var favorite = _sqlConnection.Table<Favorite>().FirstOrDefault(f => f.UserEmail == auth.User.Email && f.ProductId == productId);
					if (favorite != null)
					{
						return _sqlConnection.Delete(favorite);
					}
				}
				return 0; // Si no se pudo obtener el usuario autenticado o se no encontró el favorito
			}
			catch (Exception ex)
			{
				Console.WriteLine($"Error al eliminar favorito: {ex.Message}");
				return 0;
			}
		}

		// Método para obtener los productos favoritos de un usuario
		public async Task<GeneralResponse<List<Product>>> GetFavorites()
		{
			try
			{
				var auth = await GetUserAsync();
				if (auth != null)
				{
					var favoriteProductIds = _sqlConnection.Table<Favorite>().Where(f => f.UserEmail == auth.User.Email).Select(f => f.ProductId).ToList();
					var products = _sqlConnection.Table<Product>().Where(p => favoriteProductIds.Contains(p.Id)).ToList();
					return new GeneralResponse<List<Product>> { Message = "Success. Products found", IsSuccess = false, Data = products };
				}
				return new GeneralResponse<List<Product>> { Message = "Product found", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				Console.WriteLine($"Error al obtener favoritos: {ex.Message}");
				return new GeneralResponse<List<Product>> { Message = "Product not found", IsSuccess = false, Data = null };
			}
		}

		private async Task<FirebaseAuth> GetUserAsync()
		{
			try
			{
				var token = await GetTokenAsync();
				if (!string.IsNullOrEmpty(token))
				{
					var auth = JsonConvert.DeserializeObject<FirebaseAuth>(token);
					return auth;
				}
				else
				{
					// Handle the case where the token is not available
					return null;
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine($"Error al obtener usuario: {ex.Message}");
				return null;
			}
		}

		private async Task<string> GetTokenAsync()
		{
			try
			{
				var token = await SecureStorage.GetAsync("firebase_refresh_token");
				return token;
			}
			catch (Exception ex)
			{
				Console.WriteLine($"Error al obtener token: {ex.Message}");
				return null;
			}
		}
	}
}
