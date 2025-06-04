using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllAdmins
    {
        // Listar administradores
        public static List<AdminsVO> GetListAdmins()
        {
            try
            {
                return DalAdmins.GetListAdmins(); ;
            }
            catch
            {
                throw;
            }
        }

        // Insertar administrador
        public static void InsertAdmin(string paramUserName, string paramPassword)
        {
            try
            {
                DalAdmins.InsertAdmin(paramUserName, paramPassword);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar administrador
        public static string UpdateAdmin(int paramAdminID, string paramUserName, string paramPassword)
        {
            try
            {
                DalAdmins.UpdateAdmin(paramAdminID, paramUserName, paramPassword);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Eliminar administrador
        public static string DeleteAdmin(int paramAdminID)
        {
            try
            {
                DalAdmins.DeleteAdmin(paramAdminID);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Obtener administrador por ID
        public static AdminsVO GetAdminById(int paramAdminID)
        {
            try
            {
                return DalAdmins.GetAdminById(paramAdminID);
            }
            catch
            {
                throw;
            }
        }
    }
}
