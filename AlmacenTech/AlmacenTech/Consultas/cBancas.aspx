﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cBancas.aspx.cs" Inherits="AlmacenTech.Consultas.cBancas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            left: 15px;
            top: -367px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="jumbotron text-center ">
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="100" ImageUrl="~/Imagenes/forma-bancaiconobanco.png" />
        <h2>Consulta de Bancas</h2>
   </div>

    <div class="row">
        <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por"></asp:Label>
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" Width="480" runat="server">
                    <asp:ListItem>BancaId</asp:ListItem>
                             <asp:ListItem>Direccion</asp:ListItem>
                            <asp:ListItem>Numero de Banca</asp:ListItem>
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
                <asp:GridView ID="BancasGridView" runat="server" CellPadding="4"  ForeColor="#333333" GridLines="None" Width="480">
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

    <%--Botones--%>
    <%--href="/Consultas/ReportUsers.aspx"--%>
     <div class="row">
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:LinkButton ID="PrintButon"  CssClass="btn btn-warning" runat="server" Width="100" OnClick="PrintButon_Click" ><span aria-hidden="true" class="glyphicon glyphicon-print"></span>  Imprimir</asp:LinkButton>
            </div>
         </div>
</asp:Content>
