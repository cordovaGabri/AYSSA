﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="MyMainApp.Registro" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="CPHPrincipal">
    <form id="form1" runat="server" class="form-horizontal">
        <div align="center">
            <asp:Label ID="LblTitulo" runat="server" Text="Titulo" Font-Bold="True" Font-Size="20pt"></asp:Label>
        </div>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Para iniciar proceso..."></asp:Label>
            <br />
            
          
            <div class="form-group">

                <asp:Label class="control-label  col-sm-2" ID="Label2" runat="server" Text="NIT:" Font-Bold="True"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                    <asp:Label class="control-label  col-sm-2" ID="Label6" runat="server" Text="FECHA NACIMIENTO:" Font-Bold="True"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox class="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                    </div>

               
            </div>

                <div class="form-group">

                     <asp:Label class="control-label  col-sm-2" ID="Label3" runat="server" Text="NOMBRE:" Font-Bold="True"></asp:Label>

                <div class="col-md-3">
                    <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                    <asp:Label class="control-label  col-sm-2" ID="Label4" runat="server" Text="APELLIDO:" Font-Bold="True"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                    </div>


                
                </div>
                <div class="form-group">


                    <asp:Label class="control-label  col-sm-2" ID="Label5" runat="server" Text="EMAIL:" Font-Bold="True"></asp:Label>

                    <div class="col-md-3">
                        <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                    </div>

                </div>
            <div align="center">
                <asp:Button ID="Button1" runat="server" Text="REGISTRARSE" class="btn btn-default"/></div>
            <br />
        </asp:Panel>
    </form>

</asp:Content>

