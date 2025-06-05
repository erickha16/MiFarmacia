using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Citas
{
    public partial class ListarCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    RefrescarGrid();
                }
                catch (Exception ex)
                {
                    UtilControls.SweetBox("ERROR!", ex.Message, "danger", this.Page, this.GetType());
                }
            }
        }

        public void RefrescarGrid()
        {
            //Llenar el GV con los datos del BLL
            GVCitas.DataSource = BllScheduleDates.GetListScheduleDates();
            
            //Actualiza el contenido del grid
            GVCitas.DataBind();
        }

        protected void GVCitas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string Id = GVCitas.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Resultado = BllScheduleDates.DelScheduleDate(int.Parse(Id));
            string mensaje = "";
            string sub = "";
            string clase = "";

            switch (Resultado)
            {
                case "1":
                    mensaje = "Cita eliminada con éxito";
                    sub = "";
                    clase = "success";
                    break;
                default:
                    mensaje = "Error al eliminar la cita";
                    sub = "ERROR";
                    clase = "warning";
                    break;
            }
            UtilControls.SweetBox(mensaje, sub, clase, this.Page, this.GetType());
            RefrescarGrid();
        }

        protected void GVCitas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //este boton va a redireccionar a un nuevo aspx
            if (e.CommandName == "Select")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                string IdCita = GVCitas.DataKeys[index].Values["Id"].ToString();
                Response.Redirect("EditarCita.aspx?Id=" + IdCita);
            }
        }
    }

}