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
    public partial class InfoAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefrescarGrid();
            }
        }

        public void RefrescarGrid()
        {
            //Llenar el GV con la lista del BLL
            GVAdmins.DataSource = BllAdmins.GetListAdmins();

            //Actualiza el contenido del grid
            GVAdmins.DataBind();

            //gvAdmins.DataSource = BllAdmins.GetListAdmins();
            //gvAdmins.DataBind();
        }

        protected void GVAdmins_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string IdAdmin = GVAdmins.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Resultado = BllAdmins.DeleteAdmin(int.Parse(IdAdmin));
            string mensaje = "";
            string sub = "";
            string clase = "";

            switch (Resultado)
            {
                case "1":
                    mensaje = "Administrador despedido con éxito";
                    sub = "";
                    clase = "success";
                    break;
                default:
                    mensaje = "El usuario no puede ser despedido";
                    sub = "Es demasiado valioso para la empresa";
                    clase = "warning";
                    break;
            }
            UtilControls.SweetBox(mensaje, sub, clase, this.Page, this.GetType());
            RefrescarGrid();
        }

        protected void GVAdmins_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVAdmins.EditIndex = e.NewEditIndex;
            RefrescarGrid();
        }

        protected void GVAdmins_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Id = GVAdmins.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Nombre = e.NewValues["Name"].ToString();
            string Contraseña = e.NewValues["Password"].ToString();


            BllAdmins.UpdateAdmin(int.Parse(Id), Nombre, Contraseña);

            GVAdmins.EditIndex = -1;
            RefrescarGrid();
            UtilControls.SweetBox("Registro actualizado", "", "success", this.Page, this.GetType());
        }

        protected void GVAdmins_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVAdmins.EditIndex = -1;
            RefrescarGrid();
        }
    }
}
