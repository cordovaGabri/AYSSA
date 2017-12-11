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

        public ClsDataSets.DS_TB_ASP Detalle(string Empresa, string Ejercicio, string Periodo, string Estado, decimal CodigoOrdenCompra,
           string NumeroOrdenContrato, int CodigoTipoCompra, int CodigoUnidadReceptora,
           decimal CodigoProveedor, int CodigoTipoDocRespaldo, string LoginUsuario,
           int OpcionConsulta)
        {
            ClsDataSets.DS_TB_ASP objDataSet = new ClsDataSets.DS_TB_ASP();

            try
            {

                ObjConnection = new SqlConnection(_ConexionData);
                ObjAdapter = new SqlDataAdapter("PRAL_DATA_ADQ_ENCA_ORD_COMPRA", ObjConnection);
                ObjParam = new SqlParameter();
                ObjAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_EMPRESA", Empresa);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_EJERCICIO", Ejercicio);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_PERIODO", Periodo);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_ESTADO", Estado);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_ORDEN_COMPRA", CodigoOrdenCompra);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@NM_NUM_ORDEN", NumeroOrdenContrato);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_TIPO_COMPRA", CodigoTipoCompra);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_UNIDAD_RECEPTORA", CodigoUnidadReceptora);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_PROVEEDOR", CodigoProveedor);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@CD_TIPO_DOC_RESPALDO", CodigoTipoDocRespaldo);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@LOGIN_USUARIO", LoginUsuario);
                ObjAdapter.SelectCommand.Parameters.AddWithValue("@OPCI_CONS", OpcionConsulta);


                ObjAdapter.Fill(objDataSet, "ADQ_ENCA_ORD_COMPRA");

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