using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClsDataApp;
using ClsInterface;
using dica;

namespace MyMainApp
{
    public partial class Registro : FormaSISWeb
    {
        DataQuery objResultado = new DataQuery();
        protected void Page_Load(object sender, EventArgs e)
        {
            _DataSistema = (ClsSistema)Session["MyDataSistema"];
        }

        protected void BtnInicioRegistro_Click(object sender, EventArgs e)
        {
            string nit,fechaNacimiento,nombres,apellidos,email;
           
            nit = TxtNIT.Text;
            fechaNacimiento = TxtFechaNacimiento.Text;
            nombres = TxtNombres.Text;
            apellidos = TxtApellidos.Text;
            email = TxtEmail.Text;
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789./$";
            var random = new Random();
            string password = new string(Enumerable.Repeat(chars, 10)
              .Select(s => s[random.Next(s.Length)]).ToArray());
           bool Sigue= VerificarUsuario(nit, fechaNacimiento);
            // Si sigue=true se procesa el ingreso
            if (Sigue== true)
            {
                CUsuario objUsuario = new CUsuario(_DataSistema.ConexionBaseDato);
                
                try
                {
                    objResultado = objUsuario.Actualizacion(nit, nombres,  password, "ASPIRANTE",
            email, 'P', nit, TipoActualizacion.Adicionar);

                    if (objResultado.CodigoError == 0)
                    {
                        DespliegaMensaje("Usuario y Contraseña enviado al correo");
                    }
                    else
                    {
                        DespliegaMensaje(objResultado.MensajeError.Replace("'", ""));
                    }
                }
                catch (Exception ex)
                {
                    DespliegaMensaje(ex.Message);
                }
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