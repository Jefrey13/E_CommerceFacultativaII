using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace eCommerce.Model
{
	public class Tag
	{
		[PrimaryKey, AutoIncrement]
		public int Id { get; set; }
		[Required]
		[System.ComponentModel.DataAnnotations.MaxLength(70)]
		public string Name { get; set; }
		[Required]
		[System.ComponentModel.DataAnnotations.MaxLength(200)]
		public string Description { get; set; }

		[DataType(DataType.Date)]
		private DateTime createdAt;
		[DataType(DataType.Date)]
		private DateTime lastUpdatedAt;
		[DataType(DataType.Date)]
		private DateTime delateddAt;

		public DateTime CreateAt
		{
			get { return createdAt; }
			set { createdAt = DateTime.Now; }
		}
		public DateTime LastUpdatedAt
		{
			get { return lastUpdatedAt; }
			set { createdAt = DateTime.Now; }
		}
		public DateTime DeleteAt
		{
			get { return delateddAt; }
			set { delateddAt = DateTime.Now; }
		}
		[Required]
		public bool Status { get; set; } = false;
	}
}