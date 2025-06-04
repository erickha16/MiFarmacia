using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Admins
{
    public partial class AltaAdmins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = this.txtNombre.Text;
                string contraseña = this.txtPassword.Text;

                BllAdmins.InsertAdmin(nombre, contraseña);
                UtilControls.SweetBoxConfirm("Extito!", "Usuario Agregado exitosamente", "success",
                    "/pages/Admin/Admins/infoAdmin.aspx", this.Page, this.GetType());
            }
            catch (Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "Error", this.Page, this.GetType());
            }
        }
    }
}