using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class CategoriesVO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        // Constructor por defecto
        public CategoriesVO()
        {
            Id = 0;
            Name = string.Empty;
            Description = string.Empty;
        }

        // Constructor que recibe un DataRow
        public CategoriesVO(DataRow dr)
        {
            Id = int.Parse(dr["CategoryID"].ToString());
            Name = dr["Name"].ToString();
            Description = dr["Description"].ToString();
        }
    }
}
