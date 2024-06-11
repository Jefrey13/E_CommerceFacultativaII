using SQLite;
using System.ComponentModel.DataAnnotations;

namespace eCommerce.Model
{
   public class Category
   {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Name { get; set; }
		public string Image { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Link { get; set; }
        public bool Status { get; set; }
    }
}