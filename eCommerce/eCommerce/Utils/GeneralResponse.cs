using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Utils
{
	//Clase generica
	public class GeneralResponse<T>
	{
        public string Message { get; set; }
        public bool  IsSuccess { get; set; }

		// T as private member data type.
		public T Data { get; set; }
		public int Quantity { get; set; }
	}
}
