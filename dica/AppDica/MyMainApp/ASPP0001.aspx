<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="ASPP0001.aspx.cs" Inherits="MyMainApp.ASPP0001" %>



<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CPHPrincipal">
   

    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <form id="form1" runat="server">
            <div align="center">
                <asp:Label ID="LblTitulo" runat="server" Text="Titulo" Font-Bold="True" Font-Size="20pt"></asp:Label>
            </div>
            <br />
            <div id="content">
                <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                    <li class="active"><a href="#Datos" data-toggle="tab">DATOS GENERALES</a></li>
                    <li><a href="#Infor" data-toggle="tab">INFORMACIÓN ADICIONAL</a></li>
                </ul>
                <div id="my-tab-content" class="tab-content">
                    <div id="Datos" class="tab-pane">
                        <br />
                        <asp:Panel ID="PanDatos" runat="server">
                            <table style="width: 100%; padding: 1px">
                                <tr>
                                    <td style="height: 22px; width: 15%">
                                        <asp:Label ID="Label1" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="height: 22px; width: 35%; padding: 2px">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                    <td style="height: 22px; width: 15%">
                                        <asp:Label ID="Label3" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="height: 22px; width: 35%">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="EDAD:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                     <td>
                                            <asp:Label ID="Label6" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="SEXO:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="F">FEMENINO</asp:ListItem>
                                            <asp:ListItem Value="M">MASCULINO</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="TITULO:" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <asp:Panel ID="Panel2" runat="server">
                                <div align="center">
                                    <asp:Label ID="LblTitulo0" runat="server" Font-Bold="True" Font-Size="14pt" Text="DATOS REPRESENTANTE LEGAL"></asp:Label>
                                </div>
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="height: 22px; width: 15%">
                                            <asp:Label ID="Label15" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="height: 22px; width: 35%; padding: 2px">
                                            <asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                        <td style="height: 22px; width: 15%">
                                            <asp:Label ID="Label16" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="height: 22px; width: 35%">
                                            <asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Text="DUI:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="padding: 2px">
                                            <asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td style="padding: 2px">
                                            <asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Text="TELÉFONO:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                            <br />
                            <div align="center" >
                                <asp:Button ID="Button1" runat="server" Text="GUARDAR" /><asp:Button ID="Button2" runat="server" Text="CANCELAR" /></div>
                            <br />
                        </asp:Panel>
                    </div>
                    <div  class="tab-pane active"  id="Infor">
                        <asp:Panel ID="PanInfor" runat="server">
                            &nbsp;<table cellpadding="2" style="width: 100%">
                                <tr>
                                    <td style="height: 22px;width:15%">
                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="DEPARTAMENTO:"></asp:Label>
                                    </td>
                                    <td style="height: 22px;width:35%;padding: 2px" >
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="height: 22px;width:15%">
                                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="MUNICIPIO:"></asp:Label>
                                    </td>
                                    <td style="height: 22px;width:35%;padding: 2px"> 
                                        <asp:DropDownList ID="DropDownList3" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="DIRECCIÓN:"></asp:Label>
                                    </td>
                                    <td colspan="3" style="padding: 2px">
                                        <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                    </td>
                                 
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="INSTITUCIÓN EDUCATIVA:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px" colspan="3">
                                        <asp:TextBox ID="TextBox14" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                     
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="EMAIL:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Font-Bold="True" Text="DISCAPACIDAD:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="PROMEDIO DE NOTAS:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="ESCOLARIDAD:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="ADJUNTAR DOCUMENTOS:"></asp:Label>
                                    </td>
                                    <td style="padding: 2px">
                                        <input type="button" value="Adjuntar" onclick="open_win_doc">
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                             <script type="text/javascript">
                                 function open_win_doc() {
                                     alert("hola");
                                     var myWindow = window.open("DetalleSolicitud.aspx", "Dates", "scrollbars=yes,resizable=yes", "width=950,height=650");
                                 }
     </script>
                             <br />
                            <div align="center" >
                                <asp:Button ID="Button4" runat="server" Text="GUARDAR" /><asp:Button ID="Button5" runat="server" Text="CANCELAR" /></div>
                            <br />
                        </asp:Panel>
                    </div>

                </div>

            </div>
        </form>
    </asp:Panel>
</asp:Content>




