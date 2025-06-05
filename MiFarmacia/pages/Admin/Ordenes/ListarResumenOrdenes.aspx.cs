using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Ordenes
{
    public partial class ListarResumenOrdenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarResumen();
            }
        }

        private void CargarResumen()
        {
            var resumen = BllOrdersSummary.GetOrdersSummary();
            gvOrdersSummary.DataSource = resumen;
            gvOrdersSummary.DataBind();
        }
    }
}