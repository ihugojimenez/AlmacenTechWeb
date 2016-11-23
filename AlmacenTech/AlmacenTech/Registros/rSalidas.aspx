<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rSalidas.aspx.cs" Inherits="AlmacenTech.Registros.rSalidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron text-center ">
        <h2>Registro de Salidas</h2>
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
                <asp:Button ID="SearchButton" runat="server" ValidationGroup="Buscar"  CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click"  />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  
            
            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Tipo de Salida"></asp:Label>
                <br />
                <asp:DropDownList ID="TipoDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
                
               

            </div>    

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label8" runat="server" Text="Equipo"></asp:Label>
                <br />

                <asp:DropDownList ID="EquiposDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
                
               
            </div>

          

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label7" runat="server" Text="Banca"></asp:Label>
                <br />
                <asp:DropDownList ID="BancasDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
               
            </div>    

            
            <div class ="col-md-4 text-left">
                  <%--<asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />--%>
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Mensajero"></asp:Label>
                <br />
                <asp:DropDownList ID="MensajerosDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
            
            </div>

            
           
        </div>


        <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="NewButton" CssClass="btn btn-warning" runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click"    />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server"  CssClass="btn btn-success" Text="Registrar" Width="89px"  ValidationGroup="Save" OnClick="SaveButton_Click"   />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" ValidationGroup="ID" runat="server"  CssClass="btn btn-primary" Text="Editar" Width="89px" OnClick="UpdateButton_Click"   />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" ValidationGroup="Buscar"  CssClass="btn btn-danger" Text="Eliminar" Width="89px"   />
            </div>               
            
            
           
        </div>



</asp:Content>
