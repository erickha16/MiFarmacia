﻿using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiFarmacia.pages.Admin.Productos
{
    public partial class ListarProductos : System.Web.UI.Page
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
            //Llenar el GV con los datos del BLL
            GVProductos.DataSource = BllProductos.GetListProductos();

            //Actualiza el contenido del grid
            GVProductos.DataBind();
        }

        protected void GVProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string Id = GVProductos.DataKeys[e.RowIndex].Values["Id"].ToString();
            string Resultado = BllProductos.DelProducto(int.Parse(Id));
            string mensaje = "";
            string sub = "";
            string clase = "";

            switch (Resultado)
            {
                case "1":
                    mensaje = "Producto eliminado con éxito";
                    sub = "";
                    clase = "success";
                    break;
                default:
                    mensaje = "Error al eliminar el producto";
                    sub = "ERROR";
                    clase = "warning";
                    break;
            }
            UtilControls.SweetBox(mensaje, sub, clase, this.Page, this.GetType());
            RefrescarGrid();
        }


        protected void GVProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //este boton va a redireccionar a un nuevo aspx
            if (e.CommandName == "Select")
            {
                int index = int.Parse(e.CommandArgument.ToString());
                string IdProducto = GVProductos.DataKeys[index].Values["Id"].ToString();
                Response.Redirect("EditarProducto.aspx?Id=" + IdProducto);
            }
        }
    }
}