using CapaNegocio;
using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VO;

namespace MiFarmacia.pages.Admin.Sucursales
{
    public partial class EditarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null)
                {
                    Response.Redirect("ListarSucursales.aspx");
                }
                else
                {
                    //Obtener id la sucursal
                    int idSucursal = int.Parse(Request.QueryString["Id"]);
                    //Ibtener sucursal
                    LocationsVO sucursal = BllLocations.GetLocationById(idSucursal);

                    if (idSucursal == sucursal.Id)
                    {
                        //Desplegar información dela sucursal
                        this.lblId.Text = sucursal.Id.ToString();
                        this.txtname.Text = sucursal.Name;
                        this.txtStreet.Text = sucursal.Street.ToString();
                        this.txtColony.Text = sucursal.Colony.ToString();
                        this.txtNumber.Text = sucursal.Number.ToString();   
                        this.txtCP.Text = sucursal.CP.ToString();
                        this.txtLatLang.Text = sucursal.LatLang.ToString();
                    }
                    else
                    {
                        Response.Redirect("ListarSucursales.aspx");
                    }
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                
                int id = int.Parse(Request.QueryString["Id"]);
                //Ibtener sucursal para el ID de la dirección
                LocationsVO sucursal = BllLocations.GetLocationById(id);
                int addressId = sucursal.AddressID;
                string name = this.txtname.Text;
                string street = this.txtStreet.Text;
                string colony = this.txtColony.Text;
                string number = this.txtNumber.Text;
                string cp = this.txtCP.Text;
                string latLang = this.txtLatLang.Text;

                BllLocations.UpdateLocation(id, name, addressId, street, colony, number, cp, latLang);

                //BllProductos.UpdProducto(id, nombre, categoryId, price, stock, urlFoto);

                UtilControls.SweetBoxConfirm("Extito!", "sucursal actualizada exitosamente", "success",
                        "/pages/Admin/Sucursales/ListarSucursales.aspx", this.Page, this.GetType());

            }
            catch (Exception ex)
            {
                UtilControls.SweetBox("Error!", ex.ToString(), "error", this.Page, this.GetType());
            }
        }
    }
}