using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Rutas.Util.Enumeradores;

namespace MiFarmacia.pages.Admin.Citas
{
    public partial class AltaCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //Llenar el combo consultando la lista de Tipos de citas
                DDLTipoCitas.DataSource = BllDatesTypes.GetListDatesTypes();
                DDLTipoCitas.DataValueField = "Id";
                DDLTipoCitas.DataTextField = "Name";
                DDLTipoCitas.DataBind();
                DDLTipoCitas.Items.Insert(0, new ListItem("- Selecciona el tipo de cita -", ""));

                //Llenar el combo de horarios
                UtilControls.EnumToListBox(typeof(Horarios), DDLHorarios, false);
                DDLHorarios.Items.Insert(0, new ListItem("-- Selecciona horario --", ""));
                DDLHorarios.SelectedIndex = 0;

                //Llenar el combo de Sucursales
                DDLSucursales.DataSource = BllLocations.GetListLocations();
                DDLSucursales.DataValueField = "Id";
                DDLSucursales.DataTextField = "Name";
                DDLSucursales.DataBind();
                DDLSucursales.Items.Insert(0, new ListItem("- Selecciona una Sucursal -", ""));


            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int dateId = int.Parse(DDLTipoCitas.SelectedValue);
                string email = this.txtEmail.Text;
                DateTime date = DateTime.Parse(this.txtFecha.Text);
                string schedule = DDLHorarios.SelectedValue;
                string comments = this.txtComentario.Text;
                int locationId = int.Parse(DDLSucursales.SelectedValue);


                BllScheduleDates.InsScheduleDate(dateId, 0, 0, email, date, schedule, comments, locationId);
                UtilControls.SweetBoxConfirm("Extito!", "Cita agendada exitosamente", "success",
                    "/pages/Admin/Citas/ListarCitas.aspx", this.Page, this.GetType());

            }
            catch (Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());

            }
        }
    }
}