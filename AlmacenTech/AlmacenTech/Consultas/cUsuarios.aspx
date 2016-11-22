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
                            <asp:ListItem>Nombre de Usuario</asp:ListItem>
                            <asp:ListItem>Tipo de Usuario</asp:ListItem>
                </asp:DropDownList>
                
            </div>
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click" />
                
            </div>  

            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:GridView ID="UsersGridView"  runat="server" CellPadding="4" Width="480" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
               
                
            </div>  
        </div>
</asp:Content>
