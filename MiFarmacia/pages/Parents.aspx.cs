using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Rutas.Util.Enumeradores;

namespace Proyecto1_Farmacia_.pages
{
    public partial class Parents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Llenar combo de horarios
                UtilControls.EnumToListBox(typeof(Horarios), ddlHorarios, false);
                ddlHorarios.Items.Insert(0, new ListItem("-- Selecciona horario --", ""));

                // Llenar combo de sucursales
                ddlSucursales.DataSource = BllLocations.GetListLocations();
                ddlSucursales.DataValueField = "Id";
                ddlSucursales.DataTextField = "Name";
                ddlSucursales.DataBind();
                ddlSucursales.Items.Insert(0, new ListItem("-- Selecciona una sucursal --", ""));
            }
        }

        protected void btnConfirmarCita_Click(object sender, EventArgs e)
        {
            //Verificamos las edades de los padres
            if(int.Parse(txtEdadMadre.Text) < 12 || int.Parse(txtEdadPadre.Text) < 12)
            {
                UtilControls.SweetBox("Error!", "Por favor ingrese edades válidas", "error", this.Page, this.GetType());
            }
            else
            {
                int edadP = int.Parse(txtEdadPadre.Text);
                int edadM = int.Parse(txtEdadMadre.Text);
                string email = txtEmail.Text;
                DateTime date = DateTime.Parse(this.txtFecha.Text);
                string schedule = ddlHorarios.SelectedValue;
                //Los datos del niño van en comentarios
                string kidData = "Nombre: " + txtPacienteName.Text + ", edad: " + txtEdadPaciente.Text + ". ";
                string comments = kidData + this.txtComentarios.Text;
                int locationId = int.Parse(ddlSucursales.SelectedValue);

                BllScheduleDates.InsScheduleDate(1,edadP, edadM, email, date, schedule, comments, locationId);
                UtilControls.SweetBoxConfirm("Extito!", "Cita agendada exitosamente", "success",
                    "/pages/Parents", this.Page, this.GetType());
            }

        }
    }
}