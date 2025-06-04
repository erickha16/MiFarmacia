using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class ProductosVO
    {
        //Atributos + Propiedades(Setters y Getters)
        public int Id { get; set; }
        public string Name { get; set; }

        public int CategoryId { get; set; }
        public string Category { get; set; }
        public decimal ProductPrice { get; set; }
        public int Stock {  get; set; }
        public string UrlFoto { get; set; }


        //---------------------------------- Constructores ------------------------------------------------

        public ProductosVO(DataRow dr)
        {
            Id = int.Parse(dr["Id"].ToString());
            Name = dr["Name"].ToString();
            CategoryId = int.Parse(dr["CategoryID"].ToString());
            Category = dr["Category"].ToString();
            ProductPrice = decimal.Parse(dr["ProductPrice"].ToString());
            Stock = int.Parse(dr["Stock"].ToString());
            UrlFoto = dr["ImageUrl"].ToString();
        }

        public ProductosVO() {
            Id = 0;
            Name = String.Empty;
            CategoryId = 0;
            Category = String.Empty;
            ProductPrice = 0;
            Stock = 0;
            UrlFoto = String.Empty;
        }
    }

    


}
