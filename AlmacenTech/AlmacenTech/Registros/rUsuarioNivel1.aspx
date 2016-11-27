<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="rUsuarioNivel1.aspx.cs" Inherits="AlmacenTech.Registros.rUsuarioNivel1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/icon_ondemand_user.png" Width="100" />
        <h2>Registro de Usuarios</h2>
        
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">
            
            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-picture"></span> Imagen</asp:Label>
                <br />
                <asp:FileUpload ID="PhotoFileUpload"  runat="server" />
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Nombres</asp:Label>
                <br />
                <asp:TextBox ID="NamesTextBox" CssClass="form-control text-uppercase" TabIndex="21" runat="server" Width="480" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar sus nombres" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ ]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            </div>    
            
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-user"></span> Nombre de Usuario</asp:Label>
                <br />
                <asp:TextBox ID="UserNameTextBox" TabIndex="22" CssClass="form-control text-uppercase" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="favor ingrese su nombre de Usuario" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Favor ingresar Nombre de usuario valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Contraseña</asp:Label>
                <br />
                <asp:TextBox ID="PassTextBox" TabIndex="23" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar contraseña valida" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            
            </div>
            <div class ="col-md-4 text-left">
                  
            </div>
                
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Repetir contraseña</asp:Label>
                <br />
                <asp:TextBox ID="rPassTextBox" TabIndex="24" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rPassTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTextBox" ControlToValidate="rPassTextBox" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="Save">*</asp:CompareValidator>
            </div>

           
        </div>

        <%--Botones--%>
    <div class="row">
           
            <div class ="col-md-12 text-center" style="height: 20px">
                <asp:LinkButton ID="SaveButton" runat="server" TabIndex="28" Width="480" ValidationGroup="Save" CssClass="btn btn-info form-control" OnClick="SaveButton_Click"><span aria-hidden="true" class="glyphicon glyphicon-send"></span>  Registrarse</asp:LinkButton>
                
            </div> 
                         
            
            
           
        </div>
</asp:Content>
