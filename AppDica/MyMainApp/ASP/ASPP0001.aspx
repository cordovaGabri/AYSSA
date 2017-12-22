<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="ASPP0001.aspx.cs" Inherits="MyMainApp.ASPP0001" %>



<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CPHPrincipal">


    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <form id="form1" runat="server" class="form-horizontal">
            <%--inicio formulario--%>
            <div class="text-center">
                <%--  div titulo--%>
                <asp:Label ID="LblTitulo" runat="server" Text="Registro Aspirante" Font-Bold="True" Font-Size="20pt"></asp:Label>
            </div>
            <%--fin div titulo--%>
            
            <div class="container-fluid">
                 <div id="content">
                <%--inicio container-fluid--%>
                <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                    <li  class="active"><a href="#Datos" data-toggle="tab">DATOS GENERALES</a></li>
                    <li><a href="#Escol" data-toggle="tab">ESCOLARIDAD</a></li>
                    <li  ><a href="#Habilidad" data-toggle="tab">HABILIDADES</a></li>
                    <li  ><a href="#Destre" data-toggle="tab">DESTREZAS</a></li>
                    <li  ><a href="#Doc" data-toggle="tab">DOCUMENTOS</a></li>
                </ul>   
                <div id="my-tab-content" class="tab-content ">
        
                    <%--inicio contenido tab--%>
                    <div id="Datos" class="tab-pane active">
                        <%--inicio tab datos--%>
                        <br />
                        <asp:Panel ID="PanDatos" runat="server">
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-3" ID="Label37" runat="server" Text="ESTADO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-6">
                                    <asp:TextBox class="form-control" ID="TxtEstado" runat="server" ReadOnly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label1" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtNombre" readonly runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label3" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtApellido" readonly runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label2" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtFechNac" runat="server" readonly></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label5" runat="server" Text="EDAD:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtEdad" runat="server" readonly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label4" runat="server" Text="TELÉFONO (CASA):" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtTelCasa" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label41" runat="server" Text="TELÉFONO (CELULAR):" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtTelCel" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtTelCel" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Llenar Telefono Celular</asp:RequiredFieldValidator>
                                </div>
                                </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label6" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtNit" runat="server" readonly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label29" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtDui" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label30" runat="server" Text="EMAIL:" Font-Bold="True" readonly></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtEmail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Llenar email</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label7" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:RadioButtonList ID="RadioSexo" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="F" Selected="True">&nbsp;FEMENINO&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                        <asp:ListItem Value="M">&nbsp;MASCULINO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label31" runat="server" Text="TIPO ASPIRANTE:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtTipoAspirante" runat="server" readonly></asp:TextBox>
                                </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label8" runat="server" Text="TRATAMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboTratamiento" runat="server" class="form-control" DataTextField="DS_TITULO" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label26" runat="server" Font-Bold="True" Text="DISCAPACIDAD 1:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtDiscapacidad1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label32" runat="server" Font-Bold="True" Text="DISCAPACIDAD 2:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtDiscapacidad2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label34" runat="server" Font-Bold="True" Text="DISCAPACIDAD 3:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtDiscapacidad3" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label38" runat="server" Text="PAIS:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                     <asp:DropDownList ID="CboPais" runat="server" class="form-control" DataTextField="DS_PAIS" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label17" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboDepartamento" runat="server" class="form-control" DataTextField="DS_DEPARTAMENTO" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label23" runat="server" Font-Bold="True" Text="MUNICIPIO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboMunicipio" runat="server" class="form-control" DataTextField="DS_MUNICIPIO" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label18" runat="server" Font-Bold="True" Text="DIRECCIÓN:"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="TxtDireccion" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Llenar Direccion</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- representante legal--%>
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                                <div align="center">
                                    <%--inicio titulo 2--%>
                                    <asp:Label ID="LblTitulo0" runat="server" Font-Bold="True" Font-Size="14pt" Text="DATOS REPRESENTANTE LEGAL"></asp:Label>
                                </div>
                                <%--fin titulo 2--%><br />
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label15" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextNombreR" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label16" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextApellidoR" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label24" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:RadioButtonList ID="RadioSexoR" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="F">&nbsp;FEMENINO&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                        <asp:ListItem Value="M">&nbsp;MASCULINO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label35" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextFechNacR" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                 </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label10" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextDuiR" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label13" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextNitR" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label11" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextEmailR" runat="server" TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label14" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextTelR" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label25" runat="server" Font-Bold="True" Text="DIRECCIÓN:"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="TextDireccionR" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-3" ID="Label36" runat="server" Text="TRATAMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboTratamientoRepresentante" runat="server" class="form-control" DataTextField="DS_TITULO" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                </div>
                            </asp:Panel>
                            <br />
                            <div align="center">
                                <asp:Button ID="BtnGuardarDatoGeneral" runat="server" class="btn btn-primary" Text="GUARDAR" OnClick="BtnGuardarDatoGeneral_Click" />&nbsp;<asp:Button ID="BtnCancelarDatoGeneral" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False"/>
                            </div>
                            <br />
                        </asp:Panel>
                    </div>
                    <%--fin tab datos--%>
                    <div class="tab-pane " id="Escol">
                        <%--inicio tab informacion adicional--%>
                        <asp:Panel ID="PanInfor" runat="server">
                            <br />  
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label19" runat="server" Font-Bold="True" Text="NIVEL EDUCATIVO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboNivelEducativo" runat="server" class="form-control" DataTextField="DS_ESCOLARIDAD" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label28" runat="server" Font-Bold="True" Text="OPCION ACADEMICA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboOpcionAcademica" runat="server" class="form-control" DataTextField="DS_CARRERA" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label20" runat="server" Font-Bold="True" Text="INSTITUCION EDUCATIVA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboInstitucion" runat="server" class="form-control" DataTextField="DS_CENTRO_ESCOLAR" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label21" runat="server" Font-Bold="True" Text="OTRA INSTITUCION:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtOtraInstitucion" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label27" runat="server" Font-Bold="True" Text="PAIS:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboPaisEscolaridad" runat="server" class="form-control" DataTextField="DS_PAIS" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label39" runat="server" Font-Bold="True" Text="AÑO DE FINALIZACION:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtAnioFin" runat="server" AutoCompleteType="Disabled" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                           
                          <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label44" runat="server" Text="PROMEDIO DE NOTAS:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TxtNotas" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div align="center">
                                <asp:Button ID="BtnEscolaridadGuardar" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnEscolaridadGuardar_Click"/>&nbsp;<asp:Button ID="BtnEscolaridadCancelar" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GVEscolaridad" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="DS_ESCOLARIDAD" HeaderText="Nivel Educativo" />
                                    <asp:BoundField DataField="DS_CARRERA" HeaderText="Opción Académica" />
                                    <asp:BoundField DataField="DS_CENTRO_ESCOLAR" HeaderText="Institución Educativa" />
                                    <asp:BoundField DataField="DS_OTRA" HeaderText="Otra Institución" />
                                    <asp:BoundField DataField="DS_PAIS" HeaderText="País" />
                                    <asp:BoundField DataField="NM_ANIO_FIN" HeaderText="Año Fin" />
                                    <asp:BoundField DataField="NM_PROMEDIO_NOTA" HeaderText="Promedio" />
                                </Columns>
                            </asp:GridView>
                            <br />
                        </asp:Panel>
                    </div>
                    <%--fin tab informacion adicional--%>
                    <div class="tab-pane" id="Habilidad">
                        <%--inicio tab habilidades--%>
                        <asp:Panel ID="Panel3" runat="server">
                            <br />
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label9" runat="server" Font-Bold="True" Text="CONOCIMIENTO EN:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboCategoriaHabilidad" runat="server" class="form-control" DataTextField="DS_CATEGORIA_HABILIDAD" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label class="control-label  col-sm-2" ID="Label12" runat="server" Font-Bold="True" Text="TIPO DE CONOCIMIENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboConocimiento" runat="server" class="form-control" DataTextField="DS_HABILIDAD_CONOCIMIENTO" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label33" runat="server" Font-Bold="True" Text="NIVEL:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboNivel" runat="server" class="form-control" DataTextField="DS_NIVEL_CONOCIMIENTO" DataValueField="ID">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="BtnGuardarHabilidad" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnGuardarHabilidad_Click"/>&nbsp;<asp:Button ID="BtnCancelarHabilidad" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GVHabilidad" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" Width="100%">
                                <Columns>
                                    <asp:BoundField HeaderText="CONOCIMIENTO" DataField="DS_CATEGORIA_HABILIDAD" />
                                    <asp:BoundField HeaderText="TIPO DE CONOCIMIENTO" DataField="DS_HABILIDAD_CONOCIMIENTO" />
                                    <asp:BoundField HeaderText="NIVEL" DataField="DS_NIVEL_CONOCIMIENTO" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                    <%--fin tab habilidades--%>
                    <div class="tab-pane" id="Destre">
                        <%--inicio tab destrezas--%>
                        <asp:Panel ID="Panel4" runat="server">
                            <br />
                            
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label42" runat="server" Font-Bold="True" Text="DESTREZA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboDestreza" runat="server" class="form-control" DataTextField="DS_DESTREZA" DataValueField="ID">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="BtnGuardarDestreza" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnGuardarDestreza_Click"/>&nbsp;<asp:Button ID="BtnCancelarDestreza" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GVDestreza" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                                <Columns>
                                    <asp:BoundField HeaderText="DESTREZA" DataField="DS_DESTREZA" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                    <%--fin tab DESTREZAS--%>
                    <div class="tab-pane" id="Doc">
                        <%--inicio tab DOCUMENTOS--%>
                        <asp:Panel ID="Panel5" runat="server">
                            <br />
                            
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label43" runat="server" Font-Bold="True" Text="TIPO DOCUMENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboTipoDocumento" runat="server" class="form-control" DataTextField="DS_TIPO_DOCUMENTO" DataValueField="ID">
                                    </asp:DropDownList>

                                </div>
                                 <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label22" runat="server" Font-Bold="True" Text="ADJUNTAR DOCUMENTOS:"></asp:Label>
                                <div class="col-md-3">
                                    <input type="button" value="Adjuntar" onclick="open_win_doc">
                                </div>
                            </div>
                            <script type="text/javascript">
                                function open_win_doc() {
                                    alert("hola");
                                    var myWindow = window.open("DetalleSolicitud.aspx", "Dates", "scrollbars=yes,resizable=yes", "width=950,height=650");
                                }
                            </script>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label40" runat="server" Font-Bold="True" Text="DESCRIPCION:"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="TextDescripcion" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="Button9" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button10" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GVDocumento" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
                                <Columns>
                                    <asp:BoundField HeaderText="TIPO DOCUMENTO" />
                                    <asp:BoundField HeaderText="DESCRIPCION" />
                                    <asp:BoundField HeaderText="FECHA" />
                                    <asp:BoundField HeaderText="ACCION" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                    <%--fin tab DOCUMENTOS--%>
                </div>
                </div>
                <%--fin contenido tab--%>
            </div>
            <%--fin container-fluid--%>
        </form>
        <%--fin formulario--%>
    </asp:Panel>
</asp:Content>




