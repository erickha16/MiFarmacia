using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalAddresses
    {
        // Listar direcciones por CustomerID
        public static List<AddressesVO> ListAddresses()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Addresses_Listar");
                List<AddressesVO> list = new List<AddressesVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new AddressesVO(dr));
                }

                return list;
            }
            catch
            {
                throw;
            }
        }

        // Obtener dirección por ID
        public static AddressesVO GetAddressById(int addressId)
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Addresses_ObtenerPorId", "@AddressID", addressId);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new AddressesVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new AddressesVO();
                }
            }
            catch
            {
                throw;
            }
        }

        // Insertar dirección
        public static void InsertAddress(string street, string number, string colony, string postalCode, string LatLang)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Addresses_Insertar",
                    "@Street", street,
                    "@Colony", colony,
                    "@Number", number,
                    "@CP", postalCode,
                    "@LatLang", LatLang);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar dirección
        public static void UpdateAddress(int addressId, string street, string number, string colony, string postalCode, string LatLang)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Addresses_Editar",
                    "@AddressID", addressId,
                    "@Street", street,
                    "@Colony", colony,
                    "@Number", number,
                    "@CP", postalCode,
                    "@LatLang", LatLang);
            }
            catch
            {
                throw;
            }
        }

        // Eliminar dirección
        public static void DeleteAddress(int addressId)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Addresses_Eliminar", "@AddressID", addressId);
            }
            catch
            {
                throw;
            }
        }
    }
}
