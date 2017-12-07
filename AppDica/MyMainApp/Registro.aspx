<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="MyMainApp.Registro" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CPHPrincipal">
    <form id="form1" runat="server" class="form-horizontal">
        <div align="center">
            <asp:Label ID="LblTitulo" runat="server" Text="Registro Aspirantes" Font-Bold="True" Font-Size="20pt"></asp:Label>
        </div>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <div class="container-fluid"> <%--contenido de todo el texto  --%>
                <div  class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Para iniciar su proceso de inscripción es necesario que tome en cuenta las indicaciones siguientes:"></asp:Label>
            <br />
                
            <p class="text-justify">
                <ol><%--inicio numerales--%>
                    <li>Contar con la siguiente documentación al momento de inscripción:</li>
                    <ul>
                        <li>Certificación de notas</li>
                        <li>Título universitario</li>
                        <li>Curriculum</li>
                    </ul><br />
                    <li>Si es menor de edad, contar con los documentos del representante legal:</li>
                    <ul>
                        <li>DUI</li>
                        <li>NIT</li>
                        <li>Teléfono</li>
                        <li>Correo</li>
                    </ul><br />
                    <li>Cuenta con 15 días para completar su información, de lo contrario deberá registrarse nuevamente.</li>
                </ol><%--fin numerales--%><br />
                <p>
                </p>
                <p>
                </p>
            </p></div>
            <div  class="col-md-6">
                <div class="form-group">
                     <asp:Label class="control-label  col-sm-3" ID="Label2" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                    </div>
                <div class="form-group">
                    <asp:Label class="control-label  col-sm-3" ID="Label6" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                    </div>                
                 </div>
                <div class="form-group">
                     <asp:Label class="control-label  col-sm-3" ID="Label3" runat="server" Text="NOMBRES:" Font-Bold="True"></asp:Label>
                <div class="col-md-8">
                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                     </div>
                <div class="form-group">
                    <asp:Label class="control-label  col-sm-3" ID="Label4" runat="server" Text="APELLIDOS:" Font-Bold="True"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                    </div>               
                </div>
                <div class="form-group">
                    <asp:Label class="control-label  col-sm-3" ID="Label5" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    </div>
                </div>
            <div class="form-group">
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="INICIAR REGISTRO" class="btn btn-default"/></div></div>  
           </div>
        </asp:Panel>
    </form>

</asp:Content>

