using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;


namespace CapaDatos.DAL
{
    public class DalProducts
    {
        // Listar todos los productos
        public static List<ProductosVO> GetListProducts()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Products_Listar");
                List<ProductosVO> list = new List<ProductosVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new ProductosVO(dr));
                }

                return list;
            }
            catch
            {
                throw;
            }
        }

        // Obtener producto por ID
        public static ProductosVO GetProductById(int id)
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Products_ObtenerPorId", "@ProductID", id);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new ProductosVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new ProductosVO();
                }
            }
            catch
            {
                throw;
            }
        }

        // Insertar producto
        public static void InsertProduct(string name, int categoryId, decimal price, int stock, string imageUrl)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Products_Insertar",
                    "@Name", name,
                    "@CategoryID", categoryId,
                    "@ProductPrice", price,
                    "@Stock", stock,
                    "@ImageUrl", imageUrl);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar producto
        public static void UpdateProduct(int id, string name, int categoryId, decimal price, int stock, string imageUrl)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Products_Editar",
                    "@ProductID", id,
                    "@Name", name,
                    "@CategoryID", categoryId,
                    "@ProductPrice", price,
                    "@Stock", stock,
                    "@ImageUrl", imageUrl);
            }
            catch
            {
                throw;
            }
        }

        // Eliminar producto
        public static void DeleteProduct(int id)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Products_Eliminar", "@ProductID", id);
            }
            catch
            {
                throw;
            }
        }
    }
}
