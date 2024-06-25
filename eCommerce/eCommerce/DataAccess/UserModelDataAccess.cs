using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Views.AccessApp;
using Firebase.Auth;
using Newtonsoft.Json;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace eCommerce.DataAccess
{
	public class UserModelDataAccess
	{
		private readonly SQLiteConnection _sqlConnection;
		public UserModelDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
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
				// Handle possible errors, such as if the key does not exist
				Console.WriteLine("Error retrieving token: " + ex.Message);
				return null;
			}
		}

		public async Task<UserModel> GetUserAsync()
		{
			try
			{
				var token = await GetTokenAsync();
				if (!string.IsNullOrEmpty(token))
				{
					var auth = JsonConvert.DeserializeObject<FirebaseAuth>(token);
					if (auth != null)
					{
						// Assuming UserModel has properties like Email, FullName, and Age
						UserModel user = new UserModel
						{
							EmailField = auth.User.Email,
							NamesField = auth.User.FirstName + auth.User.LastName,
							NumberField = auth.User.PhoneNumber
							
							
							//AgeField = Convert.ToInt32(auth.User.)
							// Add other properties if needed
						};
						return user;
					}
				}
				return null;
			}
			catch (Exception ex)
			{
				// Handle exceptions
				Console.WriteLine("Error getting user: " + ex.Message);
				return null;
			}
		}

	}
}
