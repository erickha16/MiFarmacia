using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Categorias
{
    public partial class AltaCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = this.txtNombre.Text;
                string descripcion = this.txtDescripcion.Text;

                BllCategories.InsCategory(nombre, descripcion);
                UtilControls.SweetBoxConfirm("Extito!", "Categoría agregada exitosamente", "success",
                    "/pages/Admin/Categorias/ListarCategorias.aspx", this.Page, this.GetType());
            }
            catch(Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "Error", this.Page, this.GetType());
            }
        }
    }
}