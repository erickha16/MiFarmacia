using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllDatesTypes
    {
        // Método para obtener todos los tipos de cita
        public static List<DatesTypesVO> GetListDatesTypes()
        {
            try
            {
                return DalDatesTypes.GetDatesTypes();
            }
            catch
            {
                throw;
            }
        }
    }
}
