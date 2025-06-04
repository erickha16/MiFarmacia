using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class ScheduleDatesVO
    {
        // Atributos + Propiedades
        public int ScheduleDateID { get; set; }
        public int DateTypeID { get; set; }
        public string DateTypeName { get; set; }
        public int FatherAge { get; set; }
        public int MotherAge { get; set; }
        public string Email { get; set; }
        public DateTime Date { get; set; }
        public string Schedule { get; set; }
        public string Comment { get; set; }
        public int LocationID { get; set; }
        public string LocationName { get; set; }

        // ------------------------ Constructores ------------------------

        public ScheduleDatesVO(DataRow dr)
        {
            ScheduleDateID = int.Parse(dr["ScheduleDateID"].ToString());
            DateTypeID = int.Parse(dr["DateTypeID"].ToString());
            DateTypeName = dr["DateTypeName"].ToString();
            FatherAge = string.IsNullOrWhiteSpace(dr["FatherAge"].ToString()) ? 0 : int.Parse(dr["FatherAge"].ToString());
            MotherAge = string.IsNullOrWhiteSpace(dr["MotherAge"].ToString()) ? 0 : int.Parse(dr["MotherAge"].ToString());
            Email = dr["Email"].ToString();
            Date = DateTime.Parse(dr["Date"].ToString());
            Schedule = dr["Schedule"].ToString();
            Comment = dr["Comment"].ToString();
            LocationID = int.Parse(dr["LocationID"].ToString());
            LocationName = dr["LocationName"].ToString();
        }

        public ScheduleDatesVO()
        {
            ScheduleDateID = 0;
            DateTypeID = 0;
            DateTypeName = string.Empty;
            FatherAge = 0;
            MotherAge = 0;
            Email = string.Empty;
            Date = DateTime.MinValue;
            Schedule = string.Empty;
            Comment = string.Empty;
            LocationID = 0;
            LocationName = string.Empty;
        }
    }
}
