using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin
{
    public partial class ListarCategorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //Es true si se acaba de recargar la página utilizando algín evento. en este caso, el false indica que es la priemra vez que se carga la página.
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
            //Llenar el GVChoferes con la lista de ChoferesVo
            //GVCategorias.DataSource = BllChoferes.GetListChoferes(null);
            GVCategorias.DataSource = BllCategories.GetListCategories();

            //Actualiza el contenido del grid
            GVCategorias.DataBind();
        }

        protected void GVCategorias_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string IdCategoria = GVCategorias.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Resultado = BllCategories.DelCategory(int.Parse(IdCategoria));
            string mensaje = "";
            string sub = "";
            string clase = "";

            switch (Resultado)
            {
                case "1":
                    mensaje = "Categoría Eliminado con éxito";
                    sub = "";
                    clase = "success";
                    break;
                default:
                    mensaje = "La categoría no puede ser eliminada";
                    sub = "La categoría aún tiene productos asignados";
                    clase = "warning";
                    break;
            }
            UtilControls.SweetBox(mensaje, sub, clase, this.Page, this.GetType());
            RefrescarGrid();
        }

        protected void GVCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GVCategorias.EditIndex = e.NewEditIndex;
            RefrescarGrid();
        }

        protected void GVCategorias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Id = GVCategorias.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Nombre = e.NewValues["Name"].ToString();
            string Descripcion = e.NewValues["Description"].ToString();
  

            BllCategories.UpdCategory(int.Parse(Id), Nombre, Descripcion);

            GVCategorias.EditIndex = -1;
            RefrescarGrid();
            UtilControls.SweetBox("Registro actualizado", "", "success", this.Page, this.GetType());
        }

        protected void GVCategorias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GVCategorias.EditIndex = -1;
            RefrescarGrid();
        }
    }
}