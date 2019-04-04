using ClsDataApp;
using ClsInterface;
using dica;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyMainApp.TEC
{
    public partial class TEC0002 : FormaSISWeb, IAcciones
    {
        private DataView dvDatosEmpresa;
        private DataSet dsPantalla;
        protected void Page_Load(object sender, EventArgs e)
        {
            _DataSistema = (ClsSistema)Session["MyDataSistema"];

            /*
                Se Declara la constante Pantalla con la que se evaluara si el perfil de la persona posee privilegios
                para Abrir esta Pantalla
            */
            //String Pantalla = "TEC0002";
            //String accesoPantalla;
            //Boolean booleanPantalla = false;
            //CMenu pantallasPermitidas = new CMenu(_DataSistema.ConexionBaseDato);
            //if (_DataSistema.Cusuario != null)
            //{
            //    dsPantalla = pantallasPermitidas.DetalleOpciones(_DataSistema.Cusuario, "", "", Pantalla, 4);
            //    foreach (System.Data.DataRow dr in dsPantalla.Tables["Table"].Rows)
            //    {
            //        accesoPantalla = dr["ID_OPCION_SISTEMA"].ToString();
            //        if (booleanPantalla = (accesoPantalla != null))
            //        {
            //            booleanPantalla = true;
            //        }
            //    }
            //    if (booleanPantalla == false)
            //    {
            //        Response.Redirect("~/Default.aspx");
            //    }
            //}
            if (_DataSistema.Cusuario == null)
            {
                Response.Redirect("~/Default.aspx");
            }

            if (!IsPostBack)
            {
                Consultar();
            }
        }
        public void Consultar()
        {
            FillGVListaEmpresa();
        }

        public void Adicionar() { }

        public void Modificar() { }

        public void Eliminar() { }

        public void Imprimir() { }

        public void Limpiar() { }

        protected void FillGVListaEmpresa()
        {
            CEmpresa objEmpresa = new CEmpresa(_DataSistema.ConexionBaseDato);
            DataView dvDatosEmpresa = new DataView(objEmpresa.Detalle(0,"","","","","","","",0,0,"","","","",0,"","",DateTime.Today,"",DateTime.Today,3).TB_EMPRESA);
            GVListaEmpresa.DataSource = dvDatosEmpresa;
            GVListaEmpresa.DataBind();
        }
    }
}