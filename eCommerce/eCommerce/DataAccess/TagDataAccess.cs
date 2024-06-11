using eCommerce.Data;
using eCommerce.Model;
using eCommerce.Utils;
using eCommerce.Views;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;

namespace eCommerce.DataAccess
{
    public class TagDataAccess
    {
		private readonly SQLiteConnection _sqlConnection;
		public TagDataAccess()
		{
			_sqlConnection = DatabaseConfiguration.GetDatabaseConnection();
		}

		// CRUD Tag
		public GeneralResponse<List<Tag>> GetTags()
        {
            try
            {
                var tags = _sqlConnection.Table<Tag>().ToList();
                return new GeneralResponse<List<Tag>> { Message = "Success", IsSuccess = true, Data = tags };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Tag>> { Message = "An error occurred while retrieving tags", IsSuccess = false, Data = null };
            }
        }

        public GeneralResponse<Tag> GetTagById(int id)
        {
            try
            {
                if (id <= 0)
                {
                    return new GeneralResponse<Tag> { Message = "Invalid tag ID", IsSuccess = false, Data = null };
                }

                var tag = _sqlConnection.Find<Tag>(id);
                if (tag != null)
                {
                    return new GeneralResponse<Tag> { Message = "Success", IsSuccess = true, Data = tag };
                }
                else
                {
                    return new GeneralResponse<Tag> { Message = "Tag not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<Tag> { Message = "An error occurred while retrieving the tag", IsSuccess = false, Data = null };
            }
        }

        public GeneralResponse<Tag> AddTag(Tag tag)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var result = _sqlConnection.Insert(tag);

                if (result > 0)
                {
                    _sqlConnection.Commit();
                    var response = new GeneralResponse<Tag> { Message = "Success", IsSuccess = true, Data = tag };
                    return response;
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Tag> { Message = "Error: No rows affected", IsSuccess = false, Data = null };
                }
            }
            catch (SQLiteException ex)
            {
                _sqlConnection.Rollback();
                var response = new GeneralResponse<Tag> { Message = "SQLite Error: " + ex.Message, IsSuccess = false, Data = null };
                return response;
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Tag> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }


        public GeneralResponse<Tag> UpdateTag(Tag tag)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var tagUpdated = _sqlConnection.Find<Tag>(tag.Id);
                if (tagUpdated != null)
                {
                    int result = _sqlConnection.Update(tag);
                    _sqlConnection.Commit();
                    return new GeneralResponse<Tag> { Message = "Success", IsSuccess = true, Data = null };
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Tag> { Message = "Tag not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                return new GeneralResponse<Tag> { Message = "Error: " + ex.Message, IsSuccess = false, Data = null };
            }
        }

        public GeneralResponse<Tag> DeleteTag(Tag tag)
        {
            try
            {
                _sqlConnection.BeginTransaction();
                var tagToDelete = _sqlConnection.Find<Tag>(tag.Id);
                if (tagToDelete != null)
                {
                    int result = _sqlConnection.Delete(tagToDelete);
                    _sqlConnection.Commit();
                    return new GeneralResponse<Tag> { Message = "Success", IsSuccess = true, Data = null };
                }
                else
                {
                    _sqlConnection.Rollback();
                    return new GeneralResponse<Tag> { Message = "Tag not found", IsSuccess = false, Data = null };
                }
            }
            catch (Exception ex)
            {
                _sqlConnection.Rollback();
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<Tag> { Message = "An error occurred while deleting the tag", IsSuccess = false, Data = null };
            }
        }
        public GeneralResponse<List<Brand>> GetBrandsByTag(int tagId)
        {
            try
            {
                if (tagId <= 0)
                {
                    return new GeneralResponse<List<Brand>> { Message = "Invalid tag ID", IsSuccess = false, Data = null };
                }

                var brands = _sqlConnection.Table<Brand>()
                .Join(
                        _sqlConnection.Table<BrandTag>(),
                        b => b.Id,
                        bt => bt.BrandId,
                        (b, bt) => new { Brand = b, BrandTag = bt }
                    )
                    .Where(x => x.BrandTag.TagId == tagId)
                    .Select(x => x.Brand)
                    .ToList();

                return new GeneralResponse<List<Brand>> { Message = "Success", IsSuccess = true, Data = brands };
            }
            catch (Exception ex)
            {
                // Loguear la excepción para fines de depuración sin exponer detalles sensibles
                Console.WriteLine(ex.Message);
                return new GeneralResponse<List<Brand>> { Message = "An error occurred while retrieving brands by tag", IsSuccess = false, Data = null };
            }
        }
    }
}