﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rEquipos.aspx.cs" Inherits="AlmacenTech.Registros.rEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Registro de Equipos</h2>
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
                <asp:Label ID="Label2" runat="server" Text="Marca"></asp:Label>
                <br />
                <asp:DropDownList ID="MarcaDropDownList" CssClass="form-control" Width="480"  runat="server"></asp:DropDownList>
               

            </div>    
            
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Tipo de equipo"></asp:Label>
                <br />
                <asp:DropDownList ID="TipoDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
                
            
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Numero Serial"></asp:Label>
                <br />
                <asp:TextBox ID="SerialNumTextBox" TabIndex="4" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="SerialNumTextBox" ErrorMessage="Favor ingresar Numero Serial" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SerialNumTextBox" ErrorMessage="Favor ingresar Numero Serial" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            
            </div>
            
                
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Costo"></asp:Label>
                <br />
                <asp:TextBox ID="CostoTextBox" TabIndex="5" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor ingresar el costo valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor ingresar el costo valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server" Visible="false" Text="Estado"></asp:Label>
                <br />
                <asp:TextBox ID="EstadoTextBox" TabIndex="5" Visible="false" CssClass="form-control" runat="server" Width="480" ReadOnly="True"></asp:TextBox>
            </div>
           
        </div>

        <%--Botones--%>
    <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="NewButton" CssClass="btn btn-warning" TabIndex="7" runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click"  />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server" TabIndex="8" CssClass="btn btn-success" Text="Registrar" Width="89px"  ValidationGroup="Save" OnClick="SaveButton_Click" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" ValidationGroup="ID" runat="server" TabIndex="9" CssClass="btn btn-primary" Text="Editar" Width="89px" OnClick="UpdateButton_Click"  />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" ValidationGroup="Buscar" TabIndex="10" CssClass="btn btn-danger" Text="Eliminar" Width="89px" OnClick="DeleteButton_Click" />
            </div>               
            
            
           
        </div>

</asp:Content>