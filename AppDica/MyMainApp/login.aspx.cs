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
    public partial class Login : FormaSISWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrarme_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void BtnInicioSesion_Click(object sender, EventArgs e)
        {
          /*  bool bAutenticado = false;
            CUsuarios objUsuario = new CUsuarios(_DataSistema.ConexionBaseDato);
            bAutenticado = objUsuario.Autenticar(Login1.UserName.ToString(), Login1.Password.ToString());

            e.Authenticated = bAutenticado;
            if (bAutenticado)
            {
                _DataSistema.Cusuario = Login1.UserName.ToString().ToUpper();
                if (CargaDatosUsuarioActivo(_DataSistema.Cusuario))
                {
                    Session["MyDataSistema"] = _DataSistema;
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                }
                else
                {
                    e.Authenticated = false;
                    DespliegaMensaje("Usuario no se encuentra Activo. Favor Verifique.");
                }

            }*/
            Response.Redirect("ASP/ASPP0001.aspx");
        }

       /* protected bool CargaDatosUsuarioActivo(string CodigoUsuario)
        {
            bool resultado = false;
            CUsuarios objUsuario = new CUsuarios(_DataSistema.ConexionBaseDato);
            DataView dvUsuario = new DataView(objUsuario.Detalle(CodigoUsuario, "", "", 1).GLB_USUARIOS);
            if (dvUsuario.Count > 0)
            {
                _DataSistema.NombreUsuario = dvUsuario.Table.Rows[0]["DS_NOMBRE_USUARIO"].ToString();
                _DataSistema.CPerfilusuario = dvUsuario.Table.Rows[0]["CD_CODIGO_PERFIL"].ToString();
                _DataSistema.PerfilUsuario = dvUsuario.Table.Rows[0]["DS_NOMBRE_PERFIL"].ToString();
                _DataSistema.EstadoUsuario = dvUsuario.Table.Rows[0]["CD_ESTADO_USUARIO"].ToString();
                if (_DataSistema.EstadoUsuario == "A")
                {
                    resultado = true;
                }
            }
            return resultado;
        }*/



    }
}