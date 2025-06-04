using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllCategories
    {
        // Listar categorías
        public static List<CategoriesVO> GetListCategories()
        {
            try
            {
                return DalCategories.GetListCategories();
            }
            catch
            {
                throw;
            }
        }

        // Insertar categoría
        public static void InsCategory(string paramName, string paramDescription)
        {
            try
            {
                DalCategories.InsertCategory(paramName, paramDescription);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar categoría
        public static string UpdCategory(int paramCategoryID, string paramName, string paramDescription)
        {
            try
            {
                DalCategories.UpdateCategory(paramCategoryID, paramName, paramDescription);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Eliminar categoría
        public static string DelCategory(int paramCategoryID)
        {
            try
            {
                DalCategories.DeleteCategory(paramCategoryID);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Obtener categoría por ID
        public static CategoriesVO GetCategoryById(int paramCategoryID)
        {
            try
            {
                return DalCategories.GetCategoryById(paramCategoryID);
            }
            catch
            {
                throw;
            }
        }
    }
}
