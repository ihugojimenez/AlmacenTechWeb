<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="AlmacenTech.Registros.rUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Registro de Usuarios</h2>
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="ID "></asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" TabIndex="0" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click"/>
            </div>              
            
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
                <br />
                <asp:TextBox ID="NamesTextBox" CssClass="form-control" TabIndex="1" runat="server" Width="480" OnTextChanged="NamesTextBox_TextChanged"></asp:TextBox>
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-6 text-left">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Nombre de Usuario"></asp:Label>
                <br />
                <asp:TextBox ID="UserNameTextBox" TabIndex="2" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
            <div class ="col-md-4 text-left">
                  
            </div>
            </div>
            
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="PassTextBox" TabIndex="3" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-6 text-left">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Repetir contraseña"></asp:Label>
                <br />
                <asp:TextBox ID="rPassTextBox" TabIndex="4" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
            </div>

             <div class ="col-md-4 text-left">
                
            </div>

            <div class ="col-md-6 text-left">
                <br />
                <asp:Label ID="Label6" runat="server" Text="Tipo de Usuario"></asp:Label>
                <br />
                <asp:DropDownList ID="TipoUsersDropDownList" TabIndex="5" CssClass="form-control" runat="server" Width="480"></asp:DropDownList>
            </div>
           
        </div>

        <%--Botones--%>
    <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="NewButton" CssClass="btn btn-warning" TabIndex="5" runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click" />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server" TabIndex="6" CssClass="btn btn-success" Text="Registrar" Width="89px" OnClick="SaveButton_Click" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" runat="server" TabIndex="7" CssClass="btn btn-primary" Text="Editar" Width="89px" />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" TabIndex="8" CssClass="btn btn-danger" Text="Eliminar" Width="89px" />
            </div>               
            
            
           
        </div>

    

    


</asp:Content>
