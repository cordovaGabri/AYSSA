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
    public partial class ASPP0001 : FormaSISWeb,IAcciones
    {
        private DataView dvTituloAcademico, dvPais, dvDepartamento, dvMunicipio, dvTipoDocumento, dvDestreza,
            dvCategoriaHabilidad, dvConocimiento, dvNivel, dvNivelEducativo, dvOpcionAcademica, dvInstitucion,
            dvEscolaridad, dvHabilidad, dvDocumento;
        DataQuery objResultado = new DataQuery();
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

        public void Consultar() {
            FillCboTratamiento();
            FillCboPais();
            FillCboDepartamento();
            FillCboMunicipio();
            FillCboTipoDocumento();
            FillCboDestreza();
            FillCboCategoriaHabilidad();
            FillCboConocimiento();
            FillCboNivel();
            FillCboNivelEducativo();
            FillCboOpcionAcademica();
            FillCboInstitucion();
            FillCamposDatosGenerales();
            FillGVEscolaridad();
            FillGVHabilidad();
            FillGVDocumento();
        }

        public void Adicionar() { }

        public void Modificar() { }

        public void Eliminar() { }

        public void Imprimir() { }

        public void Limpiar() { }

        protected void FillCboTratamiento()
        {
            CTituloAcademico objTituloAcademico = new CTituloAcademico(_DataSistema.ConexionBaseDato);
            dvTituloAcademico = new DataView(objTituloAcademico.Detalle(0, "", "", "", DateTime.Now, "", DateTime.Now, 0).TBC_TITULO_ACADEMICO);

            CboTratamiento.DataSource = dvTituloAcademico;
            CboTratamiento.DataBind();

            CboTratamientoRepresentante.DataSource = dvTituloAcademico;
            CboTratamientoRepresentante.DataBind();
        }

        protected void FillCboPais()
        {
            CPais objPais = new CPais(_DataSistema.ConexionBaseDato);
            dvPais = new DataView(objPais.Detalle(0, "", "", "", DateTime.Now, "", DateTime.Now, 0).TBC_PAIS);

            CboPais.DataSource = dvPais;
            CboPais.DataBind();

            CboPaisEscolaridad.DataSource = dvPais;
            CboPaisEscolaridad.DataBind();
        }

        protected void FillCboDepartamento()
        {
            CDepartamento objDepartamento = new CDepartamento(_DataSistema.ConexionBaseDato);
            dvDepartamento = new DataView(objDepartamento.Detalle(0,0, "", "", DateTime.Now, "", DateTime.Now, 0).TBC_DEPARTAMENTO);

            CboDepartamento.DataSource = dvDepartamento;
            CboDepartamento.DataBind();
        }

        protected void FillCboMunicipio()
        {
            CMunicipio objMunicipio = new CMunicipio(_DataSistema.ConexionBaseDato);
            dvMunicipio = new DataView(objMunicipio.Detalle(0, Convert.ToInt32(CboDepartamento.SelectedValue),  "", DateTime.Now, "", DateTime.Now, 0).TBC_MUNICIPIO);

            CboMunicipio.DataSource = dvMunicipio;
            CboMunicipio.DataBind();
        }



        protected void FillCboTipoDocumento()
        {
            CDocumento objTipoDocumento = new CDocumento(_DataSistema.ConexionBaseDato);
            dvTipoDocumento = new DataView(objTipoDocumento.Detalle(0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_DOCUMENTO);

            CboTipoDocumento.DataSource = dvTipoDocumento;
            CboTipoDocumento.DataBind();
        }


        protected void FillCboDestreza()
        {
            CDestreza objDestreza = new CDestreza(_DataSistema.ConexionBaseDato);
            dvDestreza = new DataView(objDestreza.Detalle(0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_DESTREZA);

            CboDestreza.DataSource = dvDestreza;
            CboDestreza.DataBind();
        }

        protected void FillCboCategoriaHabilidad()
        {
            CCategoriaHabilidad objCategoriaHabilidad = new CCategoriaHabilidad(_DataSistema.ConexionBaseDato);
            dvCategoriaHabilidad = new DataView(objCategoriaHabilidad.Detalle(0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_CATEGORIA_HABILIDAD);

            CboCategoriaHabilidad.DataSource = dvCategoriaHabilidad;
            CboCategoriaHabilidad.DataBind();
        }


        protected void FillCboConocimiento()
        {
            CHabilidadConocimiento objConocimiento = new CHabilidadConocimiento(_DataSistema.ConexionBaseDato);
            dvConocimiento = new DataView(objConocimiento.Detalle(0, "", "", 'A', 0, "", DateTime.Now, "", DateTime.Now, 0).TBC_HABILIDAD_CONOCIMIENTO);

            CboConocimiento.DataSource = dvConocimiento;
            CboConocimiento.DataBind();
        }

        protected void FillCboNivel()
        {
            CNivelConocimiento objNivel = new CNivelConocimiento(_DataSistema.ConexionBaseDato);
            dvNivel = new DataView(objNivel.Detalle(0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_NIVEL_CONOCIMIENTO);

            CboNivel.DataSource = dvNivel;
            CboNivel.DataBind();
        }

        protected void FillCboNivelEducativo()
        {
            CEscolaridad objNivelEducativo = new CEscolaridad(_DataSistema.ConexionBaseDato);
            dvNivelEducativo = new DataView(objNivelEducativo.Detalle(0,0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_ESCOLARIDAD);

            CboNivelEducativo.DataSource = dvNivelEducativo;
            CboNivelEducativo.DataBind();
        }

        protected void FillCboOpcionAcademica()
        {
            COpcionAcademica objOpcionAcademica = new COpcionAcademica(_DataSistema.ConexionBaseDato);
            dvOpcionAcademica = new DataView(objOpcionAcademica.Detalle(0, 0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_OPCION_ACADEMICA);

            CboOpcionAcademica.DataSource = dvOpcionAcademica;
            CboOpcionAcademica.DataBind();
        }

        protected void FillCboInstitucion()
        {
            CCentroEscolar objInstitucion = new CCentroEscolar(_DataSistema.ConexionBaseDato);
            dvInstitucion = new DataView(objInstitucion.Detalle(0, "", "", "", DateTime.Now, "", DateTime.Now, 0).TBC_CENTRO_ESCOLAR);

            CboInstitucion.DataSource = dvInstitucion;
            CboInstitucion.DataBind();
        }

        protected void BtnGuardarDatoGeneral_Click(object sender, EventArgs e)
        {
            try
            {
                CAspirante objAspirante = new CAspirante(_DataSistema.ConexionBaseDato);
                objResultado = objAspirante.Actualizacion(_DataSistema.Cusuario, "", "", DateTime.Now, Convert.ToChar(RadioSexo.SelectedValue),
                 TxtTelCasa.Text, TxtTelCel.Text, TxtDireccion.Text, TxtEmail.Text, TxtDui.Text, TxtNit.Text, 'I', 0, CboPais.SelectedValue,
                 Convert.ToInt32(CboDepartamento.SelectedValue), Convert.ToInt32(CboMunicipio.SelectedValue),
                 Convert.ToInt32(CboTratamiento.SelectedValue),
                 "", TxtDiscapacidad1.Text, TxtDiscapacidad2.Text, TxtDiscapacidad3.Text, _DataSistema.Cusuario,
                 TipoActualizacion.Actualizar);
                
                    if (objResultado.CodigoError == 0)
                    {
                        FillCamposDatosGenerales();
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

        protected void FillCamposDatosGenerales()
        {
            CAspirante objAspirante = new CAspirante(_DataSistema.ConexionBaseDato);
            DataView dvAspirante = new DataView(objAspirante.Detalle(_DataSistema.Cusuario, "", "", DateTime.Today, 'X',
         "", "", "", "", "", "", 'X', 0, "", 0, 0, 0, "", "", "", "", "", DateTime.Today, "", DateTime.Today, 3).TB_ASPIRANTE);
            if (dvAspirante.Count > 0)
            {   /* CARGA DE DATOS DE EL PRIMER REGISTRO */
                TxtNombre.Text = dvAspirante.Table.Rows[0]["DS_NOMBRE"].ToString();
                TxtApellido.Text = dvAspirante.Table.Rows[0]["DS_APELLIDO"].ToString();
                TxtEstado.Text = dvAspirante.Table.Rows[0]["CD_ESTADO_ASPIRANTE"].ToString();
                TxtFechNac.Text = dvAspirante.Table.Rows[0]["FECH_NACIMIENTO"].ToString();
                TxtEdad.Text = dvAspirante.Table.Rows[0]["EDAD"].ToString();
                TxtNit.Text = dvAspirante.Table.Rows[0]["DS_NIT"].ToString();
                TxtTipoAspirante.Text = dvAspirante.Table.Rows[0]["DS_TIPO_ASPIRANTE"].ToString();
                TxtEmail.Text = dvAspirante.Table.Rows[0]["DS_EMAIL"].ToString();

                /* CARGA DE DATOS DE EL POSTERIORES REGISTROS */

                TxtTelCasa.Text = dvAspirante.Table.Rows[0]["DS_TELEFONO_CASA"].ToString();
                TxtTelCel.Text = dvAspirante.Table.Rows[0]["DS_TELEFONO_CELULAR"].ToString();
                TxtDui.Text = dvAspirante.Table.Rows[0]["DS_DUI"].ToString();
                RadioSexo.SelectedValue = dvAspirante.Table.Rows[0]["DS_SEXO"].ToString();
                if (Convert.ToInt32(dvAspirante.Table.Rows[0]["ID_TITULO_ACADEMICO"].ToString()) > 0)
                {
                    CboTratamiento.SelectedValue = dvAspirante.Table.Rows[0]["ID_TITULO_ACADEMICO"].ToString();
                }
                TxtDiscapacidad1.Text = dvAspirante.Table.Rows[0]["DS_DISCAPACIDAD1"].ToString();
                TxtDiscapacidad2.Text = dvAspirante.Table.Rows[0]["DS_DISCAPACIDAD2"].ToString();
                TxtDiscapacidad3.Text = dvAspirante.Table.Rows[0]["DS_DISCAPACIDAD3"].ToString();
                if (dvAspirante.Table.Rows[0]["ID_PAIS"].ToString() != "")
                {
                    CboPais.SelectedValue = dvAspirante.Table.Rows[0]["ID_PAIS"].ToString();
                }
                if (Convert.ToInt32(dvAspirante.Table.Rows[0]["ID_DEPARTAMENTO"].ToString()) > 0)
                {
                    CboDepartamento.SelectedValue = dvAspirante.Table.Rows[0]["ID_DEPARTAMENTO"].ToString();
                }
                if (Convert.ToInt32(dvAspirante.Table.Rows[0]["ID_MUNICIPIO"].ToString()) > 0)
                {
                    CboMunicipio.SelectedValue = dvAspirante.Table.Rows[0]["ID_MUNICIPIO"].ToString();
                }
                TxtDireccion.Text = dvAspirante.Table.Rows[0]["DS_DIRECCION"].ToString();

            }
        }


        protected void FillGVEscolaridad()
        {
            CEscolaridadAspirante objEscolaridad = new CEscolaridadAspirante(_DataSistema.ConexionBaseDato);
            dvEscolaridad = new DataView(objEscolaridad.Detalle(0, _DataSistema.Cusuario, 0, 0, 0, "", "", 0, 0, "", DateTime.Now, "", DateTime.Now, 3).TB_ESCOLARIDAD);

            GVEscolaridad.DataSource = dvEscolaridad;
            GVEscolaridad.DataBind();
        }

        protected void FillGVHabilidad()
        {
            CHabilidadAspirante objHabilidad = new CHabilidadAspirante(_DataSistema.ConexionBaseDato);
            dvHabilidad = new DataView(objHabilidad.Detalle(0, 0, _DataSistema.Cusuario, 0, 0, "", DateTime.Now, "", DateTime.Now,2).TB_HABILIDAD);

            GVHabilidad.DataSource = dvHabilidad;
            GVHabilidad.DataBind();
        }

        protected void FillGVDestreza()
        {
            CDestrezaAspirante objDestreza = new CDestrezaAspirante(_DataSistema.ConexionBaseDato);
            dvDestreza = new DataView(objDestreza.Detalle(0, 0, _DataSistema.Cusuario, "", DateTime.Now, "", DateTime.Now, 2).TB_DESTREZA);

            GVDestreza.DataSource = dvDestreza;
            GVDestreza.DataBind();
        }


        protected void FillGVDocumento()
        {
            CDocumentoAspirante objDocumento = new CDocumentoAspirante(_DataSistema.ConexionBaseDato);
            dvDocumento = new DataView(objDocumento.Detalle(0, "", "", 0, 0, "", DateTime.Now, "", DateTime.Now, 0).TB_DOCUMENTO);

            GVDocumento.DataSource = dvDocumento;
            GVDocumento.DataBind();
        }

        protected void BtnEscolaridadGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                decimal Nota = Convert.ToDecimal(TxtNotas.Text);
                CEscolaridadAspirante objEscolaridadAspirante = new CEscolaridadAspirante(_DataSistema.ConexionBaseDato);
                objResultado = objEscolaridadAspirante.Actualizacion(0, _DataSistema.Cusuario, Convert.ToInt32(CboNivelEducativo.SelectedValue),
                    Convert.ToInt32(CboOpcionAcademica.SelectedValue), Convert.ToInt32(CboInstitucion.SelectedValue),
                    CboPaisEscolaridad.SelectedValue, TxtOtraInstitucion.Text, Convert.ToInt32(TxtAnioFin.Text),Nota
                , _DataSistema.Cusuario,  TipoActualizacion.Adicionar);

                if (objResultado.CodigoError == 0)
                {
                    FillGVEscolaridad();
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

        protected void BtnGuardarHabilidad_Click(object sender, EventArgs e)
        {
            try
            {
                CHabilidadAspirante objHabilidadAspirante = new CHabilidadAspirante(_DataSistema.ConexionBaseDato);
                objResultado = objHabilidadAspirante.Actualizacion(0, Convert.ToInt32(CboCategoriaHabilidad.Text), _DataSistema.Cusuario,
                    Convert.ToInt32(CboConocimiento.SelectedValue),  Convert.ToInt32(CboNivel.SelectedValue) 
                , _DataSistema.Cusuario, TipoActualizacion.Adicionar);

                if (objResultado.CodigoError == 0)
                {
                    FillGVHabilidad();
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
                    DespliegaMensaje(objResultado.MensajeError.Replace("'", ""));
                }
            }
            catch (Exception ex)
            {
                DespliegaMensaje(ex.Message);
            }
        }

    }
}