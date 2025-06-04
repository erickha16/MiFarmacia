using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaDatos.DAL
{
    public class DalCategories
    {
        // Listar todas las categorías
        public static List<CategoriesVO> GetListCategories()
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Categories_Listar");
                List<CategoriesVO> list = new List<CategoriesVO>();

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    list.Add(new CategoriesVO(dr));
                }

                return list;
            }
            catch
            {
                throw;
            }
        }

        // Obtener categoría por ID
        public static CategoriesVO GetCategoryById(int id)
        {
            try
            {
                DataSet ds = MetodoDatos.ExecuteDataSet("Categories_ObtenerPorId", "@CategoryID", id);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    return new CategoriesVO(ds.Tables[0].Rows[0]);
                }
                else
                {
                    return new CategoriesVO();
                }
            }
            catch
            {
                throw;
            }
        }

        // Insertar nueva categoría
        public static void InsertCategory(string name, string description)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Categories_Insertar", "@Name", name, "@Description", description);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar categoría existente
        public static void UpdateCategory(int id, string name, string description)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Categories_Editar", "@CategoryID", id, "@Name", name, "@Description", description);
            }
            catch
            {
                throw;
            }
        }

        // Eliminar categoría por ID
        public static void DeleteCategory(int id)
        {
            try
            {
                MetodoDatos.ExecuteNonQuery("Categories_Eliminar", "@CategoryID", id);
            }
            catch
            {
                throw;
            }
        }
    }
}
