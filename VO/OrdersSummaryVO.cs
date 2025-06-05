using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class OrdersSummaryVO
    {
        public int Id { get; set; }
        public string CustomerEmail { get; set; }
        public DateTime OrderDate { get; set; }
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public decimal OrderPrice { get; set; }
        public decimal SubTotal { get; set; }

        // Constructor vacío
        public OrdersSummaryVO()
        {
            Id = 0;
            CustomerEmail = string.Empty;
            OrderDate = DateTime.MinValue;
            ProductName = string.Empty;
            Quantity = 0;
            OrderPrice = 0;
            SubTotal = 0;
        }

        // Constructor a partir de DataRow
        public OrdersSummaryVO(DataRow dr)
        {
            Id = int.Parse(dr["OrderID"].ToString());
            CustomerEmail = dr["CustomerEmail"].ToString();
            OrderDate = DateTime.Parse(dr["OrderDate"].ToString());
            ProductName = dr["ProductName"].ToString();
            Quantity = int.Parse(dr["Quantity"].ToString());
            OrderPrice = decimal.Parse(dr["OrderPrice"].ToString());
            SubTotal = decimal.Parse(dr["SubTotal"].ToString());
        }
    }
}
