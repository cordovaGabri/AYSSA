<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="ASPP0001.aspx.cs" Inherits="MyMainApp.ASPP0001" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CPHPrincipal">

    <form id="form1" runat="server" class="form-horizontal">
        <%--inicio formulario--%>
        <div class="text-center">
            <%--  div titulo--%>
            <asp:Label ID="LblTitulo" runat="server" Text="Registro Aspirante" Font-Bold="True" Font-Size="18pt"></asp:Label>
        </div>
        <%--fin div titulo--%>
        
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">
            <div id="content">
                <asp:Panel ID="Panel1" runat="server" Width="100%">
                    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" BorderColor="#66CCFF" ScrollBars="Vertical" Height="375px" Width="100%">
                        <ajaxToolkit:TabPanel runat="server" HeaderText="DATOS GENERALES" ID="TabPanel1" Width="100%">
                            <ContentTemplate>
                                <asp:UpdatePanel ID="UPDatoGeneral" runat="server">
                                    <Triggers><asp:AsyncPostBackTrigger ControlID="BtnGuardarDatoGeneral" /></Triggers>
                                    <ContentTemplate>
                                <br />
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-3" ID="Label37" runat="server" Text="ESTADO:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-6">
                                            <asp:TextBox class="form-control" ID="TxtEstado" runat="server" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-2" ID="Label1" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtNombre" ReadOnly="True" runat="server"></asp:TextBox>
                                        </div>
                                        <asp:Label class="control-label  col-sm-3" ID="Label3" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtApellido" ReadOnly="True" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-2" ID="Label2" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtFechNac" runat="server" ReadOnly="True"></asp:TextBox>
                                        </div>
                                        <asp:Label class="control-label  col-sm-3" ID="Label5" runat="server" Text="EDAD:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtEdad" runat="server" ReadOnly="True"></asp:TextBox>
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtTelCel" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="DatoGeneral">Llenar Telefono Celular</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-2" ID="Label6" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtNit" runat="server" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-2" ID="Label29" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtDui" runat="server" AutoCompleteType="Disabled" TargetControlID="TxtDui"></asp:TextBox>
                                        </div>
                                        <asp:Label class="control-label  col-sm-3" ID="Label30" runat="server" Text="EMAIL:" Font-Bold="True" readonly></asp:Label>
                                        <div class="col-md-3">
                                            <asp:TextBox class="form-control" ID="TxtEmail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="DatoGeneral">Llenar email</asp:RequiredFieldValidator>
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
                                            <asp:TextBox class="form-control" ID="TxtTipoAspirante" runat="server" ReadOnly="True"></asp:TextBox>
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
                                            <asp:DropDownList ID="CboPais" runat="server" class="form-control" DataTextField="DS_PAIS" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="CboPais_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label class="control-label  col-sm-2" ID="Label17" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                        <div class="col-md-3">
                                            <asp:DropDownList ID="CboDepartamento" runat="server" class="form-control" DataTextField="DS_DEPARTAMENTO" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="CboDepartamento_SelectedIndexChanged">
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
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="DatoGeneral">Llenar Direccion</asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                                        <div align="center">
                                            <asp:Label ID="LblTitulo0" runat="server" Font-Bold="True" Font-Size="14pt" Text="DATOS REPRESENTANTE LEGAL"></asp:Label>
                                        </div>
                                        <br />
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
                                        <asp:Button ID="BtnGuardarDatoGeneral" runat="server" class="btn btn-primary" Text="GUARDAR" OnClick="BtnGuardarDatoGeneral_Click" ValidationGroup="DatoGeneral" />&nbsp;</div>
                                    <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                    <%--  </div>
                        <%--fin tab datos--%>
                    <%--<div class="tab-pane " id="Escol">--%>
                    <%--inicio tab informacion adicional--%>
                     <ajaxToolkit:TabPanel runat="server" HeaderText="ESCOLARIDAD" ID="TabPanel2">
                            <ContentTemplate>
                        <asp:UpdatePanel ID="UPEscolaridad" runat="server">
                            <Triggers><asp:AsyncPostBackTrigger ControlID="BtnEscolaridadGuardar" /></Triggers>
                            <ContentTemplate>
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
                                <asp:TextBox class="form-control" ID="TxtNotas" runat="server" AutoCompleteType="Disabled" ControlToValidate="TxtNotas"></asp:TextBox>
                             </div>
                        </div>
                        <br />
                        <div align="center">
                            <asp:Button ID="BtnEscolaridadGuardar" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnEscolaridadGuardar_Click" />&nbsp;<asp:Button ID="BtnEscolaridadCancelar" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False" />
                        </div>
                        <br />
                        <asp:GridView ID="GVEscolaridad" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GVEscolaridad_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                 <asp:TemplateField HeaderText="" Visible="False">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TxtIDEscolaridad" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                <asp:BoundField DataField="DS_ESCOLARIDAD" HeaderText="NIVEL EDUCATIVO" />
                                <asp:BoundField DataField="DS_CARRERA" HeaderText="OPCIÓN ACADÉMICA" />
                                <asp:BoundField DataField="DS_CENTRO_ESCOLAR" HeaderText="INSTITUCIÓN EDUCATIVA" />
                                <asp:BoundField DataField="DS_OTRA" HeaderText="OTRA INSTITUCIÓN" />
                                <asp:BoundField DataField="DS_PAIS" HeaderText="PAÍS" />
                                <asp:BoundField DataField="NM_ANIO_FIN" HeaderText="AÑO FIN" />
                                <asp:BoundField DataField="NM_PROMEDIO_NOTA" HeaderText="PROMEDIO" />
                                 <asp:TemplateField HeaderText="Eliminar">
                                            <ItemTemplate>
                                                <asp:Button ID="BtnEliminarEscolaridad" runat="server" CommandName="Delete" 
                                                    Text="Eliminar" OnClientClick="return confirm('¿Desea eliminar este archivo?');" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <br />

                            </ContentTemplate>
                        </asp:UpdatePanel>
                                 </ContentTemplate>
            </ajaxToolkit:TabPanel>
                    <%-- </div>--%>
                      <ajaxToolkit:TabPanel runat="server" HeaderText="HABILIDADES" ID="TabPanel3">
                            <ContentTemplate>
                    <div class="tab-pane" id="Habilidad">
                            <asp:UpdatePanel ID="UPHabilidad" runat="server">
                                <Triggers><asp:AsyncPostBackTrigger ControlID="GVHabilidad" /></Triggers>
                                <ContentTemplate>
                            <br />
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label9" runat="server" Font-Bold="True" Text="CONOCIMIENTO EN:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboCategoriaHabilidad" runat="server" class="form-control" DataTextField="DS_CATEGORIA_HABILIDAD" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="CboCategoriaHabilidad_SelectedIndexChanged">
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
                                <asp:Button ID="BtnGuardarHabilidad" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnGuardarHabilidad_Click" />&nbsp;<asp:Button ID="BtnCancelarHabilidad" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False" />
                            </div>
                            <br />
                            <asp:GridView ID="GVHabilidad" runat="server" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GVHabilidad_RowDeleting">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                     <asp:TemplateField HeaderText="" Visible="false">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TxtIDHabilidad" runat="server" Text='<%#Eval("ID")%>' Visible="False"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    <asp:BoundField HeaderText="CONOCIMIENTO" DataField="DS_CATEGORIA_HABILIDAD" />
                                    <asp:BoundField HeaderText="TIPO DE CONOCIMIENTO" DataField="DS_HABILIDAD_CONOCIMIENTO" />
                                    <asp:BoundField HeaderText="NIVEL" DataField="DS_NIVEL_CONOCIMIENTO" />
                                      <asp:TemplateField HeaderText="Eliminar">
                                            <ItemTemplate>
                                                <asp:Button ID="BtnEliminarConocimiento" runat="server" CommandName="Delete" 
                                                    Text="Eliminar" OnClientClick="return confirm('¿Desea eliminar este archivo?');" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </ContentTemplate>
                            </asp:UpdatePanel>
                    </div>
                                </ContentTemplate>
            </ajaxToolkit:TabPanel>
                    <%--fin tab habilidades--%>
                    <%--<div class="tab-pane" id="Destre">--%>
                    <%--inicio tab destrezas--%>
                      <ajaxToolkit:TabPanel runat="server" HeaderText="DESTREZAS" ID="TabPanel4">
                           <ContentTemplate>
                                <asp:UpdatePanel ID="UPDestreza" runat="server">
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="BtnGuardarDestreza" />
                                    </Triggers>
