using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VO;

namespace MiFarmacia.pages.Admin.Productos
{
    public partial class AltaProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            //Llenar el combo consultando la lista de categorías
            DDLCategories.DataSource = BllCategories.GetListCategories();
            DDLCategories.DataValueField = "Id";
            DDLCategories.DataTextField="Name";
            DDLCategories.DataBind();
            DDLCategories.Items.Insert(0, new ListItem("-- Selecciona --", ""));
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

            if (!string.IsNullOrEmpty(DDLCategories.SelectedValue))
            {
                try
                {
                    string nombre = this.txtNombre.Text;
                    int categoryId = int.Parse(DDLCategories.SelectedValue);
                    decimal price = decimal.Parse(this.txtProductPrice.Text);
                    int stock = int.Parse(this.txtStock.Text);
                    string urlFoto = this.urlFoto.Text;
                    BllProductos.InsProducto(nombre, categoryId, price, stock, urlFoto);
                    //BllChoferes.InsChofer(licencia, telefono, fNacimiento, nombre, apPaterno, apMaterno, urlFoto);
                    UtilControls.SweetBoxConfirm("Extito!", "Producto agregado exitosamente", "success",
                        "/pages/Admin/Productos/ListarProductos.aspx", this.Page, this.GetType());

                }
                catch (Exception ex)
                {
                    UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());

                }
            }
            else
            {
                UtilControls.SweetBox("Error!", "Seleccione una categoría", "error", this.Page, this.GetType());
            }
        }
    }
}