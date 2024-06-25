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
	public class CartDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;

		public CartDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		// Método para guardar un producto en el carrito del usuario
		// Método para guardar un producto en el carrito
		public GeneralResponse<CartProduct> AddCartItem(int productId, int quantity)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Verificar si el producto ya existe en el carrito
				var existingCartItem = _sqlConnection.Table<CartProduct>()
													 .FirstOrDefault(cp => cp.CartId == 1 && cp.ProductId == productId);

				if (existingCartItem != null)
				{
					// Si el producto ya está en el carrito, actualizar la cantidad
					existingCartItem.Quantity += quantity;
					_sqlConnection.Update(existingCartItem);
				}
				else
				{
					// Si el producto no está en el carrito, agregar uno nuevo
					var newCartItem = new CartProduct
					{
						CartId = 1,
						ProductId = productId,
						Quantity = quantity
					};

					_sqlConnection.Insert(newCartItem);
				}

				_sqlConnection.Commit();

				return new GeneralResponse<CartProduct> { Message = "Success", IsSuccess = true, Data = null };
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}


		// Método para obtener todos los productos en el carrito
		public GeneralResponse<List<Product>> GetCartProducts()
		{
			try
			{
				// Obtener todos los productos asociados al carrito con ID 1
				var cartProducts = _sqlConnection.Table<CartProduct>()
												 .Where(cp => cp.CartId == 1)
												 .ToList();

				var products = new List<Product>();

				foreach (var cartProduct in cartProducts)
				{
					// Obtener el producto desde la tabla Product
					var product = _sqlConnection.Table<Product>()
												.FirstOrDefault(p => p.Id == cartProduct.ProductId);

					// Actualizar la cantidad del producto en la lista
					product.Quantity = cartProduct.Quantity; // Actualizar la cantidad del producto en el contexto del carrito
					products.Add(product);
				}

				return new GeneralResponse<List<Product>> { Message = "Success", IsSuccess = true, Data = products };
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Product>> { Message = "An error occurred while retrieving cart products", IsSuccess = false, Data = null };
			}
		}



		// Método para aumentar la cantidad de un producto en el carrito
		public void IncreaseCartItemQuantity(int productId, int quantityToAdd)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Buscar el producto en el carrito con ID 1
				var cartProduct = _sqlConnection.Table<CartProduct>()
												.FirstOrDefault(cp => cp.ProductId == productId);

				if (cartProduct != null)
				{
					cartProduct.Quantity += quantityToAdd;
					_sqlConnection.Update(cartProduct);
					_sqlConnection.Commit();

					//return new GeneralResponse<CartProduct> { Message = "Success", IsSuccess = true, Data = cartProduct };
				}
				else
				{
					_sqlConnection.Rollback();
					//return new GeneralResponse<CartProduct> { Message = "Cart product not found", IsSuccess = false, Data = null };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				//return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

		// Método para disminuir la cantidad de un producto en el carrito
		public void DecreaseCartItemQuantity(int productId, int quantityToSubtract)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Buscar el producto en el carrito con ID 1
				var cartProduct = _sqlConnection.Table<CartProduct>()
												.FirstOrDefault(cp => cp.CartId == 1 && cp.ProductId == productId);

				if (cartProduct != null)
				{
					if (cartProduct.Quantity > quantityToSubtract)
					{
						if(cartProduct.Quantity > 1)
						{
							cartProduct.Quantity -= quantityToSubtract;
							_sqlConnection.Update(cartProduct);
							_sqlConnection.Commit();
						}

						//return new GeneralResponse<CartProduct> { Message = "Success", IsSuccess = true, Data = cartProduct };
					}
					else if (cartProduct.Quantity == quantityToSubtract)
					{
						_sqlConnection.Delete(cartProduct);
						_sqlConnection.Commit();

						//return new GeneralResponse<CartProduct> { Message = "Success", IsSuccess = true, Data = null };
					}
					else
					{
						_sqlConnection.Rollback();
						//return new GeneralResponse<CartProduct> { Message = "Cannot decrease quantity below 0", IsSuccess = false, Data = null };
					}
				}
				else
				{
					_sqlConnection.Rollback();
					//return new GeneralResponse<CartProduct> { Message = "Cart product not found", IsSuccess = false, Data = null };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				//return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}
		public GeneralResponse<CartProduct> RemoveCartItem(int productId)
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Verificar si el producto existe en el carrito
				var existingCartItem = _sqlConnection.Table<CartProduct>()
													 .FirstOrDefault(cp => cp.CartId == 1 && cp.ProductId == productId);

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
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

		public GeneralResponse<CartProduct> RemoveAllCartItem()
		{
			try
			{
				_sqlConnection.BeginTransaction();

				// Obtener todos los productos en el carrito
				var existingCartItems = _sqlConnection.Table<CartProduct>().ToList();

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
			catch (Exception ex)
			{
				// Manejar cualquier error y revertir la transacción si ocurre un problema
				_sqlConnection.Rollback();
				return new GeneralResponse<CartProduct> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
			}
		}

	}
}
