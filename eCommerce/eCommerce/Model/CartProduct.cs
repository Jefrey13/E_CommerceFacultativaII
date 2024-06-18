using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Model
{
	public class CartProduct
	{ 

		[PrimaryKey, AutoIncrement]
		public int Id { get; set; }  // Clave primaria de la tabla intermedia

		public int CartId { get; set; }  // Clave foránea a CartModel

		public int ProductId { get; set; }  // Clave foránea a Product
		public int Quantity { get; set; }  // Cantidad del producto en el carrito

	}
}
