using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace eCommerce.Model
{
    public class FeaturedBrands
    {

		[Required]
		[DataType(DataType.Url)]
		public string ImageUrl { get; set; }
		[Required, MaxLength(60)]
		public string brand { get; set; }
		[Required, MaxLength(200)]
		public string details { get; set; }

        
    }
}
