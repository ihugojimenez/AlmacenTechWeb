<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="AlmacenTech.Registros.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="row">
                <div class="col-lg-12">
                    <div class="intro-message text-center">
                        <h1>Registro de Usuarios</h1>
                        
                    </div>
                </div>
            </div>--%>
    <div class="jumbotron text-center ">
        <h2>Registro de Usuarios</h2>
  
    </div>

    <div class="row">
        <div class ="col-lg-4 text-right"><asp:Label ID="Label1" runat="server" Text="ID"></asp:Label> </div>
        <div class="col-lg-8 text-left" >
            <asp:TextBox ID="IdTextBox" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click"/>     
  </div>
        </div>


        <div class="row">
            <div class ="col-lg-6 text-right"><asp:Label ID="Label2" runat="server" Text="Nombres "></asp:Label><asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox> </div>
        <div class ="col-lg-6 text-left"><asp:Label ID="Label3" runat="server" Text="Nombre de Usuario "></asp:Label><asp:TextBox ID="UserNameTextBox"  runat="server"></asp:TextBox> </div>
        </div>
    <div class="row">
        
        <div class ="col-lg-6 text-right"><asp:Label ID="Label4" runat="server" Text="Contraseña "></asp:Label><asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox> </div>
        <div class ="col-lg-6 text-left"><asp:Label ID="Label5" runat="server" Text="Repetir Contraseña "></asp:Label><asp:TextBox ID="rePassTextBox" runat="server"></asp:TextBox> </div>
  </div>

    

    


</asp:Content>
