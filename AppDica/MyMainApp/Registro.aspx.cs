using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClsDataApp;
using dica;

namespace MyMainApp
{
    public partial class Registro : FormaSISWeb
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
           bool Sigue= VerificarUsuario(nit, fechaNacimiento);
            if (Sigue== true)
            {
            }
            else{
            DespliegaMensaje("Usuario ya existe o no cumple rango de edades");
            }
        }


        protected bool VerificarUsuario(string Nit, string FechaNacimiento)
        {   // Si retorna Falso no se procedera a el registro
            bool resultado = true;
            CAspirante objAspirante = new CAspirante(_DataSistema.ConexionBaseDato);
            DataView dvAspirante = new DataView(objAspirante.Detalle(Nit, "", "", Convert.ToDateTime(FechaNacimiento), 'X',
           "", "", "", "", Nit, 'X', 0, 0, 0, 0, 0, 0, "", DateTime.Today, "", DateTime.Today, 2).TB_ASPIRANTE);
            if (dvAspirante.Count > 0)
            {
                resultado = false;
            }
            return resultado;
        }
    }
}