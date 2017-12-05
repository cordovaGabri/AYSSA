<%@ Page Title="" Language="C#" MasterPageFile="~/MasterInicio.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyMainApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHPrincipal" runat="server">
    <div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form role="form" runat="server">
			<fieldset>
				<h2>Inicio de Sesión</h2>
				<hr class="colorgraph">
				<div class="form-group">
                    <asp:TextBox ID="txtUsuario" runat="server" class="form-control input-lg" placeholder="Ingrese su Usuario"></asp:TextBox>
				</div>
				<div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control input-lg" placeholder="Ingrese su Password"></asp:TextBox>
				</div>
				<%--<span class="button-checkbox">
                    <asp:Button ID="Button4" class="btn" data-color="info" runat="server" Text="Recordarme" />
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">¿Olvido su Contraseña?</a>
				</span>--%>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <asp:Button ID="Button1" class="btn btn-lg btn-success btn-block" data-color="info" runat="server" Text="Iniciar Sesión" />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-primary btn-block" data-color="info" runat="server" Text="Registrarme" />
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

    <br/>
</asp:Content>
