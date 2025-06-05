using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalScheduleDates
    {
        // Listar todas las citas agendadas
        // Listar todas las citas
        public static List<ScheduleDatesVO> GetListScheduleDates()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("ScheduleDates_Listar");
                List<ScheduleDatesVO> list = new List<ScheduleDatesVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    // Validar columnas antes de crear el objeto VO
                    if (dr != null)
                    {
                        list.Add(new ScheduleDatesVO(dr));
                    }
                }

                return list;
            }
            catch
            {
                throw;
            }
        }

        // Obtener cita por ID
        public static ScheduleDatesVO GetById(int id)
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("ScheduleDates_ObtenerPorId", "@ScheduleDateID", id);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new ScheduleDatesVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new ScheduleDatesVO();
                }
            }
            catch
            {
                throw;
            }
        }

        // Insertar nueva cita
        public static void Insert(int dateTypeID, int fatherAge, int motherAge, string email, DateTime date, string schedule, string comment, int locationID)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("ScheduleDates_Insertar",
                    "@DateTypeID", dateTypeID,
                    "@FatherAge", fatherAge,
                    "@MotherAge", motherAge,
                    "@Email", email,
                    "@Date", date,
                    "@Schedule", schedule,
                    "@Comment", comment,
                    "@LocationID", locationID
                );
            }
            catch
            {
                throw;
            }
        }

        // Editar cita
        public static void Update(int id, int? dateTypeID, int? fatherAge, int? motherAge, string email, DateTime? date, string schedule, string comment, int? locationID)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("ScheduleDates_Editar",
                    "@ScheduleDateID", id,
                    "@DateTypeID", dateTypeID,
                    "@FatherAge", fatherAge,
                    "@MotherAge", motherAge,
                    "@Email", email,
                    "@Date", date,
                    "@Schedule", schedule,
                    "@Comment", comment,
                    "@LocationID", locationID
                );
            }
            catch
            {
                throw;
            }
        }

        // Eliminar cita
        public static void Delete(int id)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("ScheduleDates_Eliminar", "@ScheduleDateID", id);
            }
            catch
            {
                throw;
            }
        }
    }
}
