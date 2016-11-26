<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PruebaWebForm.aspx.cs" Inherits="AlmacenTech.PruebaWebForm" %>

<%@ Register Src="~/Controls/ButtonsWebUserControl.ascx" TagPrefix="uc1" TagName="ButtonsWebUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />


    <uc1:ButtonsWebUserControl runat="server" id="ButtonsWebUserControl" />
</asp:Content>
