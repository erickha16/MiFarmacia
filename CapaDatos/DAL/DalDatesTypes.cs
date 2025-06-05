using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalDatesTypes
    {
        // Método para listar todos los tipos de cita
        public static List<DatesTypesVO> GetDatesTypes()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("DatesTypes_Listar");
                List<DatesTypesVO> list = new List<DatesTypesVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new DatesTypesVO(dr));
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
