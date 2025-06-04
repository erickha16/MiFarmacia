using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalAdmins
    {
        // Listar todos los administradores
        public static List<AdminsVO> GetListAdmins()
        {
            try
            {
                DataSet dsAdmins = MetodoDatos.ExecuteDataSet("Admins_Listar");
                List<AdminsVO> lista = new List<AdminsVO>();
                foreach (DataRow dr in dsAdmins.Tables[0].Rows)
                {
                    lista.Add(new AdminsVO(dr));
                }

                return lista;
            }
            catch (Exception)
            {
                throw;
            }
        }

        // Insertar administrador
        public static void InsertAdmin(string paramUserName, string paramPassword)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Admins_Insertar",
                    "@UserName", paramUserName,
                    "@Password", paramPassword);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar administrador
        public static void UpdateAdmin(int paramAdminID, string paramUserName, string paramPassword)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Admins_Editar",
                    "@AdminID", paramAdminID,
                    "@UserName", paramUserName,
                    "@Password", paramPassword);
            }
            catch
            {
                throw;
            }
        }

        // Eliminar administrador
        public static void DeleteAdmin(int paramAdminID)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Admins_Eliminar",
                    "@AdminID", paramAdminID);
            }
            catch
            {
                throw;
            }
        }

        // Obtener administrador por ID
        public static AdminsVO GetAdminById(int paramAdminID)
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Admins_ObtenerPorId", "@AdminID", paramAdminID);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new AdminsVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new AdminsVO(); // Vacío
                }
            }
            catch
            {
                throw;
            }
        }
    }
}
