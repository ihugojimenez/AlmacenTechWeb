<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rMensajeros.aspx.cs" Inherits="AlmacenTech.Registros.rMensajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
         <br />
        <br />
        <asp:Image ID="Image1" runat="server"  Width="100" ImageUrl="~/Imagenes/Mensajeros.png" />
        <h2>Registro de Mensajeros</h2>
   </div>


        <%--Cuerpo de los textbox--%>
        <div class="row">

            <div class ="col-md-4 text-left">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="ID" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" ValidationGroup="Buscar" runat="server" />
            </div>
            <div class ="col-md-8 text-left">
                <asp:Label ID="Label1" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-tag"></span> ID</asp:Label>
                <asp:TextBox ID="IdTextBox" CssClass="form-control" Width="480" runat="server"></asp:TextBox>
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
                <asp:Label ID="Label2" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span> Nombres</asp:Label>
                <br />
                <asp:TextBox ID="NombresTextBox" TabIndex="21" CssClass="form-control text-uppercase" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Favor ingresar nombres" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ ]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Favor ingresar Nombre valido" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ ]+" ValidationGroup="ID">*</asp:RegularExpressionValidator>
               

            </div>    

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-2 text-left">
                <br />
                <asp:Label ID="Label8" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span> Fecha de Nacimiento</asp:Label>
                <br />
                <asp:DropDownList ID="DiaDropDownList" CssClass="form-control" Width="250" runat="server"></asp:DropDownList>
               
            </div>

             <div class ="col-md-1 text-left">
                <br />
                 <br />
                  <asp:DropDownList ID="MesDropDownList" DataTextField="Mes" CssClass="form-control" Width="120" runat="server">
                    <asp:ListItem>Mes</asp:ListItem>
                            <asp:ListItem>Enero</asp:ListItem>
                            <asp:ListItem>Febrero</asp:ListItem>
                            <asp:ListItem>Marzo</asp:ListItem>
                            <asp:ListItem>Abril</asp:ListItem>
                            <asp:ListItem>Mayo</asp:ListItem>
                            <asp:ListItem>Junio</asp:ListItem>
                            <asp:ListItem>Julio</asp:ListItem>
                            <asp:ListItem>Agosto</asp:ListItem>
                            <asp:ListItem>Septiembre</asp:ListItem>
                            <asp:ListItem>Octubre</asp:ListItem>
                            <asp:ListItem>Noviembre</asp:ListItem>
                            <asp:ListItem>Diciembre</asp:ListItem>
                </asp:DropDownList>
                 
            </div>

            <div class ="col-md-5 text-left">
                <br />
                <br />
                   <asp:DropDownList ID="AnioDropDownList" CssClass="form-control" Width="95" runat="server"></asp:DropDownList>
            </div>


          

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label7" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-ruble"></span> Sexo</asp:Label>
                <br />
                <asp:DropDownList ID="SexoDropDownList" TabIndex="22" CssClass="form-control" Width="480" runat="server">
                    <asp:ListItem>Hombre</asp:ListItem>
                            <asp:ListItem>Mujer</asp:ListItem>
                </asp:DropDownList>
               
            </div>    

            
            <div class ="col-md-4 text-left">
                  <asp:ValidationSummary ID="ValidationSummary3" ValidationGroup="Save" ForeColor="Red" runat="server" />
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label3" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-credit-card"></span> Cedula</asp:Label>
                <br />
                <asp:TextBox ID="CedulaTextBox" TabIndex="23" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                 <ajaxToolkit:MaskedEditExtender ID="CedulaMasked" runat="server" TargetControlID="CedulaTextBox" Mask="999-9999999-9" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Favor ingresar Cedula" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Favor ingresar Cedula" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
            
            </div>

            <div class ="col-md-4 text-left">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-phone"></span> Celular</asp:Label>
                <br />
                <asp:TextBox ID="CelularTextBox" TabIndex="24" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Celular" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
                <ajaxToolkit:MaskedEditExtender ID="CelularMasked" runat="server" TargetControlID="CelularTextBox" Mask="999-999-9999" />
            
            </div>
            
                
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-phone-alt"></span> Telefono</asp:Label>
                <br />
                <asp:TextBox ID="TelefonoTextBox" TabIndex="25" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar telefono" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar telefono" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
                <ajaxToolkit:MaskedEditExtender ID="TelMasked" runat="server" TargetControlID="TelefonoTextBox" Mask="999-999-9999" />
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server"><span aria-hidden="true" class="glyphicon glyphicon-map-marker"></span> Direccion</asp:Label>
                <br />
                <asp:TextBox ID="DireccionTextBox" TabIndex="26"  CssClass="form-control text-uppercase" runat="server" Width="480" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingrese una direccion valida" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\., -]+" ValidationGroup="ID">*</asp:RegularExpressionValidator>    
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingrese una direccion valida" ForeColor="Red" ValidationExpression="[a-zA-ZñÑ^\d_\., -]+" ValidationGroup="Save">*</asp:RegularExpressionValidator>    
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
