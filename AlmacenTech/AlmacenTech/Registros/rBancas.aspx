<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rBancas.aspx.cs" Inherits="AlmacenTech.Registros.rBancas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Registro de Bancas</h2>
   </div>
    
    
    <div class="row">
            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="ID "></asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" ValidationGroup="Buscar" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  
            <div class ="col-md-4 text-left">
                
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" TabIndex="21" Text="Numero de Banca"></asp:Label>
                <asp:TextBox ID="NumTextBox" CssClass="form-control" Width="480" ValidationGroup="Save" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumTextBox" ErrorMessage="Favor ingresar el numero de banca" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NumTextBox" ErrorMessage="Favor ingresar el numero de banca" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NumTextBox" ErrorMessage="Favor ingrese un numero valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            </div>
            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server" TabIndex="22" Text="Direccion"></asp:Label>
                <asp:TextBox ID="DireccionTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingresar la direccion" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingresar la direccion" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
            </div>
        </div>

     <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="NewButton" CssClass="btn btn-warning" TabIndex="23"  runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click"  />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server" CssClass="btn btn-success" TabIndex="24" Text="Registrar" Width="89px"  ValidationGroup="Save" OnClick="SaveButton_Click" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" ValidationGroup="ID" runat="server" TabIndex="25"  CssClass="btn btn-primary" Text="Editar" Width="89px" OnClick="UpdateButton_Click"  />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" ValidationGroup="Buscar" TabIndex="26"  CssClass="btn btn-danger" Text="Eliminar" Width="89px" OnClick="DeleteButton_Click"  />
              
            </div>               
            
            
           
        </div>
</asp:Content>
