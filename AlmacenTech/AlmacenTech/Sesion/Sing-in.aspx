<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Sing-in.aspx.cs" Inherits="AlmacenTech.Sesion.Sing_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/icon_ondemand_user.png" Width="100" />
        <h2>Iniciar Sesion</h2>
   </div>
    
    <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-user"></span> Nombre de Usuario</asp:Label>
                <br />
                <asp:TextBox ID="UserNameTextBox" TabIndex="3" CssClass="form-control text-uppercase"  runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Favor ingresar nombre de usuario" ForeColor="Red" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
            </div>
            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="Entrar" runat="server" />
                </div>
                
                <div class ="col-md-8 text-left">
                    <br />
                    <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Contraseña</asp:Label>
                    <br />
                    <asp:TextBox ID="PassTextBox" TabIndex="3" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Ingresar contraseña" ForeColor="Red" ValidationGroup="Entrar">*</asp:RequiredFieldValidator>
                </div>
                
            <div class ="col-md-4 text-left">
                  
                </div>
                
                <div class ="col-md-8 text-left">
                    <br />
                    <asp:LinkButton ID="SinginButton" runat="server" TabIndex="28" Width="480" CssClass="btn btn-info form-control" OnClick="SaveButton_Click"><span aria-hidden="true" class="glyphicon glyphicon-log-in"></span>  Iniciar sesion</asp:LinkButton>
                </div>
        <%--<div class ="col-md-4 text-left">
                  
                </div>--%>
                
                <div class ="col-md-12 text-center">
                    <br />
                    ¿No tienes una cuenta?  <asp:LinkButton ID="RegisterLinkButton"  runat="server" OnClick="LinkButton1_Click"> Cree una</asp:LinkButton>
                </div>
            </div>

</asp:Content>
