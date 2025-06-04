using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    internal class AddressesVO
    {
        public int Id { get; set; }
        public string Street { get; set; }
        public string Colony { get; set; }
        public string Number { get; set; }
        public string CP { get; set; }
        public string LatLang { get; set; }

        // Constructor por defecto
        public AddressesVO()
        {
            Id = 0;
            Street = string.Empty;
            Colony = string.Empty;
            Number = string.Empty;
            CP = string.Empty;
            LatLang = string.Empty;
        }

        // Constructor que recibe un DataRow
        public AddressesVO(DataRow dr)
        {
            Id = int.Parse(dr["AddressID"].ToString());
            Street = dr["Street"].ToString();
            Colony = dr["Colony"].ToString();
            Number = dr["Number"].ToString();
            CP = dr["CP"].ToString();
            LatLang = dr["LatLang"].ToString();
        }
    }
}