<ContentTemplate>
    
                        <br />

                        <div class="form-group">
                            <asp:Label class="control-label  col-sm-2" ID="Label42" runat="server" Font-Bold="True" Text="DESTREZA:"></asp:Label>
                            <div class="col-md-3">
                                <asp:DropDownList ID="CboDestreza" runat="server" class="form-control" DataTextField="DS_DESTREZA" DataValueField="ID">
                                </asp:DropDownList>

                            </div>
                        </div>
                        <div align="center">
                            <asp:Button ID="BtnGuardarDestreza" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnGuardarDestreza_Click" />&nbsp;<asp:Button ID="BtnCancelarDestreza" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False" />
                        </div>
                        <br />
                        <asp:GridView ID="GVDestreza" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnRowDeleting="GVDestreza_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                 <asp:TemplateField HeaderText="" Visible="false">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TxtIDDestreza" runat="server" Text='<%#Eval("ID")%>' Visible="False"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                <asp:BoundField HeaderText="DESTREZA" DataField="DS_DESTREZA" />
                                  <asp:TemplateField HeaderText="Eliminar">
                                            <ItemTemplate>
                                                <asp:Button ID="BtnEliminarDestreza" runat="server" CommandName="Delete" 
                                                    Text="Eliminar" OnClientClick="return confirm('¿Desea eliminar este archivo?');" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
    </ContentTemplate>
                    </asp:UpdatePanel>
                                  </ContentTemplate>
            </ajaxToolkit:TabPanel>
                    <%--</div>--%>
                    <%--fin tab DESTREZAS--%>
                    <%--<div class="tab-pane" id="Doc">
                            <%--inicio tab DOCUMENTOS--%>
                     <ajaxToolkit:TabPanel runat="server" HeaderText="DOCUMENTOS" ID="TabPanel5">
                            <ContentTemplate>
                    <asp:Panel ID="Panel5" runat="server">

                        <br />
                        
                        <asp:UpdatePanel ID="UPDocumento" runat="server" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="BtnGuardarDocumento" />
                            </Triggers>
                            <ContentTemplate>
                        <div class="form-group">
                            <asp:Label class="control-label  col-sm-2" ID="Label43" runat="server" Font-Bold="True" Text="TIPO DOCUMENTO:"></asp:Label>
                            <div class="col-md-3">
                                <asp:DropDownList ID="CboTipoDocumento" runat="server" class="form-control" DataTextField="DS_TIPO_DOCUMENTO" DataValueField="ID">
                                </asp:DropDownList>

                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label22" runat="server" Font-Bold="True" Text="ADJUNTAR DOCUMENTOS:"></asp:Label>
                                <div class="col-md-3">
                                    <ajaxToolkit:AsyncFileUpload ID="FileDocumento" runat="server" FailedValidation="False" OnUploadedComplete="FileDocumento_UploadedComplete" PersistFile="True" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label class="control-label  col-sm-2" ID="Label40" runat="server" Font-Bold="True" Text="DESCRIPCION:"></asp:Label>
                            <div class="col-md-8">
                                <asp:TextBox class="form-control" ID="TxtDescripcionDocumento" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <div align="center">
                            <asp:Button ID="BtnGuardarDocumento" runat="server" Text="GUARDAR" class="btn btn-primary" OnClick="BtnGuardarDocumento_Click" />&nbsp;<asp:Button ID="BtnCancelarDocumento" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False" />
                        </div>
                        <br />
                                <asp:GridView ID="GVDocumento" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnRowDeleting="GVDocumento_RowDeleting">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="" Visible="false">
                                            <ItemTemplate>
                                                <asp:TextBox ID="TxtIDDocumento" runat="server" Text='<%#Eval("ID")%>' Visible="False"></asp:TextBox>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="TIPO DOCUMENTO" DataField="DS_TIPO_DOCUMENTO" />
                                        <asp:BoundField HeaderText="DESCRIPCION" DataField="DS_DOCUMENTO" />
                                        <asp:BoundField HeaderText="FECHA" DataField="FECH_CREA" />
                                        <asp:TemplateField HeaderText="Descargar">
                                            <ItemTemplate>
                                                <a href='<%# "http://"+Request.Url.Authority +"/ASP/Documentos/"+Eval("URL_DOCUMENTO") %>' target="_blank">Descargar</a>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Eliminar">
                                            <ItemTemplate>
                                                <asp:Button ID="BtnEliminarDocumento" runat="server" CommandName="Delete"
                                                    Text="Eliminar" OnClientClick="return confirm('¿Desea eliminar este archivo?');" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </asp:Panel>
                
                                 </ContentTemplate>
            </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
                    </asp:Panel>
            </div>
            <%--fin contenido tab--%>
        </div>
        
            <%--fin container-fluid--%>
    </form>
    <%--fin formulario--%>
</asp:Content>




