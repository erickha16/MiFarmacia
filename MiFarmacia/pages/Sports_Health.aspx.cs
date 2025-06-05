using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VO;

namespace Proyecto1_Farmacia_.pages
{
    public partial class Deportes_Nutricion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductos();
            }
        }

        private void CargarProductos()
        {
            try
            {
                List<ProductosVO> lista = BllProductos.GetListProductos();
                rptProductos.DataSource = lista;
                rptProductos.DataBind();
            }
            catch (Exception ex)
            {
                // Puedes registrar el error o mostrar un mensaje
                UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());
            }
        }
    }
}