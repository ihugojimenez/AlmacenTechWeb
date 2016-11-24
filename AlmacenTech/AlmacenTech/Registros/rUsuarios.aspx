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
        <h2>Registro de Usuarios</h2>
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">
            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="ID "></asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" ValidationGroup="Buscar" TabIndex="1" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  
            
            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
                <br />
                <asp:TextBox ID="NamesTextBox" CssClass="form-control" TabIndex="21" runat="server" Width="480" OnTextChanged="NamesTextBox_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar sus nombres" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NamesTextBox" ErrorMessage="Favor ingresar sus nombres" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>

            </div>    
            
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>
                <br />
                <asp:TextBox ID="UserNameTextBox" TabIndex="22" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="favor ingrese su nombre de Usuario" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="favor ingrese su nombre de Usuario" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                
            
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="PassTextBox" TabIndex="23" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar la contraseña" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Favor ingresar la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            
            </div>
            <div class ="col-md-4 text-left">
                  
            </div>
                
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Repetir contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="rPassTextBox" TabIndex="24" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rPassTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTextBox" ControlToValidate="rPassTextBox" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="Save">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="rPassTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="PassTextBox" ControlToValidate="rPassTextBox" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="ID">*</asp:CompareValidator>
            </div>

             <div class ="col-md-4 text-left">
                
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server" Text="Tipo de Usuario"></asp:Label>
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
                <asp:Button ID="NewButton" CssClass="btn btn-warning" TabIndex="27" runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click" />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server" TabIndex="28" CssClass="btn btn-success" Text="Registrar" Width="89px" OnClick="SaveButton_Click" ValidationGroup="Save" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" ValidationGroup="ID" runat="server" TabIndex="29" CssClass="btn btn-primary" Text="Editar" Width="89px" OnClick="UpdateButton_Click" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" ValidationGroup="Buscar" TabIndex="30" CssClass="btn btn-danger" Text="Eliminar" Width="89px" OnClick="DeleteButton_Click" />
            </div>               
            
            
           
        </div>

    

    


</asp:Content>
