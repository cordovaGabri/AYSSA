﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="ASPP0001.aspx.cs" Inherits="MyMainApp.ASPP0001" %>



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
                    <li><a href="#Infor" data-toggle="tab">INFORMACIÓN ADICIONAL</a></li>
                    <li  ><a href="#Habilidad" data-toggle="tab">HABILIDADES</a></li>
                </ul>   
                <div id="my-tab-content" class="tab-content ">
        
                    <%--inicio contenido tab--%>
                    <div id="Datos" class="tab-pane active">
                        <%--inicio tab datos--%>
                        <br />
                        <asp:Panel ID="PanDatos" runat="server">
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label1" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label3" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label2" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label5" runat="server" Text="EDAD:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label4" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label6" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label7" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="F">&nbsp;FEMENINO&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                        <asp:ListItem Value="M">&nbsp;MASCULINO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label8" runat="server" Text="TRATAMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <%-- representante legal--%>
                            <asp:Panel ID="Panel2" runat="server">
                                <div align="center">
                                    <%--inicio titulo 2--%>
                                    <asp:Label ID="LblTitulo0" runat="server" Font-Bold="True" Font-Size="14pt" Text="DATOS REPRESENTANTE LEGAL"></asp:Label>
                                </div>
                                <%--fin titulo 2--%><br />
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label15" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-2" ID="Label16" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label10" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-2" ID="Label13" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox11" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label11" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-2" ID="Label14" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox12" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </asp:Panel>
                            <br />
                            <div align="center">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="GUARDAR" />&nbsp;<asp:Button ID="Button2" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                        </asp:Panel>
                    </div>
                    <%--fin tab datos--%>
                    <div class="tab-pane " id="Infor">
                        <%--inicio tab informacion adicional--%>
                        <asp:Panel ID="PanInfor" runat="server">
                            <br />
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label17" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label23" runat="server" Font-Bold="True" Text="MUNICIPIO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label18" runat="server" Font-Bold="True" Text="DIRECCIÓN:"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="TextBox13" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label19" runat="server" Font-Bold="True" Text="INSTITUCIÓN EDUCATIVA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox14" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label28" runat="server" Font-Bold="True" Text="OTRO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox18" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label20" runat="server" Font-Bold="True" Text="EMAIL:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox15" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label26" runat="server" Font-Bold="True" Text="DISCAPACIDAD:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox17" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label21" runat="server" Font-Bold="True" Text="PROMEDIO DE NOTAS:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox16" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-2" ID="Label27" runat="server" Font-Bold="True" Text="ESCOLARIDAD:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
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
                            <br />
                            <div align="center">
                                <asp:Button ID="Button4" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button5" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                        </asp:Panel>
                    </div>
                    <%--fin tab informacion adicional--%>
                    <div class="tab-pane" id="Habilidad">
                        <%--inicio tab habilidades--%>
                        <asp:Panel ID="Panel3" runat="server">
                            <br />
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label9" runat="server" Font-Bold="True" Text="CONOCIMIENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList5" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label class="control-label  col-sm-2" ID="Label12" runat="server" Font-Bold="True" Text="HABILIDAD:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList6" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label33" runat="server" Font-Bold="True" Text="NIVEL:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList7" runat="server" class="form-control">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="Button3" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button6" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField HeaderText="Conocimientos" />
                                    <asp:BoundField HeaderText="Habilidades" />
                                    <asp:BoundField HeaderText="Nivel" />
                                </Columns>
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




