<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="MyMainApp.Registro" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="CPHPrincipal">
    <form id="form1" runat="server">
                       <div align="center">
                           <asp:Label ID="LblTitulo" runat="server" Text="Titulo" Font-Bold="True" Font-Size="20pt"></asp:Label>
                           <br />
                           <asp:Panel ID="Panel1" runat="server">
                               <asp:Label ID="Label1" runat="server" Text="Para iniciar proceso..."></asp:Label>
                               <br />
                               <table style="width: 100%">
                                   <tr>
                                       <td>
                                           <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                       </td>
                                       <td>
                                           <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                       </td>
                                       <td>
                                           <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                       </td>
                                       <td>
                                           <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>&nbsp;</td>
                                       <td>&nbsp;</td>
                                       <td>&nbsp;</td>
                                       <td>&nbsp;</td>
                                   </tr>
                               </table>
                           </asp:Panel>
        </div>
                    </form>
</asp:Content>

