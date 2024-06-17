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
    public class BrandTagDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public BrandTagDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		public GeneralResponse<BrandTag> AddBrandTag(BrandTag brandTag)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                int result = _sqlConnection.Insert(brandTag);

                if (result > 0)
                {
                    _sqlConnection.Commit();
                    var response = new GeneralResponse<BrandTag> { Message = "Success", IsSuccess = true, Data = null };
                    return response;
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<BrandTag> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
                }
            }
            catch (SQLiteException ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<BrandTag> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<BrandTag> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }


		// Método en el repositorio de marcas para obtener marcas por etiqueta
		public GeneralResponse<List<Brand>> GetBrandsByTag(string tagName)
		{
			try
			{

				var brandTags = _sqlConnection.Table<BrandTag>().ToList();
				foreach (var bt in brandTags)
				{
					Console.WriteLine($"BrandTagId: {bt.BrandTagId}, BrandId: {bt.BrandId}, TagId: {bt.TagId}");
				}

				if (string.IsNullOrEmpty(tagName))
				{
					return new GeneralResponse<List<Brand>> { Message = "Invalid tag", IsSuccess = false, Data = null };
				}

				// Obtener la etiqueta correspondiente
				var tag = _sqlConnection.Table<Tag>().FirstOrDefault(x => x.Name == tagName);
				if (tag == null)
				{
					return new GeneralResponse<List<Brand>> { Message = "Tag not found", IsSuccess = false, Data = null };
				}

				// Log para verificar el TagId
				Console.WriteLine($"TagId encontrado: {tag.Id}");

				// Obtener las marcas relacionadas con la etiqueta
				var brands = _sqlConnection.Table<Brand>()
					.Join(
						_sqlConnection.Table<BrandTag>(),
						b => b.Id,
						bt => bt.BrandId,
						(b, bt) => new { Brand = b, BrandTag = bt }
					)
					.Where(x => x.BrandTag.TagId == tag.Id)
					.Select(x => x.Brand)
					.Distinct()
					.ToList();

				// Log para verificar la cantidad de marcas encontradas
				Console.WriteLine($"Cantidad de marcas encontradas para el TagId {tag.Id}: {brands.Count}");

				return new GeneralResponse<List<Brand>> { Message = "Success", IsSuccess = true, Data = brands };
			}
			catch (Exception ex)
			{
				// Loguear la excepción para fines de depuración sin exponer detalles sensibles
				Console.WriteLine(ex.Message);
				return new GeneralResponse<List<Brand>> { Message = "An error occurred while retrieving brands by tag", IsSuccess = false, Data = null };
			}
		}



		public GeneralResponse<bool> DeleteAllBrandTags()
		{
			try
			{
				_sqlConnection.BeginTransaction();
				int result = _sqlConnection.DeleteAll<BrandTag>();

				if (result > 0)
				{
					_sqlConnection.Commit();
					return new GeneralResponse<bool> { Message = "Success", IsSuccess = true, Data = true };
				}
				else
				{
					_sqlConnection.Rollback();
					return new GeneralResponse<bool> { Message = "No brand tags found to delete", IsSuccess = false, Data = false };
				}
			}
			catch (Exception ex)
			{
				_sqlConnection.Rollback();
				return new GeneralResponse<bool> { Message = "Error: " + ex.Message, IsSuccess = false, Data = false };
			}
		}

	}
}
