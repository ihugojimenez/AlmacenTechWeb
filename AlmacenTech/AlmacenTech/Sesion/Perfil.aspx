<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="AlmacenTech.Sesion.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <br />
        <br />
        <asp:Image ID="ImagePerfil" runat="server" Width="100" />
        <h2>Perfil</h2>
   </div>
    
    <div class="row">
        <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Nombres</asp:Label>
                <br />
                <asp:TextBox ID="NamesTextBox" ReadOnly="true" CssClass="form-control text-uppercase" TabIndex="21" runat="server" Width="480" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar sus nombres" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ ]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            </div> 

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-user"></span> Nombre de Usuario</asp:Label>
                <br />
                <asp:TextBox ID="UserNameTextBox" ReadOnly="true" TabIndex="3" CssClass="form-control text-uppercase"  runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Favor ingresar nombre de usuario" ForeColor="Red" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
            </div>
            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="Entrar" runat="server" />
                </div>
                
                <div class ="col-md-8 text-left">
                    <br />
                    <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Contraseña</asp:Label>
                    <br />
                    <asp:TextBox ID="PassTextBox" TabIndex="3" ReadOnly="true" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Ingresar contraseña" ForeColor="Red" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
                </div>
                
           
            </div>
</asp:Content>
