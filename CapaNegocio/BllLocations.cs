using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllLocations
    {
        // Listar todas las sucursales (Locations)
        public static List<LocationsVO> GetListLocations()
        {
            try
            {
                return DalLocations.GetListLocations();
            }
            catch
            {
                throw;
            }
        }

        // Obtener sucursal por ID
        public static LocationsVO GetLocationById(int locationId)
        {
            try
            {
                return DalLocations.GetLocationById(locationId);
            }
            catch
            {
                throw;
            }
        }

        // Insertar sucursal (usando AddressID existente)
        public static void InsertLocation(string name, int addressId)
        {
            try
            {
                DalLocations.InsertLocation(name, addressId);
            }
            catch
            {
                throw;
            }
        }

        // Insertar sucursal y dirección al mismo tiempo
        public static void InsertLocationWithAddress(string name, string street, string number, string colony, string cp, string latLang)
        {
            try
            {
                DalLocations.InsertFullLocation(name, street, colony, number, cp, latLang);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar sucursal 
        public static string UpdateLocation(int locationId, string name, int addressId, string street, string colony, string number, string cp, string latLang)
        {
            try
            {
                DalLocations.UpdateLocation(locationId, name, addressId, street, colony, number, cp, latLang);
                return "1"; // éxito
            }
            catch
            {
                return "0"; // error
            }
        }


        // Eliminar sucursal
        public static string DeleteLocation(int id)
        {
            try
            {
                DalLocations.DeleteLocation(id);
                return "1";
            }
            catch
            {
                return "0";
            }
        }
    }
}
