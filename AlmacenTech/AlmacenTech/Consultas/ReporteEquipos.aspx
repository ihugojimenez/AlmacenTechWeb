<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReporteEquipos.aspx.cs" Inherits="AlmacenTech.Consultas.ReporteEquipos" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
         <%--<div class="col-md-4 ">

             </div>

            <div class ="col-md-12 text-center">
                
                
                
                
                
            </div>--%>

         <div class ="col-md-3 text-left">
                
            </div>
            <div class ="col-md-9 text-left">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />  
                <rsweb:ReportViewer ID="equiposReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="709px" Width="855px">
                    <localreport reportpath="Reportes\EquiposReport.rdlc">
                    </localreport>
                </rsweb:ReportViewer>
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
            
         </div>
     </div>
</asp:Content>
