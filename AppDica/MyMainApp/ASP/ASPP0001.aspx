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
                                <div class="col-md-3">&nbsp;
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label37" runat="server" Text="ESTADO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox19" runat="server" ReadOnly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label1" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label3" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label2" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" readonly TextMode="Date"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label5" runat="server" Text="EDAD:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" readonly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label4" runat="server" Text="TELÉFONO (CASA):" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label41" runat="server" Text="TELÉFONO (CELULAR):" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox25" runat="server"></asp:TextBox>
                                </div>
                                </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label6" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" readonly></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label29" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox20" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label30" runat="server" Text="EMAIL:" Font-Bold="True" readonly></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox21" runat="server"></asp:TextBox>
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
                                <asp:Label class="control-label  col-sm-3" ID="Label31" runat="server" Text="TIPO ASPIRANTE:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox34" runat="server" readonly></asp:TextBox>
                                </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label8" runat="server" Text="TRATAMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label26" runat="server" Font-Bold="True" Text="DISCAPACIDAD 1:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox17" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label32" runat="server" Font-Bold="True" Text="DISCAPACIDAD 2:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox22" runat="server"></asp:TextBox>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label34" runat="server" Font-Bold="True" Text="DISCAPACIDAD 3:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox23" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label17" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label23" runat="server" Font-Bold="True" Text="MUNICIPIO:"></asp:Label>
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
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label16" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label24" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="F">&nbsp;FEMENINO&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                        <asp:ListItem Value="M">&nbsp;MASCULINO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label35" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox14" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                 </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label10" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label13" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox11" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Label class="control-label  col-sm-2" ID="Label11" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" TextMode="Email"></asp:TextBox>
                                    </div>
                                    <asp:Label class="control-label  col-sm-3" ID="Label14" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                    <div class="col-md-3">
                                        <asp:TextBox class="form-control" ID="TextBox12" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label25" runat="server" Font-Bold="True" Text="DIRECCIÓN:"></asp:Label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="TextBox24" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                                <div class="form-group">
                                <asp:Label class="control-label  col-sm-3" ID="Label36" runat="server" Text="TRATAMIENTO:" Font-Bold="True"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList9" runat="server" class="form-control">
                                    </asp:DropDownList>
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
                    <div class="tab-pane " id="Escol">
                        <%--inicio tab informacion adicional--%>
                        <asp:Panel ID="PanInfor" runat="server">
                            <br />  
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label19" runat="server" Font-Bold="True" Text="NIVEL EDUCATIVO:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList10" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label28" runat="server" Font-Bold="True" Text="OPCION ACADEMICA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList8" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label20" runat="server" Font-Bold="True" Text="INSTITUCION EDUCATIVA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label21" runat="server" Font-Bold="True" Text="OTRA:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox15" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label class="control-label  col-sm-2" ID="Label27" runat="server" Font-Bold="True" Text="PAIS:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList11" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                                <asp:Label class="control-label  col-sm-3" ID="Label39" runat="server" Font-Bold="True" Text="AÑO DE FINALIZACION:"></asp:Label>
                                <div class="col-md-3">
                                    <asp:TextBox class="form-control" ID="TextBox16" runat="server"></asp:TextBox>
                                </div>
                            </div>
                           
                            <br />
                            <div align="center">
                                <asp:Button ID="Button4" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button5" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GridView2" runat="server">
                                <Columns>
                                    <asp:BoundField HeaderText="No" />
                                    <asp:BoundField HeaderText="NIVEL EDUCATIVO" />
                                    <asp:BoundField HeaderText="OPCION ACADEMICA" />
                                    <asp:BoundField HeaderText="INSTITUCION EDUCATIVA" />
                                    <asp:BoundField HeaderText="PAIS" />
                                    <asp:BoundField HeaderText="AÑO DE FINALIZACION" />
                                    <asp:BoundField HeaderText="PROMEDIO DE NOTA" />
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
                                    <asp:DropDownList ID="DropDownList5" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>

                                <asp:Label class="control-label  col-sm-2" ID="Label12" runat="server" Font-Bold="True" Text="TIPO DE CONOCIMIENTO:"></asp:Label>
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
                                    <asp:BoundField HeaderText="CONOCIMIENTO" />
                                    <asp:BoundField HeaderText="TIPO DE CONOCIMIENTO" />
                                    <asp:BoundField HeaderText="NIVEL" />
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
                                    <asp:DropDownList ID="DropDownList14" runat="server" class="form-control">
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="Button7" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button8" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField HeaderText="No" />
                                    <asp:BoundField HeaderText="DESTREZA" />
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
                                    <asp:DropDownList ID="DropDownList15" runat="server" class="form-control">
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
                                    <asp:TextBox class="form-control" ID="TextBox18" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div align="center">
                                <asp:Button ID="Button9" runat="server" Text="GUARDAR" class="btn btn-primary"/>&nbsp;<asp:Button ID="Button10" runat="server" Text="CANCELAR" class="btn btn-primary"/>
                            </div>
                            <br />
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False">
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




