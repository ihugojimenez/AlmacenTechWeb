<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rEquipos.aspx.cs" Inherits="AlmacenTech.Registros.rEquipos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
         <br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="100" ImageUrl="~/Imagenes/Equipos-rahmen.png"  />
        <h2>Registro de Equipos</h2>
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">

            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-tag"></span> ID</asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server" OnTextChanged="IdTextBox_TextChanged" ></asp:TextBox>
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
                <asp:Label ID="Label2" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-certificate"></span> Marca</asp:Label>
                <br />
                <asp:DropDownList ID="MarcaDropDownList" CssClass="form-control" Width="480"  runat="server"></asp:DropDownList>
               

            </div>    
            
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-list"></span> Tipo de equipo</asp:Label>
                <br />
                <asp:DropDownList ID="TipoDropDownList" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
                
            
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-barcode"></span> Numero serial</asp:Label>
                <br />
                <asp:TextBox ID="SerialNumTextBox" TabIndex="4" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="SerialNumTextBox" ErrorMessage="Favor ingresar Numero Serial" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SerialNumTextBox" ErrorMessage="Favor ingresar Numero Serial" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            
            </div>
            
                
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-usd"></span> Costo</asp:Label>
                <br />
                <asp:TextBox ID="CostoTextBox" TabIndex="5" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor repetir la contraseña" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor ingresar el costo valido" ForeColor="Red" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="CostoTextBox" ErrorMessage="Favor ingresar el costo valido" ForeColor="Red" ValidationExpression="^(\d|-)?(\d|,)*\.?\d*$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" Visible="false" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-inbox"></span> Estado</asp:Label>
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
