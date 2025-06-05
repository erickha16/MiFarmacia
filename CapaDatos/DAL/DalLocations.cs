using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalLocations
    {
        // Listar todas las sucursales
        public static List<LocationsVO> GetListLocations()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Locations_Listar");
                List<LocationsVO> list = new List<LocationsVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new LocationsVO(dr));
                }

                return list;
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
                DataSet ds = MetodoDatos.ExecuteDataSet("Locations_ObtenerPorId", "@LocationID", locationId);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new LocationsVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new LocationsVO(); // Vacío
                }
            }
            catch
            {
                throw;
            }
        }

        // Insertar nueva sucursal
        public static void InsertLocation(string name, int addressId)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Locations_Insertar",
                    "@Name", name,
                    "@AddressID", addressId);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar sucursal
        public static void UpdateLocation(int locationId, string name, int addressId, string street, string colony, string number, string cp, string latLang)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Locations_Editar",
                    "@LocationID", locationId,
                    "@Name", name,
                    "@AddressID", addressId,
                    "@Street", street,
                    "@Colony", colony,
                    "@Number", number,
                    "@CP", cp,
                    "@LatLang", latLang);
            }
            catch
            {
                throw;
            }
        }


        // Eliminar sucursal
        public static void DeleteLocation(int locationId)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Locations_Eliminar", "@LocationID", locationId);
            }
            catch
            {
                throw;
            }
        }

        // Insertar una sucursal junto con su dirección
        public static void InsertFullLocation(
            string locationName,
            string street,
            string colony,
            string number,
            string cp,
            string latLang = null)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Locations_InsertarCompleta",
                    "@Name", locationName,
                    "@Street", street,
                    "@Colony", colony,
                    "@Number", number,
                    "@CP", cp,
                    "@LatLang", latLang ?? (object)DBNull.Value
                );
            }
            catch
            {
                throw;
            }
        }
    }
}
