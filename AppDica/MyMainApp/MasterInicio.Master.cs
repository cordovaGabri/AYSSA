using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClsInterface;

namespace dica
{
    public partial class MasterInicio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }

    public partial class FormaSISWeb : System.Web.UI.Page
    {
        protected ClsInterface.ClsSistema _DataSistema;
        protected string _ConexionBaseDato;
        protected string _RefrescaCamposEnCarga;
        protected string _TituloPagina;

        protected string _NecesitaPeriodoContable = "N";
        protected string _NecesitaCodigoEmpresa = "N";

        protected bool _CamposEnlazados = false;
        protected static string _Ejercicio = "";
        protected static string _Periodo = "";
        protected DataQuery objResultado = new DataQuery();
        public FormaSISWeb()
        {
            _DataSistema = new ClsSistema();
        }

        public FormaSISWeb(ClsSistema DataSistema)
        {
            _DataSistema = DataSistema;
            _ConexionBaseDato = DataSistema.ConexionBaseDato;

            _NecesitaCodigoEmpresa = DataSistema.NecesitaCodigoEmpresa;
            _NecesitaPeriodoContable = DataSistema.NecesitaPeriodoContable;
        }


        public virtual void Limpiar(Label lblStatus)
        {
            LimpiaStatus(lblStatus);
        }

        protected void RefrescaInfo()
        {

        }


        public virtual void Salir()
        {
            this.Dispose();
        }

        protected void EnlazaCampos()
        {
        }

        protected virtual void IniciaEnlaceCampos()
        {

        }

        protected virtual void FinalizaEnlaceCampos()
        {

        }



        private void LimpiaStatus(Label lblStatus)
        {
            try
            {
                lblStatus.Text = "";
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;
            }
        }

        protected virtual void Page_Init(object sender, EventArgs e)
        {
            if (_RefrescaCamposEnCarga == "S")
            {
                RefrescaInfo();
            }

        }

        protected void DespliegaMensaje(string Mensaje)
        {
            Mensaje = Mensaje.Replace("'", "");
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox", "<script language='javascript'>alert('" + Mensaje + "');</script>");
        }


        protected void DespliegaMensajeUpdatePanel(string Mensaje,UpdatePanel panel)
        {
            Mensaje = Mensaje.Replace("'", "");
            Mensaje = Mensaje.Replace("\n", "");
            Mensaje = Mensaje.Replace("\r", "");
            string Script;
            Script = "alert('"+Mensaje+"')";
            ScriptManager.RegisterStartupScript(panel, panel.GetType(), "Script", Script, true);
        }

        protected void EstableceStatus(Label lblStatus, string Mensaje)
        {
            lblStatus.Text = Mensaje;
        }

        public virtual void ExportaGrid()
        {

        }

        protected void CargaForma()
        {

        }

        protected void CargaPeriodo()
        {

        }

        public string EmparejaNumeros(int Valor, int DigitosNecesarios, string Caracter)
        {
            string ValorEmparejado = Valor.ToString();

            int longitud = Valor.ToString().Trim().Length;

            if (longitud < DigitosNecesarios)
            {
                string resultado = new string(Caracter.ToCharArray()[0], DigitosNecesarios - longitud);
                resultado += Valor.ToString();
                ValorEmparejado = resultado;
            }

            return ValorEmparejado;
        }
    }
}