using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalOrdersSummary
    {
        // Obtener listado del resumen de órdenes
        public static List<OrdersSummaryVO> GetOrdersSummary()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("vw_OrdersSummary_Listar");
                List<OrdersSummaryVO> list = new List<OrdersSummaryVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new OrdersSummaryVO(dr));
                }

                return list;
            }
            catch
            {
                throw;
            }
        }
    }
}
