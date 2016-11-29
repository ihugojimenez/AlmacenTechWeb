<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cMensajeros.aspx.cs" Inherits="AlmacenTech.Consultas.cMensajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron text-center ">
        <br />
        <br />
        <asp:Image ID="Image1" runat="server"  Width="100" ImageUrl="~/Imagenes/Mensajeros.png" />
        <h2>Consulta de Mensajeros</h2>
   </div>

    <div class="row">
        <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por"></asp:Label>
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" Width="480" runat="server">
                    <asp:ListItem>MensajeroId</asp:ListItem>
                             <asp:ListItem>Nombres</asp:ListItem>
                            <asp:ListItem>Direccion</asp:ListItem>
                </asp:DropDownList>
                
            </div>

            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                <asp:TextBox ID="FiltroTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
                <asp:LinkButton ID="SearchButton" CssClass="btn btn-info" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="SearchButton_Click" ><span aria-hidden="true" class="glyphicon glyphicon-search"></span>  Buscar</asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="FiltroTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el filtro"></asp:RequiredFieldValidator>
            </div>  

            <div class ="col-md-3 text-left">
                  
            </div>


            <div class ="col-md-9 text-left">
                <br />
                <asp:GridView ID="MensajerosGridView" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None" Width="780" BorderColor="Black" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MensajeroID" HeaderText="ID" ReadOnly="True" SortExpression="MensajeroID">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" ReadOnly="True" SortExpression="Nombres">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" ReadOnly="True" SortExpression="Sexo">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha de Nacimiento" ReadOnly="True" SortExpression="FechaNacimineto">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" ReadOnly="True" SortExpression="Cedula">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" ReadOnly="True" SortExpression="Direccion">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Celular" HeaderText="Celular" ReadOnly="True" SortExpression="Celular">
                        <HeaderStyle HorizontalAlign="Center" />
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
        </div>

    <%--Botones--%>
    <%--href="/Consultas/ReportUsers.aspx"--%>
     <div class="row">
                  
         <%--   <div class ="col-md-4 text-left">
                  
            </div>--%>
            
            <div class ="col-md-12 text-center">
                <br />
                <asp:LinkButton ID="PrintButon"  CssClass="btn btn-warning" runat="server" Width="100" OnClick="PrintButon_Click" ><span aria-hidden="true" class="glyphicon glyphicon-print"></span>  Imprimir</asp:LinkButton>
            </div>
         </div>
</asp:Content>
