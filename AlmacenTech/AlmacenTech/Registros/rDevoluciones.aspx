<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rDevoluciones.aspx.cs" Inherits="AlmacenTech.Registros.rDevoluciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            display: block;
            width: 100%;
            height: 34px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #ccc;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron text-center ">
          <br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="100" ImageUrl="~/Imagenes/devoluciones.png" />
        <h2>Registro de Devoluciones</h2>
        
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">

             <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-6 text-right">
                <asp:Label ID="Label4" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span>  </asp:Label><asp:Label ID="FechaLabel" runat="server"></asp:Label>
            </div> 

            <div class ="col-md-2 text-right">
                
            </div> 

           <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-tag"></span> ID</asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="auto-style4" Width="480" runat="server"></asp:TextBox>
                <asp:LinkButton ID="SearchButton" CssClass="btn btn-info" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="SearchButton_Click1"><span aria-hidden="true" class="glyphicon glyphicon-search"></span>  Buscar</asp:LinkButton>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  

             <div class ="col-md-4 text-left">
                 
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-user"></span> Mensajero</asp:Label>
                <br />
                <asp:DropDownList ID="MensajerosDropDownList" TabIndex="15" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
            
            </div>

            <div class ="col-md-4 text-left">
                  
                </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-home"></span> Banca</asp:Label>
                <br />
                <asp:DropDownList ID="BancasDropDownList" TabIndex="14" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
               
            </div>    

            <div class ="col-md-4 text-left">
                  
                </div>
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-copy"></span> Equipo</asp:Label>
                <br />
                <asp:DropDownList ID="EquiposDropDownList" TabIndex="12" CssClass="form-control" Width="480" runat="server"></asp:DropDownList>
            </div>

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:LinkButton ID="AddButton" CssClass="btn btn-primary" TabIndex="13"  runat="server" Width="89px" OnClick="AddButton_Click1"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span>  Agregar</asp:LinkButton>
                <br />
                <br />
                <asp:GridView ID="EquiposGridView" Width="480px" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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


            <div class ="col-md-4 text-left">
                 
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="FechaCargar" ForeColor="Red" runat="server" ><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></asp:Label>  
            </div>   
                    
        </div>

    <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="NewButton" CssClass="btn btn-warning" TabIndex="23"  runat="server" Width="89px" OnClick="NewButton_Click1" ><span aria-hidden="true" onclick=" " class="glyphicon glyphicon-refresh"></span>  Nuevo</asp:LinkButton>
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="SaveButton" CssClass="btn btn-success" TabIndex="24" ValidationGroup="Save"  runat="server" Width="89px" OnClick="SaveButton_Click1"  ><span aria-hidden="true" class="glyphicon glyphicon-save"></span>  Registrar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" TabIndex="25" ValidationGroup="ID"  runat="server" Width="89px" OnClick="UpdateButton_Click1" ><span aria-hidden="true" class="glyphicon glyphicon-edit"></span>  Editar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" TabIndex="26" ValidationGroup="Buscar"  runat="server" Width="89px" OnClick="DeleteButton_Click1" ><span aria-hidden="true" class="glyphicon glyphicon-trash"></span>  Eliminar</asp:LinkButton>
              
            </div>               
            
        </div>


        
</asp:Content>
