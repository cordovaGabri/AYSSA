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

namespace MyMainApp.EMP
{
    public partial class EMPP0001 : FormaSISWeb, IAcciones
    {
        private DataView dvActividadEconomica, dvEmpresa;
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

        protected void BtnGuardarDatosGenerales_Click(object sender, EventArgs e)
        {
            CEmpresa objEmpresa = new CEmpresa(_DataSistema.ConexionBaseDato);
            dvEmpresa = new DataView(objEmpresa.Detalle(0, TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, _DataSistema.Cusuario,
           TxtTelEmpresa.Text,TxtDirEmpresa.Text, Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
            TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, Convert.ToInt32(CboActEcono.SelectedValue), _DataSistema.Cusuario, _DataSistema.Cusuario, DateTime.Now, "", DateTime.Now, 2).TB_EMPRESA);

            if (dvEmpresa.Count > 0)
            {
                objResultado = objEmpresa.Actualizacion(0, TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, TxtNitEmpresa.Text,
               TxtTelEmpresa.Text, TxtDirEmpresa.Text, Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
                TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, Convert.ToInt32(CboActEcono.SelectedValue), _DataSistema.Cusuario, _DataSistema.Cusuario, TipoActualizacion.Actualizar);
            }
            else
            {
                objResultado = objEmpresa.Actualizacion(0, TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, TxtNitEmpresa.Text,
               TxtTelEmpresa.Text, TxtDirEmpresa.Text, Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
                TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, Convert.ToInt32(CboActEcono.SelectedValue), _DataSistema.Cusuario, _DataSistema.Cusuario, TipoActualizacion.Adicionar);
         
            }
        }

        public void Consultar() { }

        public void Adicionar() { }

        public void Modificar() { }

        public void Eliminar() { }

        public void Imprimir() { }

        public void Limpiar() { }

        protected void FillCboActEcono() {
            CTituloAcademico objTituloAcademico = new CTituloAcademico(_DataSistema.ConexionBaseDato);
            dvActividadEconomica = new DataView(objTituloAcademico.Detalle(0, "", "", "", DateTime.Now, "", DateTime.Now, 0).TBC_TITULO_ACADEMICO);

            CboActEcono.DataSource = dvActividadEconomica;
            CboActEcono.DataBind();
        }
    }
}