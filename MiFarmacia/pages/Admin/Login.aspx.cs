using RutasGen6.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Proyecto1_Farmacia_.pages.Admin
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Si las credenciales son correctas, redirigir a index
            string user = this.txtUsuario.Text.Trim();
            string pswd = this.txtPassword.Text.Trim();

            if (user == "admin" && pswd == "admin")
            {
                UtilControls.SweetBoxConfirm("Extito!", "Bienvenido!", "success",
                    "/pages/Admin/IndexAdmin.aspx", this.Page, this.GetType());
            }
            else //Si no, predir credenciales correctas
            {
                UtilControls.SweetBox("Error!", "Credenciales incorrectas", "error", this.Page, this.GetType());

            }
        }
    }
}