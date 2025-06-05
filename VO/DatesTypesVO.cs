using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class DatesTypesVO
    {
        // Propiedades
        public int Id { get; set; }
        public string Name { get; set; }

        // Constructor vacío
        public DatesTypesVO()
        {
            Id = 0;
            Name = string.Empty;
        }

        // Constructor que recibe un DataRow
        public DatesTypesVO(DataRow dr)
        {
            Id = int.Parse(dr["DateTypeID"].ToString());
            Name = dr["Name"].ToString();
        }
    }
}
