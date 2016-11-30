<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="AlmacenTech.Registros.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            left: 15px;
            top: -513px;
            margin-top: 0px;
        }
    </style>
    
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
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-tag"></span> ID</asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:LinkButton ID="SearchButton" CssClass="btn btn-info" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="SearchButton_Click1" ><span aria-hidden="true" class="glyphicon glyphicon-search"></span>  Buscar</asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label7" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-picture"></span> Imagen</asp:Label>
                <br />
                <asp:FileUpload ID="PhotoFileUpload"  runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="*" ControlToValidate="PhotoFileUpload" ForeColor="Red" ValidationGroup="Save" ErrorMessage="Favor inserte una imagen"></asp:RequiredFieldValidator>
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
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ ]+" ValidationGroup="ID">*</asp:RegularExpressionValidator>

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
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Contraseña</asp:Label>
                <br />
                <asp:TextBox ID="PassTextBox" TabIndex="23" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\.-]+" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            
            </div>
            <div class ="col-md-4 text-left">
                  
            </div>
                
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-lock"></span> Repetir contraseña</asp:Label>
                <br />
                <asp:TextBox ID="rPassTextBox" TabIndex="24" TextMode="Password" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rPassTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTextBox" ControlToValidate="rPassTextBox" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="Save">*</asp:CompareValidator>
            </div>

             <div class ="col-md-4 text-left">
                
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-align-center"></span> Tipo Usuario</asp:Label>
                <br />
                <asp:DropDownList ID="TipoUsersDropDownList" TabIndex="25" CssClass="form-control" runat="server" Width="480"></asp:DropDownList>
            </div>
           
        </div>

        <%--Botones--%>
   <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="NewButton" CssClass="btn btn-warning" TabIndex="23"  runat="server" Width="89px" OnClick="NewButton_Click" ><span aria-hidden="true" onclick=" " class="glyphicon glyphicon-refresh"></span>  Nuevo</asp:LinkButton>
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="SaveButton" CssClass="btn btn-success" TabIndex="24" ValidationGroup="Save"  runat="server" Width="89px" OnClick="SaveButton_Click1" ><span aria-hidden="true" class="glyphicon glyphicon-save"></span>  Registrar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" TabIndex="25" ValidationGroup="ID"  runat="server" Width="89px" OnClick="UpdateButton_Click" ><span aria-hidden="true" class="glyphicon glyphicon-edit"></span>  Editar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" TabIndex="26" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="DeleteButton_Click" ><span aria-hidden="true" class="glyphicon glyphicon-trash"></span>  Eliminar</asp:LinkButton>
              
            </div>               
            
        </div>

    

    


</asp:Content>
