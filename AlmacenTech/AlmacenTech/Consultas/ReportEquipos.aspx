<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportEquipos.aspx.cs" Inherits="AlmacenTech.Consultas.ReportEquipos" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1099px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class ="col-md-3 text-left">
                
            </div>
            <div class ="col-md-9 text-left">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">  
                <rsweb:ReportViewer ID="EquiposReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="1052px" Width="855px"></rsweb:ReportViewer>
                
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />  
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            
         </div>
    
    </div>
    </form>
</body>
</html>
