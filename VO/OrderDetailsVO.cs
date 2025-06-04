using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class OrderDetailsVO
    {
        // Atributos + Propiedades
        public int OrderDetailID { get; set; }
        public int OrderID { get; set; }
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public decimal OrderPrice { get; set; }

        //---------------------------------- Constructores ------------------------------------------------

        public OrderDetailsVO()
        {
            OrderDetailID = 0;
            OrderID = 0;
            ProductID = 0;
            ProductName = string.Empty;
            Quantity = 0;
            OrderPrice = 0;
        }

        public OrderDetailsVO(DataRow dr)
        {
            OrderDetailID = int.Parse(dr["OrderDetailID"].ToString());
            OrderID = int.Parse(dr["OrderID"].ToString());
            ProductID = int.Parse(dr["ProductID"].ToString());
            Quantity = int.Parse(dr["Quantity"].ToString());
            OrderPrice = decimal.Parse(dr["OrderPrice"].ToString());

            // Solo se asigna si viene en la consulta
            ProductName = dr.Table.Columns.Contains("ProductName") ? dr["ProductName"].ToString() : string.Empty;
        }
    }
}
