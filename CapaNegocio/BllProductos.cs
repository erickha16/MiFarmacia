using CapaDatos.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VO;

namespace CapaNegocio
{
    public class BllProductos
    {
        // Listar productos
        public static List<ProductosVO> GetListProductos()
        {
            try
            {
                return DalProducts.GetListProducts();
            }
            catch
            {
                throw;
            }
        }

        // Insertar producto
        public static void InsProducto(string paramNombre, int paramCategoryID, decimal paramPrecio, int paramStock, string paramUrlImagen)
        {
            try
            {
                DalProducts.InsertProduct(paramNombre, paramCategoryID, paramPrecio,paramStock, paramUrlImagen);
            }
            catch
            {
                throw;
            }
        }

        // Actualizar producto
        public static string UpdProducto(int paramProductoID, string paramNombre, int paramCategoryID, decimal paramPrecio, int paramStock, string paramUrlImagen)
        {
            try
            {
                DalProducts.UpdateProduct(paramProductoID, paramNombre, paramCategoryID, paramPrecio, paramStock, paramUrlImagen);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Eliminar producto
        public static string DelProducto(int paramProductoID)
        {
            try
            {
                DalProducts.DeleteProduct(paramProductoID);
                return "1";
            }
            catch
            {
                return "0";
            }
        }

        // Obtener producto por ID
        public static ProductosVO GetProductoById(int paramProductoID)
        {
            try
            {
                return DalProducts.GetProductById(paramProductoID);
            }
            catch
            {
                throw;
            }
        }
    }
}
