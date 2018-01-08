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
        private DataView dvActividadEconomica, dvEmpresa, dvDepartamento, dvMunicipio, dvHabilidad, dvDestreza, dvPasantia,
            dvAreaPasantia;
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
                    objResultado = objEmpresa.Actualizacion(Convert.ToInt32(TxtIDEmpresa.Text), TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, TxtNitEmpresa.Text,
                   TxtTelEmpresa.Text, TxtDirEmpresa.Text, Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
                    TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, Convert.ToInt32(CboActEcono.SelectedValue), _DataSistema.Cusuario, _DataSistema.Cusuario, TipoActualizacion.Actualizar);
                }
                else
                {
                    objResultado = objEmpresa.Actualizacion(0, TxtEmpresa.Text, TxtNombreContact.Text, TxtEmailC.Text, TxtTelC.Text, TxtNitEmpresa.Text,
                   TxtTelEmpresa.Text, TxtDirEmpresa.Text, Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
                    TxtNombRepre.Text, TxtEmailRep.Text, TxtNitRep.Text, TxtDuiRep.Text, Convert.ToInt32(CboActEcono.SelectedValue), _DataSistema.Cusuario, _DataSistema.Cusuario, TipoActualizacion.Adicionar);
                    TxtIDEmpresa.Text = Convert.ToString(objResultado.CodigoAuxiliar);
                }
                FillCamposDatosGenerales();
            }
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPDatoGeneral);
            }
        }

        public void Consultar() {
            FillCamposDatosGenerales();
            FillCamposPasantia();
            FillCboActEcono();
            FillCboDepartamento();
            FillCboMunicipio();
            FillCboAreaPasantia();
            FillGVPasantia();
            FillGVHabilidad();
            FillGVDestreza();
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
                TxtIDEmpresa.Text = dvEmpresa.Table.Rows[0]["ID"].ToString();
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


        protected void FillGVHabilidad()
        {
            CHabilidadPasantia objHabilidad = new CHabilidadPasantia(_DataSistema.ConexionBaseDato);
            dvHabilidad = new DataView(objHabilidad.Detalle(0, Convert.ToInt32(TxtIDPasantia.Text), 0, 0, "", DateTime.Now, "", DateTime.Now, 0).TB_PASANTIA_HABILIDAD);

            GVHabilidad.DataSource = dvHabilidad;
            GVHabilidad.DataBind();
        }

        protected void FillGVDestreza()
        {
            CDestrezaAspirante objDestreza = new CDestrezaAspirante(_DataSistema.ConexionBaseDato);
            dvDestreza = new DataView(objDestreza.Detalle(0, 0, "", "", DateTime.Now, "", DateTime.Now, 0).TB_DESTREZA_ASPIRANTE);

            GVDestreza.DataSource = dvDestreza;
            GVDestreza.DataBind();
        }

        protected void FillGVPasantia()
        {
            CPasantia objPasantia = new CPasantia(_DataSistema.ConexionBaseDato);
            dvPasantia = new DataView(objPasantia.Detalle(0, "", "", Convert.ToInt32(TxtIDEmpresa.Text), 0, "", DateTime.Now,
            "", "", "", 'A', 0, 0, 0, 0, 0,"",  "", "", DateTime.Now, "", DateTime.Now, 3).TB_PASANTIA);

            GVPasantia.DataSource = dvPasantia;
            GVPasantia.DataBind();
        }

        protected void BtnGuardarPasantia_Click(object sender, EventArgs e)
        {
            CPasantia objPasantia = new CPasantia(_DataSistema.ConexionBaseDato);
            dvPasantia = new DataView(objPasantia.Detalle(Convert.ToInt32(TxtIDPasantia.Text), "", "", 0, 0, "", DateTime.Now,
             "", "", "", 'A', 0, 0, 0, 0, 0, "", "", "", DateTime.Now, "", DateTime.Now, 1).TB_PASANTIA);

            try
            {
                if (dvPasantia.Count > 0)
                {
                    objResultado = objPasantia.Actualizacion(Convert.ToInt32(TxtIDPasantia.Text), TxtNombEva.Text , TxtEmailEva.Text
                        , Convert.ToInt32(TxtIDEmpresa.Text), Convert.ToInt32(CboAreaPasantia.SelectedValue), TxtDescPasantia.Text, Convert.ToDateTime(TxtFechInicio.Text),
          TxtDuracion.Text, TxtDe.Text, TxtA.Text, Convert.ToChar(CboEstadoPasantia.SelectedValue), Convert.ToInt32(CboDias1.SelectedValue), Convert.ToInt32(CboDias2.SelectedValue), Convert.ToInt32(TxtEdadDe.Text), Convert.ToInt32(TxtEdadA.Text), Convert.ToInt32(TxtCantVacantes.Text),
             TxtSucursal.Text, TxtDireccion.Text, _DataSistema.Cusuario, TipoActualizacion.Actualizar);
                }
                else
                {
                    objResultado = objPasantia.Actualizacion(Convert.ToInt32(TxtIDPasantia.Text), TxtNombEva.Text, TxtEmailEva.Text
                        , Convert.ToInt32(TxtIDEmpresa.Text), Convert.ToInt32(CboAreaPasantia.SelectedValue), TxtDescPasantia.Text, Convert.ToDateTime(TxtFechInicio.Text),
          TxtDuracion.Text, TxtDe.Text, TxtA.Text, Convert.ToChar(CboEstadoPasantia.SelectedValue), Convert.ToInt32(CboDias1.SelectedValue), Convert.ToInt32(CboDias2.SelectedValue), Convert.ToInt32(TxtEdadDe.Text), Convert.ToInt32(TxtEdadA.Text), Convert.ToInt32(TxtCantVacantes.Text),
             TxtSucursal.Text, TxtDireccion.Text, _DataSistema.Cusuario, TipoActualizacion.Adicionar);
                    if (objResultado.CodigoError == 0)
                    {
                        TxtIDPasantia.Text = Convert.ToString(objResultado.CodigoAuxiliar);
                    }
                }
                if (objResultado.CodigoError == 0)
                {
                    FillCamposPasantia();
                    FillGVPasantia();
                    DespliegaMensajeUpdatePanel("Registro Guardado Correctamente", UPPasantia);
                }
                else
                {
                    DespliegaMensajeUpdatePanel(objResultado.MensajeError, UPPasantia);
                }
              
            }
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPPasantia);
            }
        }


        protected void FillCboAreaPasantia()
        {
            CAreaPasantia objAreaPasantia = new CAreaPasantia(_DataSistema.ConexionBaseDato);
            dvAreaPasantia = new DataView(objAreaPasantia.Detalle(0, "", "", DateTime.Now, "", DateTime.Now, 0).TBC_AREA_EMPRESA);

            CboAreaPasantia.DataSource = dvAreaPasantia;
            CboAreaPasantia.DataBind();
        }

        protected void FillCamposPasantia()
        {
            CPasantia objPasantia = new CPasantia(_DataSistema.ConexionBaseDato);
            dvPasantia = new DataView(objPasantia.Detalle(Convert.ToInt32(TxtIDPasantia.Text), "", "", 0, 0, "", DateTime.Now,
             "", "", "", 'A', 0, 0, 0, 0, 0, "", "", "", DateTime.Now, "", DateTime.Now, 1).TB_PASANTIA);
            if (dvPasantia.Count > 0)
            {
                TxtIDPasantia.Text = dvPasantia.Table.Rows[0]["ID"].ToString();
                TxtNombEva.Text = dvPasantia.Table.Rows[0]["DS_NOMBRE_EVAL"].ToString();
                TxtEmailEva.Text = dvPasantia.Table.Rows[0]["DS_EMAIL_CONTACTO"].ToString();
                TxtIDEmpresa.Text = dvPasantia.Table.Rows[0]["ID_EMPRESA"].ToString();
                CboAreaPasantia.SelectedValue = dvPasantia.Table.Rows[0]["ID_AREA"].ToString();
                TxtDescPasantia.Text = dvPasantia.Table.Rows[0]["DS_PASANTIA"].ToString();
                TxtFechInicio.Text = dvPasantia.Table.Rows[0]["FECH_INICIO_PASANTIA"].ToString();
                TxtDuracion.Text = dvPasantia.Table.Rows[0]["DS_DURACION"].ToString();
                TxtDe.Text = dvPasantia.Table.Rows[0]["DS_HORARIO_DE"].ToString();
                TxtA.Text = dvPasantia.Table.Rows[0]["DS_HORARIO_A"].ToString();
                CboEstadoPasantia.SelectedValue = dvPasantia.Table.Rows[0]["CD_ESTADO_PASANTIA"].ToString();
                CboDias1.SelectedValue = dvPasantia.Table.Rows[0]["NM_DIAS_DE"].ToString();
                CboDias2.SelectedValue = dvPasantia.Table.Rows[0]["NM_DIAS_A"].ToString();
                TxtCantVacantes.Text = dvPasantia.Table.Rows[0]["NM_VACANTES"].ToString();
                TxtSucursal.Text = dvPasantia.Table.Rows[0]["DS_SUCURSAL"].ToString();
                TxtDireccion.Text = dvPasantia.Table.Rows[0]["DS_DIRECCION_SUCURSAL"].ToString();
            }
        }

        protected void BtnGuardarHabilidad_Click(object sender, EventArgs e)
        {
            try
            {
                CHabilidadPasantia objHabilidadPasantia = new CHabilidadPasantia(_DataSistema.ConexionBaseDato);
                objResultado = objHabilidadPasantia.Actualizacion(0, Convert.ToInt32(TxtIDPasantia.Text), Convert.ToInt32(CboConocimiento.SelectedValue),
                    Convert.ToInt32(CboNivel.SelectedValue)
                , _DataSistema.Cusuario, TipoActualizacion.Adicionar);

                if (objResultado.CodigoError == 0)
                {
                    FillGVHabilidad();
                }
                else
                {
                    DespliegaMensajeUpdatePanel(objResultado.MensajeError, UPPasantia);
                }
            }
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPPasantia);
            }
        }

        protected void BtnGuardarDestreza_Click(object sender, EventArgs e)
        {
            try
            {
                CDestrezaAspirante objDestrezaAspirante = new CDestrezaAspirante(_DataSistema.ConexionBaseDato);
                objResultado = objDestrezaAspirante.Actualizacion(0, Convert.ToInt32(CboDestreza.SelectedValue), _DataSistema.Cusuario
                , _DataSistema.Cusuario, TipoActualizacion.Adicionar);

                if (objResultado.CodigoError == 0)
                {
                    FillGVDestreza();
                }
                else
                {
                    DespliegaMensajeUpdatePanel(objResultado.MensajeError, UPPasantia);
                }
            }
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPPasantia);
            }
        }


        protected void GVPasantia_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                TextBox Id = GVPasantia.Rows[e.RowIndex].FindControl("TxtIDPasantiaGV") as TextBox;
                TxtIDPasantia.Text = Id.Text;
                FillCamposPasantia();
                FillGVHabilidad();
            }
            catch (Exception ex)
            {
                DespliegaMensajeUpdatePanel(ex.Message, UPPasantia);
            }
        }
    }
}