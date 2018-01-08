<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyMainApp.EMP.WebForm1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .modalBackround 
        {
            background-color: black;
            filter: alpha(opacity=0.9) !important;
            opacity: 0.6 !important;
            z-index: 20;
        }

        .modalPopup 
        {
            padding: 20px 0px 24px 10px;
            position: relative;
            width: 80%;
            height: 66px;
            background-color: white;
            border: 1px solid black;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

       
            <asp:Button ID="Button1" runat="server" Text="Ver Reporte" />
        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup"  Height="527px">
            <br />
            <asp:Button ID="Button2" runat="server" Text="Cancelar" />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br /><center>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="427px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="75%" style="margin-right: 0px"><LocalReport ReportPath="ASP\RptFichaAspirante.rdlc"></LocalReport></rsweb:ReportViewer></center>
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" BackgroundCssClass="modalBackround" TargetControlID="Button1" CancelControlID="Button2"></ajaxToolkit:ModalPopupExtender>
    </div>
    </form>
</body>
</html>
