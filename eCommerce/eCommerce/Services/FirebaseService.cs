using eCommerce.Model;
using Firebase.Database;
using Firebase.Database.Query;
using iTextSharp.text.pdf;
using Plugin.Toast;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace eCommerce.Services
{
	public class FirebaseService
	{
		private FirebaseClient _firebaseConnection;
		public FirebaseService()
		{
			_firebaseConnection = new FirebaseClient("https://ecommerce-c1b1f-default-rtdb.firebaseio.com/");
		}
		public async Task<List<UserModel>> GetUsersAsync()
		{
			return (await _firebaseConnection.Child("Users")
				.OnceAsync<UserModel>()).Select(item =>
				new UserModel
				{
					NamesField = item.Object.NamesField,
					UserID = item.Object.UserID,
					AgeField = item.Object.AgeField,
				}).ToList();
		}
		public async Task AddUser(UserModel user)
		{
			try
			{
				if (string.IsNullOrEmpty(user.NamesField) || string.IsNullOrEmpty(user.AgeField))
				{
					throw new ArgumentException("NamesField and AgeField cannot be null or empty.");
				}

				var newUser = new UserModel
				{
					UserID = Guid.NewGuid(),
					NamesField = user.NamesField,
					AgeField = user.AgeField,
					EmailField = user.EmailField,
					PasswordField = user.PasswordField
				};

				await _firebaseConnection.Child("users")
					.PostAsync(newUser);

				CrossToastPopUp.Current.ShowCustomToast("User added successfully!", bgColor: "#00C569", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
			}
			catch (ArgumentException argEx)
			{
				CrossToastPopUp.Current.ShowCustomToast("Failed to add user: " + argEx.Message, bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				Console.WriteLine("Argument error adding user to Firebase Database: " + argEx.Message);
			}
			catch (Exception ex)
			{
				CrossToastPopUp.Current.ShowCustomToast("Failed to add user: " + ex.Message, bgColor: "Red", txtColor: "White", Plugin.Toast.Abstractions.ToastLength.Short);
				Console.WriteLine("Error adding user to Firebase Database: " + ex.Message);
			}
		}


		public async Task UpdateUser(UserModel user, string userEmail)
		{
			try
			{
				// Obtiene el usuario a actualizar desde la base de datos de Firebase utilizando el Email
				var toUpdateUser = (await _firebaseConnection.Child("users")
					.OnceAsync<UserModel>())
					.Where(a => a.Object.EmailField == userEmail).FirstOrDefault();

				// Verifica si el usuario existe en la base de datos
				if (toUpdateUser != null)
				{
					try
					{
						// Si el usuario existe, actualiza sus datos en la base de datos de Firebase
						await _firebaseConnection.Child("users")
							.Child(toUpdateUser.Key)
							.PutAsync(user);
						Console.WriteLine("User updated successfully.");
					}
					catch (FirebaseException fbEx)
					{
						// Manejo de excepciones específicas de Firebase
						Console.WriteLine("Failed to update user in Firebase Database: " + fbEx.Message);
					}
					catch (Exception ex)
					{
						// Manejo de excepciones generales
						Console.WriteLine("Failed to update user: " + ex.Message);
					}
				}
				else
				{
					// Si el usuario no se encuentra, imprime un mensaje en la consola
					Console.WriteLine("User not found in Firebase Database.");
				}
			}
			catch (FirebaseException fbEx)
			{
				// Manejo de excepciones específicas de Firebase
				Console.WriteLine("Failed to retrieve user from Firebase Database: " + fbEx.Message);
			}
			catch (Exception ex)
			{
				// Manejo de excepciones generales
				Console.WriteLine("Error retrieving user: " + ex.Message);
			}
		}


		public async Task<UserModel> GetUserByEmailAsync(string email)
		{
			try
			{
				var allUsersSnapshot = await _firebaseConnection
					.Child("users")
					.OnceAsync<UserModel>();

				if (allUsersSnapshot == null)
				{
					Console.WriteLine("No users found in Firebase database.");
					return null;
				}

				// Debug: Imprime los usuarios recuperados para ver qué usuarios se están obteniendo
				foreach (var userSnapshot in allUsersSnapshot)
				{
					var user = userSnapshot.Object;
					if (user != null)
					{
						Console.WriteLine($"User in database: {user.EmailField}");
						if (user.EmailField == email)
						{
							return user;
						}
					}
				}

				Console.WriteLine($"User with email '{email}' not found in Firebase database.");
				return null;
			}
			catch (Firebase.Database.FirebaseException ex)
			{
				// Manejar excepción específica de Firebase Database
				Console.WriteLine($"Firebase Database Exception: {ex.Message}");
				// Puedes manejar o lanzar la excepción según lo necesites
				throw new Exception("Error connecting to Firebase Database", ex);
			}
			catch (Exception ex)
			{
				// Manejar otras excepciones generales
				Console.WriteLine($"Error retrieving user by email '{email}': {ex.Message}");
				throw;
			}
		}


		public async Task<bool> DeleteUserByEmailAsync(string email)
		{
			try
			{
				var toDeleteUser = (await _firebaseConnection.Child("users")
					.OnceAsync<UserModel>())
					.Where(a => a.Object.EmailField == email).FirstOrDefault();

				if (toDeleteUser != null)
				{
					try
					{
						await _firebaseConnection.Child("users")
							.Child(toDeleteUser.Key)
							.DeleteAsync();

						Console.WriteLine("User deleted successfully.");
						return true;
					}
					catch (FirebaseException fbEx)
					{
						Console.WriteLine("Failed to delete user from Firebase Database: " + fbEx.Message);
						return false;
					}
					catch (Exception ex)
					{
						Console.WriteLine("Failed to delete user: " + ex.Message);
						return false;
					}
				}
				else
				{
					Console.WriteLine("User not found in Firebase Database.");
					return false;
				}
			}
			catch (FirebaseException fbEx)
			{
				Console.WriteLine("Failed to retrieve user from Firebase Database: " + fbEx.Message);
				return false;
			}
			catch (Exception ex)
			{
				Console.WriteLine("Error retrieving user: " + ex.Message);
				return false;
			}
		}
	}
}
