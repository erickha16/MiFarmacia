using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class CustomersVO
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public int AddressId { get; set; }

        // Datos extendidos de dirección (para consultas que incluyan joins)
        public string Street { get; set; }
        public string Colony { get; set; }

        public string Number { get; set; }
        public string CP { get; set; }
        // Constructor por defecto
        public CustomersVO()
        {
            Id = 0;
            Email = string.Empty;
            Phone = string.Empty;
            AddressId = 0;
            Street = string.Empty;
            Colony = string.Empty;
            Number = string.Empty;
            CP = string.Empty;

        }

        // Constructor con DataRow
        public CustomersVO(DataRow dr)
        {
            Id = int.Parse(dr["CustomerID"].ToString());
            Email = dr["Email"].ToString();
            Phone = dr["Phone"].ToString();
            AddressId = dr["AddressID"] != DBNull.Value ? int.Parse(dr["AddressID"].ToString()) : 0;

            // Campos extendidos, opcionales según el procedimiento almacenado
            Street = dr.Table.Columns.Contains("Street") ? dr["Street"].ToString() : string.Empty;
            Colony = dr.Table.Columns.Contains("Colony") ? dr["Colony"].ToString() : string.Empty;
            Number = dr.Table.Columns.Contains("Number") ? dr["Number"].ToString() : string.Empty;
            CP = dr.Table.Columns.Contains("CP") ? dr["CP"].ToString() : string.Empty;
        }
    }
}
