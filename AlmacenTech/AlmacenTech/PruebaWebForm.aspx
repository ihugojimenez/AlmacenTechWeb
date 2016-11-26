<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PruebaWebForm.aspx.cs" Inherits="AlmacenTech.PruebaWebForm" %>

<%@ Register Src="~/Controls/ButtonsWebUserControl.ascx" TagPrefix="uc1" TagName="ButtonsWebUserControl" %>
<%@ Register Src="~/Controls/SearchWebUserControl.ascx" TagPrefix="uc1" TagName="SearchWebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />


    <uc1:ButtonsWebUserControl runat="server" id="ButtonsWebUserControl" />
    <uc1:SearchWebUserControl runat="server" id="SearchWebUserControl" />
   
</asp:Content>
