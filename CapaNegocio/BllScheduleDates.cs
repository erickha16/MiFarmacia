using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllScheduleDates
    {
        // Listar todas las citas agendadas
        // Listar todas las citas
        public static List<ScheduleDatesVO> GetListScheduleDates()
        {
            try
            {
                return DalScheduleDates.GetListScheduleDates();
            }
            catch
            {
                throw;
            }
        }

        // Obtener cita por ID
        public static ScheduleDatesVO GetById(int paramScheduleDateID)
        {
            try
            {
                return DalScheduleDates.GetById(paramScheduleDateID);
            }
            catch
            {
                throw;
            }
        }

        // Insertar nueva cita
        public static void InsScheduleDate(int paramDateTypeID, int paramFatherAge, int paramMotherAge, string paramEmail, DateTime paramDate, string paramSchedule, string paramComment, int paramLocationID)
        {
            try
            {
                DalScheduleDates.Insert(paramDateTypeID, paramFatherAge, paramMotherAge, paramEmail, paramDate, paramSchedule, paramComment, paramLocationID);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar cita existente
        public static string UpdScheduleDate(int paramScheduleDateID, int paramDateTypeID, int paramFatherAge, int paramMotherAge, string paramEmail, DateTime paramDate, string paramSchedule, string paramComment, int paramLocationID)
        {
            try
            {
                DalScheduleDates.Update(paramScheduleDateID, paramDateTypeID, paramFatherAge, paramMotherAge, paramEmail, paramDate, paramSchedule, paramComment, paramLocationID);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Eliminar cita
        public static string DelScheduleDate(int paramScheduleDateID)
        {
            try
            {
                DalScheduleDates.Delete(paramScheduleDateID);
                return "1";
            }
            catch
            {
                return "0";
            }
        }
    }

}
