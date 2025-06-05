using CapaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VO;
using System.IO;
using RutasGen6.Util;
using System.Drawing;

namespace MiFarmacia.pages.Admin.Productos
{
    public partial class EditarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null)
                {
                    Response.Redirect("ListarProductos.aspx");
                }
                else
                {
                    //Obtener id el producto
                    int idProducto = int.Parse(Request.QueryString["Id"]);
                    //Ibtener el producto 
                    ProductosVO producto = BllProductos.GetProductoById(idProducto);

                    if (idProducto == producto.Id) {
                        //Llenar el drop down list
                        DDLCategories.DataSource = BllCategories.GetListCategories();
                        DDLCategories.DataValueField = "Id";
                        DDLCategories.DataTextField = "Name";
                        DDLCategories.DataBind();
                        DDLCategories.Items.Insert(0, new ListItem("-- Selecciona --", ""));



                        //Desplegar información del producto:
                        this.lblId.Text = producto.Id.ToString();
                        this.lblNombre.Text = producto.Name;
                        DDLCategories.SelectedValue = producto.CategoryId.ToString();
                        this.txtProductPrice.Text = producto.ProductPrice.ToString();
                        this.txtStock.Text = producto.Stock.ToString();
                        this.imgFotoProducto.ImageUrl = producto.UrlFoto;
                        this.urlFoto.Text = producto.UrlFoto;
                    }
                    else
                    {
                        Response.Redirect("ListarProductos.aspx");
                    }
                }
            }
        }

        protected void btnSubeImagen_Click(object sender, EventArgs e)
        {
            //Validar que el usuario haya seleccionaod un archivo
            if (SubeImagen.Value != "")
            {
                //Asignar a una variable el nombre del archivo seleccionado
                string FileName = Path.GetFileName(SubeImagen.PostedFile.FileName);

                //Validar que el archivo sea .jpg o .png
                string FileText = Path.GetExtension(FileName).ToLower();

                if ((FileText != ".jpg") && (FileText != ".png") && (FileText != ".jfif"))
                {
                    //Informamos que el archivo no es válido:
                    UtilControls.SweetBox("Error!", "Seleccione un archivo válido (jpg,png, jfif)", "error", this.Page, this.GetType());
                }
                else
                {
                    //Verificar que el directorio donde vamos a guardar el archivo exista
                    string pathDir = Server.MapPath("~/assets/images/productos/");
                    if (!Directory.Exists(pathDir))
                    {
                        //Crea el arbol
                        Directory.CreateDirectory(pathDir);
                    }

                    //Guardamos la imagen en el directorio
                    SubeImagen.PostedFile.SaveAs(pathDir + FileName);
                    string urlfoto = "~/assets/images/productos/" + FileName;
                    this.urlFoto.Text = urlfoto;
                    this.imgFotoProducto.ImageUrl = urlfoto;
                    this.btnGuardar.Visible = true;
                }
            }
            else
            {
                //Informamos que el archivo no es válido:
                UtilControls.SweetBox("Error!", "Por favor seleccione un archivo", "error", this.Page, this.GetType());
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(this.lblId.Text);
                string nombre = this.lblNombre.Text;
                int categoryId = int.Parse(DDLCategories.SelectedValue);
                decimal price = decimal.Parse(this.txtProductPrice.Text);
                int stock = int.Parse(this.txtStock.Text);
                string urlFoto = this.urlFoto.Text;

                BllProductos.UpdProducto(id, nombre, categoryId, price, stock, urlFoto);
                //BllChoferes.UpdChofer(id, licencia, telefono, fNacimiento, null, null, null, urlFoto, disponibilidad);

                UtilControls.SweetBoxConfirm("Extito!", "Producto modificado exitosamente", "success",
                        "/pages/Admin/Productos/ListarProductos.aspx", this.Page, this.GetType());

            }
            catch (Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());
            }
        }
    }
}