<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cSalidas.aspx.cs" Inherits="AlmacenTech.Consultas.cSalidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
         <br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="100" ImageUrl="~/Imagenes/Salidas.png" />
        <h2>Consulta de Salidas</h2>
   </div>

    <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por"></asp:Label>
                
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" Width="480" runat="server" OnSelectedIndexChanged="FiltroDropDownList_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Salida Id</asp:ListItem>
                            <asp:ListItem>Tipo de Salida</asp:ListItem>
                            <asp:ListItem>Mensajero</asp:ListItem>
                            <asp:ListItem>Fecha</asp:ListItem>
                </asp:DropDownList>
                
            </div>
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                <asp:DropDownList ID="AuxDropDownList" Visible="false" CssClass="form-control" Width="480" runat="server" ></asp:DropDownList>
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:LinkButton ID="SearchButton" CssClass="btn btn-info" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="SearchButton_Click" ><span aria-hidden="true" class="glyphicon glyphicon-search"></span>  Buscar</asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="FiltroTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FiltroTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                
            </div>  
            <div class ="col-md-4 text-left">
                  
            </div>
            
        <div class ="col-md-8 text-left">
                <br />
                <asp:GridView ID="SalidasGridView" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None" Width="790px" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SalidaId" HeaderText="Salida ID    ">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FechaSalida" HeaderText="Fecha" ReadOnly="True" SortExpression="FechaSalida">
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NumeroBanca" HeaderText="Numero de Banca" ReadOnly="True" SortExpression="M.Nombres">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nombres" HeaderText="Mensajero" ReadOnly="True" SortExpression="Nombres">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Detalles" HeaderText="Equipo" ReadOnly="True" SortExpression="Detalles">
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                    </Columns>
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
        <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:LinkButton ID="PrintButon"  CssClass="btn btn-warning" runat="server" Width="100" OnClick="PrintButon_Click"><span aria-hidden="true" class="glyphicon glyphicon-print"></span>  Imprimir</asp:LinkButton>
            </div>  
        </div>
</asp:Content>
