using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ClsInterface;
namespace ClsDataApp
{
    public class CAspirante:CSqlvars
    {
        public CAspirante(string ConexionData)
        {
            _ConexionData = ConexionData;
        }

        public ClsDataSets.DS_TB_ASP Detalle(string Id, string Nombre, string Apellido, DateTime FechaNacimiento, char Sexo,
           string Telefono, string Direccion, string email,string Dui, string Nit,char EstadoAspirante,int IdTipoAspirante,
            int IdDepartamento, int IdMunicipio,int IdEscolaridad, int IdCentroEscolar, int IdDiscapacidad
            , string UsuaCrea, DateTime FechCrea, string UsuaActu, DateTime FechActu,int OpcionConsulta)
        {

            ClsDataSets.DS_TB_ASP objDataSet = new ClsDataSets.DS_TB_ASP();

            try
            { 
                ObjConnection = new SqlConnection(_ConexionData);
                ObjAdapter = new SqlDataAdapter("SP_TB_ASPIRANTE_GetByAll", ObjConnection);
                ObjParam = new SqlParameter();
                ObjAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID", Id);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_NOMBRE", Nombre);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_APELLIDO", Apellido);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@FECH_NACIMIENTO", FechaNacimiento);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_SEXO", Sexo);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_TELEFONO", Telefono);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_DIRECCION", Direccion);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_EMAIL", email);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_DUI", Dui);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@DS_NIT", Nit);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_ESTADO_ASPIRANTE", EstadoAspirante);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_TIPO_ASPIRANTE", IdTipoAspirante);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_DEPARTAMENTO", IdDepartamento);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_MUNICIPIO", IdMunicipio);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_ESCOLARIDAD", IdEscolaridad);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_CENTRO_ESCOLAR", IdCentroEscolar);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@ID_DISCAPACIDAD", IdDiscapacidad);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@USUA_CREA", UsuaCrea);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@FECH_CREA", FechCrea);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@USUA_ACTU", UsuaActu);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@FECH_ACTU", FechActu);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@OPCI_CONS", OpcionConsulta);


                ObjAdapter.Fill(objDataSet, "TB_ASPIRANTE");

                ObjConnection.Close();

                if (ObjConnection.State != ConnectionState.Closed)
                {
                    ObjConnection.Close();
                }

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return objDataSet;
        }

        public DataQuery Actualizacion(string Empresa, string Ejercicio, string Periodo, decimal CodigoOrdenCompra,
            string FechaPreparacion, string IndicaContrato, string FechaCompra, string NumeroOrden,
            int CodigoTipoCompra, int CodigoUnidadReceptora, decimal Proveedor, int PlazoEntrega, string TipoDias, string Estado,
            int TipoDocRespaldo, string FechaEsperadaRecepcion, string FechaRecepcion, string FechaFactura, string NumeroFactura, string TipoEntrega,
            string MotivoRetraso, string SolicitudProrroga, string ResolucionProrroga, string FechaProrroga, string TituloCompra,
            int OpcionConsulta, string LoginUsuario, TipoActualizacion OpcionActualizacion)
        {

            DataQuery objResultado = new DataQuery();

            try
            {

                string StrCommand = "";

                switch (OpcionActualizacion)
                {
                    case TipoActualizacion.Adicionar:
                        StrCommand = "PRAL_INSE_ADQ_ENCA_ORD_COMPRA";
                        break;
                    case TipoActualizacion.Actualizar:
                        StrCommand = "PRAL_ACTU_ADQ_ENCA_ORD_COMPRA";
                        break;
                    case TipoActualizacion.Eliminar:
                        StrCommand = "PRAL_ELIM_ADQ_ENCA_ORD_COMPRA";
                        break;
                    case TipoActualizacion.No_Definida:
                        objResultado.CodigoError = -1;
                        objResultado.MensajeError = "Opcion de Actualizacion No Definida. Objeto COpcionesSistemas. Metodo Actualizacion";
                        //return objResultado;
                        break;
                }



                ObjConnection = new SqlConnection(_ConexionData);

                ObjCommand = new SqlCommand(StrCommand, ObjConnection);
                ObjParam = new SqlParameter();
                ObjCommand.CommandType = CommandType.StoredProcedure;

                ObjCommand.Parameters.AddWithValue("@CD_EMPRESA", Empresa);
                ObjCommand.Parameters.AddWithValue("@CD_EJERCICIO", Ejercicio);
                ObjCommand.Parameters.AddWithValue("@CD_PERIODO", Periodo);
                if (OpcionActualizacion == TipoActualizacion.Adicionar)
                {
                    ObjParam = ObjCommand.Parameters.Add("@CD_ORDEN_COMPRA", SqlDbType.Int, 0);
                    ObjParam.Direction = ParameterDirection.Output;
                }
                else
                {
                    ObjCommand.Parameters.AddWithValue("@CD_ORDEN_COMPRA", CodigoOrdenCompra);
                }

                if (TipoDocRespaldo == 0)
                {
                    ObjCommand.Parameters.AddWithValue("@CD_TIPO_DOC_RESPALDO", System.DBNull.Value);
                }
                else
                {
                    ObjCommand.Parameters.AddWithValue("@CD_TIPO_DOC_RESPALDO", TipoDocRespaldo);
                }

                ObjCommand.Parameters.AddWithValue("@FE_FECH_PREPARACION", FechaPreparacion);
                ObjCommand.Parameters.AddWithValue("@CD_IND_CONTRATO", IndicaContrato);
                ObjCommand.Parameters.AddWithValue("@FE_FECH_COMPRA", FechaCompra);
                ObjCommand.Parameters.AddWithValue("@NM_NUM_ORDEN", NumeroOrden);
                ObjCommand.Parameters.AddWithValue("@CD_TIPO_COMPRA", CodigoTipoCompra);
                ObjCommand.Parameters.AddWithValue("@CD_UNIDAD_RECEPTORA", CodigoUnidadReceptora);
                ObjCommand.Parameters.AddWithValue("@CD_PROVEEDOR", Proveedor);
                ObjCommand.Parameters.AddWithValue("@NM_PLAZO_ENTREGA", PlazoEntrega);
                ObjCommand.Parameters.AddWithValue("@CD_TIPO_DIAS", TipoDias);
                ObjCommand.Parameters.AddWithValue("@CD_ESTADO", Estado);

                ObjCommand.Parameters.AddWithValue("@FE_FECH_ESPE_RECEP", FechaEsperadaRecepcion);

                if (FechaRecepcion.Trim().Length == 0)
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECH_RECEPCION", System.DBNull.Value);
                }
                else
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECH_RECEPCION", FechaRecepcion);
                }

                if (FechaFactura.Trim().Length == 0)
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECH_FACTURA", System.DBNull.Value);
                }
                else
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECH_FACTURA", FechaFactura);
                }
                ObjCommand.Parameters.AddWithValue("@NM_FACTURA", NumeroFactura);
                ObjCommand.Parameters.AddWithValue("@TIPO_ENTREGA", TipoEntrega);
                ObjCommand.Parameters.AddWithValue("@DS_MOTIVO_RETRASO", MotivoRetraso);
                ObjCommand.Parameters.AddWithValue("@DS_SOL_PRORROGA", SolicitudProrroga);
                ObjCommand.Parameters.AddWithValue("@DS_RES_PRORROGA", ResolucionProrroga);
                ObjCommand.Parameters.AddWithValue("@DS_TITULO_COMPRA", TituloCompra);

                if (FechaProrroga.Trim().Length == 0)
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECHA_PRORROGA", System.DBNull.Value);
                }
                else
                {
                    ObjCommand.Parameters.AddWithValue("@FE_FECHA_PRORROGA", FechaProrroga);
                }
                ObjCommand.Parameters.AddWithValue("@OPCI_CONS", OpcionConsulta);


                ObjCommand.Parameters.AddWithValue("@LOGIN_USUARIO", LoginUsuario);

                ObjParam = ObjCommand.Parameters.Add("@FILAS_AFECTADAS", SqlDbType.Int, 0);
                ObjParam.Direction = ParameterDirection.Output;

                ObjParam = ObjCommand.Parameters.Add("@NumeroError", SqlDbType.Decimal);
                ObjParam.Precision = 38;
                ObjParam.Scale = 0;
                ObjParam.Direction = ParameterDirection.Output;

                ObjParam = ObjCommand.Parameters.Add("@MensajeError", SqlDbType.NVarChar, 4000);
                ObjParam.Direction = ParameterDirection.Output;

                ObjConnection.Open();
                ObjCommand.ExecuteNonQuery();

                objResultado.CodigoAuxiliar = (object)ObjCommand.Parameters["@CD_ORDEN_COMPRA"].Value;
                objResultado.FilasAfectadas = (int)ObjCommand.Parameters["@FILAS_AFECTADAS"].Value;
                objResultado.CodigoError = (decimal)ObjCommand.Parameters["@NumeroError"].Value;
                objResultado.MensajeError = (string)ObjCommand.Parameters["@MensajeError"].Value;

                ObjConnection.Close();

                if (ObjConnection.State != ConnectionState.Closed)
                {
                    ObjConnection.Close();
                }


            }
            catch (Exception ex)
            {
                objResultado.CodigoError = -1;
                objResultado.MensajeError = ex.Message;
            }

            return objResultado;

        }
    }
}