using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class AdminsVO
    {
        // Atributos + Propiedades
        public int Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }

        // ------------------------ Constructores ------------------------

        public AdminsVO(DataRow dr)
        {
            Id = int.Parse(dr["AdminID"].ToString());
            Name = dr["UserName"].ToString();
            Password = dr["Password"].ToString();
        }

        public AdminsVO()
        {
            Id = 0;
            Name = string.Empty;
            Password = string.Empty;
        }
    }
}
