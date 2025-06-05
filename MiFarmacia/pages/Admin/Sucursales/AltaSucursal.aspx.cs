using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Sucursales
{
    public partial class AltaSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = this.txtNombre.Text;
                string calle = this.txtCalle.Text;
                string colonia = this.txtColony.Text;
                string numero = this.txtNumber.Text;
                string cp = this.txtCP.Text;
                string latlang = txtLatLang.Text;

                BllLocations.InsertLocationWithAddress(nombre,calle,numero, colonia, cp, latlang);
                UtilControls.SweetBoxConfirm("Extito!", "Sucursal creada exitosamente!", "success",
                    "/pages/Admin/Sucursales/ListarSucursales.aspx", this.Page, this.GetType());

            }
            catch (Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());

            }
        }
    }
}