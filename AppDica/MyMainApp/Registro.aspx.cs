using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyMainApp
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnInicioRegistro_Click(object sender, EventArgs e)
        {
            string nit,fechaNacimiento,nombres,apellidos,email;
            nit = TxtNIT.Text;
            fechaNacimiento = TxtFechaNacimiento.Text;
            nombres = TxtNombres.Text;
            apellidos = TxtApellidos.Text;
            email = TxtEmail.Text;
        }
    }
}