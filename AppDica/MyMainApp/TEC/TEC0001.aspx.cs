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
    public partial class TEC0001 : FormaSISWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            _DataSistema = (ClsSistema)Session["MyDataSistema"];
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
 
        }
        public void Adicionar() { }

        protected void FillGVRegistroAspirante()
        {
            //CAspirante objRegistroAspirante = new CAspirante(_DataSistema.ConexionBaseDato);
            //dvRegistroAspirante = new DataView(objRegistroAspirante.Detalle("", "", "", DateTime.Now, "","","","","","",
            //    "","","","",0,0,0,"","","","","", DateTime.Now, "",DateTime.Now, 4).TB_ASPIRANTE);

            //GVRegistroAspirante.DataSource = dvRegistroAspirante;
            //GVRegistroAspirante.DataBind();
        }
    }
}