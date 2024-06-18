using eCommerce.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
	public interface IStripePaymentService1
	{
		Task<bool> PayWithCard(PaymentModel paymentModel);
		string GeneratePaymentToken(CardModel cardModel);
	}
}
