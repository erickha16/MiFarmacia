using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllAddresses
    {
        // Listar todas las direcciones
        public static List<AddressesVO> GetListAddresses()
        {
            try
            {
                return DalAddresses.ListAddresses();
            }
            catch
            {
                throw;
            }
        }

        // Obtener dirección por ID
        public static AddressesVO GetAddressById(int id)
        {
            try
            {
                return DalAddresses.GetAddressById(id);
            }
            catch
            {
                throw;
            }
        }

        // Insertar nueva dirección
        public static void InsertAddress(string street, string number, string colony, string cp, string latLang)
        {
            try
            {
                DalAddresses.InsertAddress(street, number, colony, cp, latLang);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar dirección
        public static string UpdateAddress(int id, string street, string number, string colony, string cp, string latLang)
        {
            try
            {
                DalAddresses.UpdateAddress(id, street, number, colony, cp, latLang);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Eliminar dirección
        public static string DeleteAddress(int id)
        {
            try
            {
                DalAddresses.DeleteAddress(id);
                return "1";
            }
            catch
            {
                return "0";
            }
        }
    }
}
