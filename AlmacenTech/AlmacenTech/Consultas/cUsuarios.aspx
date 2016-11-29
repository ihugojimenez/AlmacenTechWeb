<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cUsuarios.aspx.cs" Inherits="AlmacenTech.Consultas.cUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Consulta de Usuarios</h2>
   </div>

    <div class="row">
        <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por"></asp:Label>
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" Width="480" runat="server">
                    <asp:ListItem>UsuarioId</asp:ListItem>
                             <asp:ListItem>Nombres</asp:ListItem>
                            <asp:ListItem>Nombre de Usuario</asp:ListItem>
                            <asp:ListItem>Tipo de Usuario</asp:ListItem>
                </asp:DropDownList>
                
            </div>

            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:LinkButton ID="SearchButton" CssClass="btn btn-info" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="SearchButton_Click1" ><span aria-hidden="true" class="glyphicon glyphicon-search"></span>  Buscar</asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="FiltroTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el filtro"></asp:RequiredFieldValidator>
            </div>  

            <div class ="col-md-4 text-left">
                  
            </div>


            <div class ="col-md-8 text-left">
                <br />
                <asp:Repeater ID="UsuariosRepeater" runat="server">                    
                    <ItemTemplate>
                            <div class="card-panel light-blue lighten-1 white-text">
                                <div class="card-title">
                                    <asp:Label ID="Label3" runat="server" Text="Nombres: "></asp:Label><asp:Label ID="NombresLabel" runat="server" Text='<%# Eval("Nombres")%>'></asp:Label>
                                </div>
                                <div class="card-image text-center">
                                    <asp:Image ID="imgEmployee" Width="180" class="img-circle img-responsive" ImageUrl='<%# Eval("Imagen")%>' runat="server" />
                                </div>
                                <div class="card-content">                
                                    <asp:Label ID="Label4" runat="server" Text="Nombre de usuario: "></asp:Label><asp:Label ID="UserLabel" runat="server" Text='<%# Eval("NombreUsuario")%>'></asp:Label><br />
                                    <asp:Label ID="Label5" runat="server" Text="Tipo de usuario: "></asp:Label><asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("IdTipo")%>'></asp:Label><br />                                                   
                                    <br />
                                    <br />
                                </div>
                            </div>
                    </ItemTemplate>
                                   
                </asp:Repeater>               
            </div>  
        </div>

    <%--Botones--%>
    <%--href="/Consultas/ReportUsers.aspx"--%>
     <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                
                <asp:LinkButton ID="PrintButon"  CssClass="btn btn-warning" runat="server" Width="100" OnClick="PrintButon_Click" ><span aria-hidden="true" class="glyphicon glyphicon-print"></span>  Imprimir</asp:LinkButton>
            </div>
         </div>

</asp:Content>
