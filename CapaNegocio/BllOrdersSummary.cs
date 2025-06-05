using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllOrdersSummary
    {
        // Obtener listado del resumen de órdenes
        public static List<OrdersSummaryVO> GetOrdersSummary()
        {
            try
            {
                return DalOrdersSummary.GetOrdersSummary();
            }
            catch
            {
                throw;
            }
        }
    }
}
