<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProceso.master" AutoEventWireup="true" CodeBehind="EMPP0001.aspx.cs" Inherits="MyMainApp.EMP.EMP0001" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <form id="form1" runat="server" class="form-horizontal">
            <%--inicio formulario--%>
            <div class="text-center">
                <%--  div titulo--%>
                <asp:Label ID="LblTitulo" runat="server" Text="Registro de Empresa" Font-Bold="True" Font-Size="20pt"></asp:Label>
            </div>
            <%--fin div titulo--%>
            <div class="container-fluid">
                <div id="content">
                    <%--inicio container-fluid--%>
                    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                        <li  class="active"><a href="#Datos" data-toggle="tab">DATOS GENERALES</a></li>
                        <li><a href="#Pasantia" data-toggle="tab">PASANTIA</a></li>
                        <li  ><a href="#Proyecto" data-toggle="tab">PROYECTOS</a></li>
                    </ul>
                    <div id="my-tab-content" class="tab-content ">
                        <%--inicio contenido tab--%>
                        <div id="Datos" class="tab-pane active">
                            <%--inicio tab datos--%>
                            <br />
                            <asp:Panel ID="PanDatos" runat="server">
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label1" runat="server" Text="NOMBRE DE EMPRESA:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-9">
                                        <asp:TextBox class="form-control" ID="TxtEmpresa" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEmpresa">Llenar Nombre de Empresa</asp:RequiredFieldValidator>
                                    </div>
                                    </div>
                                    <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label3" runat="server" Text="ACTIVIDAD ECONÓMICA:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                         <asp:DropDownList ID="CboActEcono" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label41" runat="server" Text="NOMBRE DE CONTACTO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtNombreContact" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNombreContact">Llenar Nombre de contacto</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label2" runat="server" Text="EMAIL DE CONTACTO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtEmailC" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEmailC">Llenar email de contacto</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label5" runat="server" Text="TELÉFONO DE CONTACTO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtTelC" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtTelC">Llenar Telefono de contacto</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label4" runat="server" Text="NIT DE EMPESA:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtNitEmpresa" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNitEmpresa">Llenar Nit de empresa</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label6" runat="server" Text="TELÉFONO EMPRESA:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtTelEmpresa" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtTelEmpresa">Llenar Telefono de empresa</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label7" runat="server" Font-Bold="True" Text="DIRECCIÓN EMPRESA:"></asp:Label>
                                    <div class="col-md-9">
                                        <asp:TextBox class="form-control" ID="TxtDirEmpresa" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDirEmpresa">Llenar Direccion de empresa</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label8" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="CboDepartamento" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label10" runat="server" Font-Bold="True" Text="MUNICIPIO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="CboMunicipio" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label11" runat="server" Text="NOMBRE REPRESENTANTE LEGAL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtNombRepre" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNombRepre">Llenar Nombre de representante legal</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label13" runat="server" Text="EMAIL DE REPRESENTANTE LEGAL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtEmailRep" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEmailRep">Llenar email de representante legal</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label14" runat="server" Text="NIT REPRESENTANTE LEGAL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtNitRep" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNitRep">Llenar Nit de representante legal</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label15" runat="server" Text="DUI REPRESENTANTE LEGAL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtDuiRep" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDuiRep">Llenar Dui de representante legal</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <br />
                                <div align="center">
                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="GUARDAR" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" Text="CANCELAR" class="btn btn-primary" CausesValidation="False"/>
                                </div>
                                <br />
                            </asp:Panel>
                        </div>
                        <%--fin tab datos--%>
                        <div class="tab-pane " id="Pasantia">
                            <%--inicio tab Pasantia--%>
                            <asp:Panel ID="PanInfor" runat="server">
                                <br />
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label17" runat="server" Font-Bold="True" Text="NOMBRE DEL EVALUADOR:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtNombEva" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNombEva">Llenar Nombre de evaluador</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label23" runat="server" Font-Bold="True" Text="EMAIL DE CONTACTO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtEmailEva" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEmailC">Llenar email de contacto</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label16" runat="server" Font-Bold="True" Text="AREA DE PASANTIA:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:DropDownList ID="CboAreaPasantia" runat="server" class="form-control">
                                        </asp:DropDownList>
                                    
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label24" runat="server" Font-Bold="True" Text="ESTADO"></asp:Label>
                                    <div class="col-md-3">
                                         <asp:DropDownList ID="CboEstadoPasantia" runat="server" class="form-control">
                                             <asp:ListItem Value="D">Disponible</asp:ListItem>
                                             <asp:ListItem Value="N">No disponible</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label18" runat="server" Font-Bold="True" Text="DESCRIPCIÓN DE PASANTÍA:"></asp:Label>
                                    <div class="col-md-9">
                                        <asp:TextBox class="form-control" ID="TxtDescPasantia" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDescPasantia">Llenar Descripcion de pasantia</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label19" runat="server" Font-Bold="True" Text="FECHA INICIO:"></asp:Label>
                                     <div class="col-md-3">
                                     <asp:TextBox class="form-control" ID="TxtFechInicio" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtFechInicio">Llenar Fecha de inicio de pasantia</asp:RequiredFieldValidator>
                                   </div>
                                   <asp:Label class="control-label  col-sm-3" ID="Label25" runat="server" Font-Bold="True" Text="DURACIÓN DE PASANTIA:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtDuracion" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDuracion">Llenar Duración de pasantia</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label20" runat="server" Font-Bold="True" Text="HORARIO:"></asp:Label>
                                    <asp:Label class="control-label  col-sm-1" ID="Label28" runat="server" Font-Bold="True" Text="DE:"></asp:Label>
                                    <div class="col-md-1">
                                        <asp:TextBox class="form-control" ID="TxtDe" runat="server" AutoCompleteType="Disabled" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDe">Llenar Horario de pasantia</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-1" ID="Label26" runat="server" Font-Bold="True" Text="A:"></asp:Label>
                                    <div class="col-md-1">
                                        <asp:TextBox class="form-control" ID="TxtA" runat="server" TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtA">Llenar Horario de pasantia</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-2" ID="Label29" runat="server" Font-Bold="True" Text="DÍAS:"></asp:Label>
                                    <asp:Label class="control-label  col-sm-1" ID="Label30" runat="server" Font-Bold="True" Text="DE:"></asp:Label>
                                    <div class="col-md-1">
                                         <asp:DropDownList ID="CboDias1" runat="server" class="form-control">
                                             <asp:ListItem Value="1">Lunes</asp:ListItem>
                                             <asp:ListItem Value="2">Martes</asp:ListItem>
                                             <asp:ListItem Value="3">Miércoles</asp:ListItem>
                                             <asp:ListItem Value="4">Jueves</asp:ListItem>
                                             <asp:ListItem Value="5">Viernes</asp:ListItem>
                                        </asp:DropDownList>
                                    
                                    </div>
                                    <asp:Label class="control-label  col-sm-1" ID="Label31" runat="server" Font-Bold="True" Text="A:"></asp:Label>
                                    <div class="col-md-1">
                                         <asp:DropDownList ID="CboDias2" runat="server" class="form-control">
                                             <asp:ListItem Value="1">Lunes</asp:ListItem>
                                             <asp:ListItem Value="2">Martes</asp:ListItem>
                                             <asp:ListItem Value="3">Miércoles</asp:ListItem>
                                             <asp:ListItem Value="4">Jueves</asp:ListItem>
                                             <asp:ListItem Value="5">Viernes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label21" runat="server" Font-Bold="True" Text="RANGO DE EDAD:"></asp:Label>
                                    <asp:Label class="control-label  col-sm-1" ID="Label34" runat="server" Font-Bold="True" Text="DE:"></asp:Label>
                                    <div class="col-md-1">
                                        <asp:TextBox class="form-control" ID="TxtEdadDe" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEdadDe">Llenar Rango de edad</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-1" ID="Label35" runat="server" Font-Bold="True" Text="A:"></asp:Label>
                                    <div class="col-md-1">
                                        <asp:TextBox class="form-control" ID="TxtEdadA" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtEdadA">Llenar Rango de edad</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label32" runat="server" Font-Bold="True" Text="CANTIDAD DE VACANTES:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtCantVacantes" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtCantVacantes">Llenar cantidad de vacantes</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-3" ID="Label22" runat="server" Font-Bold="True" Text="NIVEL EDUCATIVO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboNivelEducativo" runat="server" class="form-control" DataTextField="DS_ESCOLARIDAD" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label27" runat="server" Font-Bold="True" Text="OPCIÓN ACADÉMICA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="CboOpcionAcademica" runat="server" class="form-control" DataTextField="DS_CARRERA" DataValueField="ID">
                                    </asp:DropDownList>
                                </div>
                            </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label36" runat="server" Font-Bold="True" Text="SUCURSAL:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtSucursal" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtSucursal">Llenar Sucursal </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label37" runat="server" Font-Bold="True" Text="DIRECCIÓN DE SUCURSAL:"></asp:Label>
                                    <div class="col-md-9">
                                        <asp:TextBox class="form-control" ID="TxtDireccion" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                </div>
                                <br />
                                <div align="center">
                                    <asp:Button ID="Button4" runat="server" Text="GUARDAR" class="btn btn-primary"/>
                                    &nbsp;<asp:Button ID="Button5" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                                </div>
                                <asp:GridView ID="GVPasantia" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField HeaderText="Nombre de Pasantía" />
                                        <asp:BoundField HeaderText="Área de pasantía" />
                                        <asp:BoundField HeaderText="Duración de pasantía" />
                                        <asp:BoundField HeaderText="Estado" />
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

                            </asp:Panel>
                        </div>
                        <%--fin tab Pasantia--%>
                        <div class="tab-pane" id="Proyecto">
                            <%--inicio tab proyecto--%>
                            <asp:Panel ID="Panel3" runat="server">
                                <br />
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label9" runat="server" Font-Bold="True" Text="No CONTRATO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtContrato" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtContrato">Llenar No de contrato</asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label12" runat="server" Font-Bold="True" Text="DURACIÓN DE CONTRATO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtDuracionC" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtDuracionC">Llenar duracion de contrato</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label33" runat="server" Font-Bold="True" Text="NOMBRE DE PROYECTO:"></asp:Label>
                                    <div class="col-md-9">
                                        <asp:TextBox class="form-control" ID="TxtNombProyecto" runat="server" TextMode="MultiLine" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtNombProyecto">Llenar nombre de proyecto</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label38" runat="server" Font-Bold="True" Text="FECHA DE INICIO DE CONTRATO:"></asp:Label>
                                     <div class="col-md-3">
                                     <asp:TextBox class="form-control" ID="TxtFechIniCont" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtFechIniCont">Llenar fecha de inicio de contrato</asp:RequiredFieldValidator>
                                   </div>
                                   <asp:Label class="control-label  col-sm-3" ID="Label39" runat="server" Font-Bold="True" Text="ESTADO"></asp:Label>
                                    <div class="col-md-3">
                                         <asp:DropDownList ID="CboEstadoPro" runat="server" class="form-control">
                                             <asp:ListItem Value="1">Disponible</asp:ListItem>
                                             <asp:ListItem Value="2">No disponible</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-3" ID="Label40" runat="server" Font-Bold="True" Text="MONTO DE PROYECTO:"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TxtMontoPro" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TxtMontoPro">Llenar monto de proyecto</asp:RequiredFieldValidator>
                                    </div>
                                 </div>
                                <div align="center">
                                    <asp:Button ID="Button3" runat="server" Text="GUARDAR" class="btn btn-primary"/>
                                    &nbsp;<asp:Button ID="Button6" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                                </div>
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField HeaderText="Nombre de proyecto" />
                                        <asp:BoundField HeaderText="Fecha de contrato" />
                                        <asp:BoundField HeaderText="Duración de contrato" />
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
                            </asp:Panel>
                        </div>
                        <%--fin tab habilidades--%>
                    </div>
                </div>
                <%--fin contenido tab--%>
            </div>
            <%--fin container-fluid--%>
        </form>
        <%--fin formulario--%>
    </asp:Panel>
</asp:Content>

