<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="AlmacenTech.Consultas.cUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Consulta de Usuarios</h2>
   </div>

    <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por"></asp:Label>
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
                
            </div>
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" CssClass="btn btn-info" Text="Buscar" />
                
            </div>  

            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:GridView ID="UsersGridView" CssClass="form-control" runat="server"></asp:GridView>
                
            </div>  
        </div>
</asp:Content>
