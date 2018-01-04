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
        private DataView dvActividadEconomica, dvEmpresa, dvDepartamento,dvMunicipio;
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
                TxtTelEmpresa.Text, TxtDirEmpresa.Text, 0, 0,
            TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, 0, _DataSistema.Cusuario, _DataSistema.Cusuario, DateTime.Now, "", DateTime.Now, 2).TB_EMPRESA);

            try
            {
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
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPDatoGeneral);
            }
        }

        public void Consultar() {
            FillCamposDatosGenerales();
            FillCboActEcono();
            FillCboDepartamento();
            FillCboMunicipio();
        }

        public void Adicionar() { }

        public void Modificar() { }

        public void Eliminar() { }

        public void Imprimir() { }

        public void Limpiar() { }

        protected void FillCamposDatosGenerales()
        {
            CEmpresa objEmpresa = new CEmpresa(_DataSistema.ConexionBaseDato);
            dvEmpresa = new DataView(objEmpresa.Detalle(0, TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, _DataSistema.Cusuario,
                TxtTelEmpresa.Text, TxtDirEmpresa.Text, 0, 0,
            TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text,0, _DataSistema.Cusuario, _DataSistema.Cusuario, DateTime.Now, "", DateTime.Now, 2).TB_EMPRESA);
            if (dvEmpresa.Count > 0)
            {
                TxtEmpresa.Text = dvEmpresa.Table.Rows[0]["DS_NOMBRE_EMPRESA"].ToString();
                CboActEcono.SelectedValue=dvEmpresa.Table.Rows[0]["ID_ACT_ECO"].ToString();
                TxtNombreContact.Text=dvEmpresa.Table.Rows[0]["DS_NOMBRE_CONTACTO"].ToString();
                TxtEmailC.Text=dvEmpresa.Table.Rows[0]["DS_EMAIL_CONTACTO"].ToString();
                TxtTelC.Text=dvEmpresa.Table.Rows[0]["DS_TELEFONO_CONTACTO"].ToString();
                TxtNitEmpresa.Text=dvEmpresa.Table.Rows[0]["DS_NIT_EMPRESA"].ToString();
                TxtTelEmpresa.Text =dvEmpresa.Table.Rows[0]["DS_TELEFONO_EMPRESA"].ToString();
                TxtDirEmpresa.Text =dvEmpresa.Table.Rows[0]["DS_DIRECCION_EMPRESA"].ToString();
                CboDepartamento.SelectedValue =dvEmpresa.Table.Rows[0]["ID_DEPARTAMENTO"].ToString();
                CboMunicipio.SelectedValue =dvEmpresa.Table.Rows[0]["ID_MUNICIPIO"].ToString();
                TxtNombRepre.Text =dvEmpresa.Table.Rows[0]["DS_NOMBRE_REPRESENTANTE"].ToString();
                TxtEmailRep.Text =dvEmpresa.Table.Rows[0]["DS_EMAIL_REPRESENTATE"].ToString();
                TxtNitRep.Text =dvEmpresa.Table.Rows[0]["DS_NIT_REPRESENTANTE"].ToString();
                TxtDuiRep.Text =dvEmpresa.Table.Rows[0]["DS_DUI_REPRESENTANTE"].ToString();     
            }
        }

        protected void FillCboActEcono() {
            CActividadEconomica objActividadEconomica = new CActividadEconomica(_DataSistema.ConexionBaseDato);
            dvActividadEconomica = new DataView(objActividadEconomica.Detalle(0, "", "", DateTime.Now, "", DateTime.Now, 0).TBC_ACTIVIDAD_ECONOMICA);

            CboActEcono.DataSource = dvActividadEconomica;
            CboActEcono.DataBind();
        }

        protected void FillCboDepartamento()
        {
            CDepartamento objDepartamento = new CDepartamento(_DataSistema.ConexionBaseDato);
            dvDepartamento = new DataView(objDepartamento.Detalle(0,"SV", "", "", DateTime.Now, "", DateTime.Now, 2).TBC_DEPARTAMENTO);

            CboDepartamento.DataSource = dvDepartamento;
            CboDepartamento.DataBind();
        }

        protected void FillCboMunicipio()
        {
            CMunicipio objMunicipio = new CMunicipio(_DataSistema.ConexionBaseDato);
            dvMunicipio = new DataView(objMunicipio.Detalle(0, Convert.ToInt32(CboDepartamento.SelectedValue), "", DateTime.Now, "", DateTime.Now, 2).TBC_MUNICIPIO);

            CboMunicipio.DataSource = dvMunicipio;
            CboMunicipio.DataBind();
        }

        protected void CboDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillCboMunicipio();
        }
    }
}