using ClsDataApp;
using ClsInterface;
using dica;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyMainApp.ASP
{
    public partial class FichaAspirante : FormaSISWeb
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           _DataSistema = (ClsSistema)Session["MyDataSistema"];
           if (!IsPostBack)
           {
               DataTable dt;

               CAspirante objAspirante = new CAspirante(_DataSistema.ConexionBaseDato);
               DataView dvAspirante = new DataView(objAspirante.Detalle(_DataSistema.Cusuario, "", "", DateTime.Today, 'X',
            "", "", "", "", "", "", 'X', 0, "", 0, 0, 0, "", "", "", "", "", DateTime.Today, "", DateTime.Today, 4).TB_ASPIRANTE);

               dt = dvAspirante.ToTable();
               ReportViewer1.Visible = true;
               ReportViewer1.LocalReport.ReportPath = "ASP/RptFichaAspirante.rdlc";
               ReportViewer1.LocalReport.DataSources.Clear();
               ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("TB_ASPIRANTE", dt));
           }
        }
    }
}