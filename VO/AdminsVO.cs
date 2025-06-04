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
        public int AdminID { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }

        // ------------------------ Constructores ------------------------

        public AdminsVO(DataRow dr)
        {
            AdminID = int.Parse(dr["AdminID"].ToString());
            UserName = dr["UserName"].ToString();
            Password = dr["Password"].ToString();
        }

        public AdminsVO()
        {
            AdminID = 0;
            UserName = string.Empty;
            Password = string.Empty;
        }
    }
}
