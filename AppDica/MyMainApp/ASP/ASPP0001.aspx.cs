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
            dvCategoriaHabilidad, dvConocimiento, dvNivel, dvNivelEducativo, dvOpcionAcademica, dvInstitucion;
        protected void Page_Load(object sender, EventArgs e)
        {
            _DataSistema = (ClsSistema)Session["MyDataSistema"];
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
            dvNivelEducativo = new DataView(objNivelEducativo.Detalle(0, "", "", 'A', "", DateTime.Now, "", DateTime.Now, 0).TBC_ESCOLARIDAD);

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
    }
}