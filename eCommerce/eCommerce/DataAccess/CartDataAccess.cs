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
	public class CartDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;

		public CartDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		// Método para guardar un producto en el carrito del usuario
		public async Task<GeneralResponse<CartProduct>> AddCartItem(int productId, int quantity)
		{
			try
			{
				var auth = await GetUserAsync();

				if (auth != null)
				{
					_sqlConnection.BeginTransaction();

					// Verificar si el producto ya existe en el carrito para el usuario actual
					var existingCartItem = _sqlConnection.Table<CartProduct>()
														 .FirstOrDefault(cp => cp.UserEmail == auth.User.Email && cp.ProductId == productId);

					if (existingCartItem != null)
					{
						// Si el producto ya está en el carrito, no aumentar la cantidad y devolver un mensaje
						return new GeneralResponse<CartProduct>
						{
							Message = "The product is already in your cart.",
							IsSuccess = false,
							Data = existingCartItem
						};
					}
					else
					{
						// Si el producto no está en el carrito, agregar uno nuevo
						var newCartItem = new CartProduct
						{
							UserEmail = auth.User.Email,
							ProductId = productId,
							Quantity = quantity
						};

						_sqlConnection.Insert(newCartItem);
						_sqlConnection.Commit();

						return new GeneralResponse<CartProduct>
						{
							Message = "Success",
							IsSuccess = true,
							Data = newCartItem
						};
					}
				}

				return new GeneralResponse<CartProduct>
				{
					Message = "User not authenticated",
					IsSuccess = false,
					Data = null
				};
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct>
				{
					Message = "Error: " + ex.Message,
					IsSuccess = false,
					Data = null
				};
			}
		}

		// Método para obtener todos los productos en el carrito del usuario
		public async Task<GeneralResponse<List<Product>>> GetCartProducts()
		{
			try
			{
				var auth = await GetUserAsync();

				if (auth != null)
				{
					// Obtener todos los productos asociados al carrito del usuario actual
					var cartProducts = _sqlConnection.Table<CartProduct>()
													 .Where(cp => cp.UserEmail == auth.User.Email)
													 .ToList();

					var products = new List<Product>();

					foreach (var cartProduct in cartProducts)
					{
						// Obtener el producto desde la tabla Product
						var product = _sqlConnection.Table<Product>()
													.FirstOrDefault(p => p.Id == cartProduct.ProductId);

						if (product != null)
						{
							// Actualizar la cantidad del producto en el contexto del carrito
							product.Quantity = cartProduct.Quantity;
							products.Add(product);
						}
					}

					return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
				}
				return new GeneralResponse<List<Product>> { Message = "User not authenticated", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving cart products", IsSuccess = false, Data = null };
			}
		}

		// Método para aumentar la cantidad de un producto en el carrito
		// Método para aumentar la cantidad de un producto en el carrito del usuario
		public async Task IncreaseCartItemQuantity(int productId, int quantityToAdd)
		{
			try
			{
				var auth = await GetUserAsync();

				if (auth != null)
				{
					_sqlConnection.BeginTransaction();

					// Buscar el producto en el carrito del usuario actual
					var cartProduct = _sqlConnection.Table<CartProduct>()
													.FirstOrDefault(cp => cp.UserEmail == auth.User.Email && cp.ProductId == productId);

					if (cartProduct != null)
					{
						cartProduct.Quantity += quantityToAdd;
						_sqlConnection.Update(cartProduct);
						_sqlConnection.Commit();
					}
					else
					{
						_sqlConnection.Rollback();
						// Manejar el caso donde el producto no se encuentra en el carrito
						// throw new Exception("Cart product not found");
					}
				}
				//return new GeneralResponse<CartProduct> { Message = "User not authenticated", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				// Manejar cualquier error y revertir la transacción si ocurre un problema
				// throw new Exception("Error: " + ex.Message);
			}
		}


		// Método para disminuir la cantidad de un producto en el carrito
		// Método para disminuir la cantidad de un producto en el carrito del usuario
		public async Task DecreaseCartItemQuantity(int productId, int quantityToSubtract)
		{
			try
			{
				var auth =  await GetUserAsync();

				if (auth != null)
				{
					_sqlConnection.BeginTransaction();

					// Buscar el producto en el carrito del usuario actual
					var cartProduct = _sqlConnection.Table<CartProduct>()
													.FirstOrDefault(cp => cp.UserEmail == auth.User.Email && cp.ProductId == productId);

					if (cartProduct != null)
					{
						if (cartProduct.Quantity > quantityToSubtract)
						{
							cartProduct.Quantity -= quantityToSubtract;
							_sqlConnection.Update(cartProduct);
							_sqlConnection.Commit();
						}
						else if (cartProduct.Quantity == quantityToSubtract)
						{
							_sqlConnection.Delete(cartProduct);
							_sqlConnection.Commit();
						}
						else
						{
							_sqlConnection.Rollback();
							// Manejar el caso donde la cantidad no puede disminuir por debajo de 0
							// throw new Exception("Cannot decrease quantity below 0");
						}
					}
					else
					{
						_sqlConnection.Rollback();
						// Manejar el caso donde el producto no se encuentra en el carrito
						// throw new Exception("Cart product not found");
					}
				}
				//return new GeneralResponse<CartProduct> { Message = "User not authenticated", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				// Manejar cualquier error y revertir la transacción si ocurre un problema
				// throw new Exception("Error: " + ex.Message);
			}
		}

		// Método para eliminar un producto del carrito del usuario
		public async Task<GeneralResponse<CartProduct>> RemoveCartItem(int productId)
		{
			try
			{
				var auth = await GetUserAsync();

				if (auth != null)
				{
					_sqlConnection.BeginTransaction();

					// Verificar si el producto existe en el carrito del usuario actual
					var existingCartItem = _sqlConnection.Table<CartProduct>()
														 .FirstOrDefault(cp => cp.UserEmail == auth.User.Email && cp.ProductId == productId);

					if (existingCartItem != null)
					{
						// Si el producto está en el carrito, eliminarlo
						_sqlConnection.Delete(existingCartItem);
						_sqlConnection.Commit();
						return new GeneralResponse<CartProduct> { Message = "Product removed successfully", IsSuccess = true, Data = null };
					}
					else
					{
						_sqlConnection.Rollback();
						return new GeneralResponse<CartProduct> { Message = "Product not found in cart", IsSuccess = false, Data = null };
					}
				}
				return new GeneralResponse<CartProduct> { Message = "User not authenticated", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}


		// Método para eliminar todos los productos del carrito del usuario
		public async Task<GeneralResponse<CartProduct>> RemoveAllCartItem()
		{
			try
			{
				var auth = await GetUserAsync();

				if (auth != null)
				{
					_sqlConnection.BeginTransaction();

					// Obtener todos los productos en el carrito del usuario actual
					var existingCartItems = _sqlConnection.Table<CartProduct>()
														 .Where(cp => cp.UserEmail == auth.User.Email)
														 .ToList();

					if (existingCartItems.Any())
					{
						// Eliminar cada producto individualmente
						foreach (var cartItem in existingCartItems)
						{
							_sqlConnection.Delete(cartItem);
						}

						// Confirmar la transacción
						_sqlConnection.Commit();

						return new GeneralResponse<CartProduct> { Message = "All products removed successfully", IsSuccess = true, Data = null };
					}
					else
					{
						// No hay productos en el carrito para eliminar
						_sqlConnection.Rollback();
						return new GeneralResponse<CartProduct> { Message = "No products found in cart", IsSuccess = false, Data = null };
					}
				}
				return new GeneralResponse<CartProduct> { Message = "User not authenticated", IsSuccess = false, Data = null };
			}
			catch (Exception ex)
			{
				// Manejar cualquier error y revertir la transacción si ocurre un problema
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
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
