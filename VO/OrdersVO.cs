using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class OrdersVO
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public string CustomerEmail { get; set; }

        public string CustomerPhone { get; set; }
        public DateTime OrderDate { get; set; }
        public decimal TotalAmount { get; set; }

        // Constructor por defecto
        public OrdersVO()
        {
            Id = 0;
            CustomerId = 0;
            CustomerEmail = string.Empty;
            CustomerPhone = string.Empty;
            OrderDate = DateTime.MinValue;
            TotalAmount = 0;
        }

        // Constructor con DataRow
        public OrdersVO(DataRow dr)
        {
            Id = int.Parse(dr["OrderID"].ToString());
            CustomerId = int.Parse(dr["CustomerID"].ToString());
            OrderDate = DateTime.Parse(dr["OrderDate"].ToString());
            TotalAmount = decimal.Parse(dr["TotalAmount"].ToString());

            // Campo adicional si viene de un JOIN
            CustomerEmail = dr.Table.Columns.Contains("Email") ? dr["Email"].ToString() : string.Empty;
            CustomerPhone = dr.Table.Columns.Contains("Phone") ? dr["Phone"].ToString() : string.Empty;

        }
    }
}
