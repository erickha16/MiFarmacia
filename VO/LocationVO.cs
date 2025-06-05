using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class LocationsVO
    {
        // Atributos + Propiedades
        public int Id { get; set; }
        public string Name { get; set; }
        public int AddressID { get; set; }

        // Datos de la tabla Addresses (por el JOIN)
        public string Street { get; set; }
        public string Colony { get; set; }
        public string Number { get; set; }
        public string CP { get; set; }
        public string LatLang { get; set; }

        //---------------------------------- Constructores ------------------------------------------------

        public LocationsVO()
        {
            Id = 0;
            Name = string.Empty;
            AddressID = 0;
            Street = string.Empty;
            Colony = string.Empty;
            Number = string.Empty;
            CP = string.Empty;
            LatLang = string.Empty;
        }

        public LocationsVO(DataRow dr)
        {
            Id = int.Parse(dr["LocationID"].ToString());
            Name = dr["Name"].ToString();
            AddressID = int.Parse(dr["AddressID"].ToString());

            // Campos de la tabla Addresses
            Street = dr.Table.Columns.Contains("Street") ? dr["Street"].ToString() : string.Empty;
            Colony = dr.Table.Columns.Contains("Colony") ? dr["Colony"].ToString() : string.Empty;
            Number = dr.Table.Columns.Contains("Number") ? dr["Number"].ToString() : string.Empty;
            CP = dr.Table.Columns.Contains("CP") ? dr["CP"].ToString() : string.Empty;
            LatLang = dr.Table.Columns.Contains("LatLang") ? dr["LatLang"].ToString() : string.Empty;
        }
    }
}
