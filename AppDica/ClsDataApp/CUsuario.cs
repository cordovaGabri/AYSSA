using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ClsInterface;
using SIS.Framework.Common;

namespace ClsDataApp
{
    public class CUsuario :CSqlvars
    {
        DataQuery objResultado = new DataQuery();
        public CUsuario(string ConexionData)
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

        public DataQuery Actualizacion(string Id, string NombreUsuario, string Password, string IdPerfil,
            string Email, char EstadoUsuario, string LoginUsuario, TipoActualizacion OpcionActualizacion)
        {
            try
            {
                string StrCommand = "";

                switch (OpcionActualizacion)
                {
                    case TipoActualizacion.Adicionar:
                        StrCommand = "SP_TBC_USUARIO_INSERT";
                        break;
                    case TipoActualizacion.Actualizar:
                        StrCommand = "";
                        break;
                    case TipoActualizacion.Eliminar:
                        StrCommand = "";
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
                
                ObjCommand.Parameters.AddWithValue("@ID", Id);
                ObjCommand.Parameters.AddWithValue("@DS_NOMBRE_USUARIO", NombreUsuario);
                 byte[] ClaveUsuarioE;
                if (Password.Trim().Length > 0)
                {
                    ClaveUsuarioE = GeneraClave(Password.Trim());
                    ObjCommand.Parameters.AddWithValue("@CD_CLAVE_USUARIO", ClaveUsuarioE);
                }
                else
                {
                    ObjCommand.Parameters.Add("@CD_CLAVE_USUARIO", System.Data.SqlDbType.VarBinary).Value = DBNull.Value;
                }
                ObjCommand.Parameters.AddWithValue("@ID_PERFIL_PERFIL", IdPerfil);
                ObjCommand.Parameters.AddWithValue("@DS_DIRE_EMAIL", Email);
                ObjCommand.Parameters.AddWithValue("@CD_ESTADO_USUARIO", EstadoUsuario);

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

                objResultado.CodigoAuxiliar = Id;
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


        private byte[] GeneraClave(string Contrasena)
        {
            byte[] ClaveEncriptada;
            CEncriptacion objEncripcion = new CEncriptacion();
            ClaveEncriptada = objEncripcion.Encrypt(CEncriptacion.ToBase64(Contrasena));

            return ClaveEncriptada;
        }
    }
}