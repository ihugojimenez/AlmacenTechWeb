<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="rMensajeros.aspx.cs" Inherits="AlmacenTech.Registros.rMensajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center ">
        <h2>Registro de Mensajeros</h2>
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
                <asp:Button ID="SearchButton" runat="server" ValidationGroup="Buscar" TabIndex="1" CssClass="btn btn-info" Text="Buscar" OnClick="SearchButton_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="Buscar" ErrorMessage="Favor ingrese el ID"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="*" ControlToValidate="IdTextBox" ForeColor="Red" ValidationGroup="ID" ErrorMessage="Favor buscar el Usuario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="Buscar">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Favor ingresar numero Id valido" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="ID">*</asp:RegularExpressionValidator>
            </div>  
            
            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
                <br />
                <asp:TextBox ID="NombresTextBox" TabIndex="21" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Favor ingresar nombres" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="NombresTextBox" ErrorMessage="Favor ingresar nombres" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
               

            </div>    

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label8" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                <br />

                <asp:DropDownList ID="DiaDropDownList" CssClass="form-control" Width="100" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="MesDropDownList" CssClass="form-control" Width="100" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="AnioDropDownList" CssClass="form-control" Width="100" runat="server"></asp:DropDownList>
               
            </div>

          

            <div class ="col-md-4 text-left">
                  
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label7" runat="server" Text="Sexo"></asp:Label>
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
                <asp:Label ID="Label3" runat="server" Text="Cedula"></asp:Label>
                <br />
                <asp:TextBox ID="CedulaTextBox" TabIndex="23" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                 <ajaxToolkit:MaskedEditExtender ID="CedulaMasked" runat="server" TargetControlID="CedulaTextBox" Mask="999-9999999-9" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Favor ingresar Cedula" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CedulaTextBox" ErrorMessage="Favor ingresar Cedula" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
            
            </div>

            <div class ="col-md-4 text-left">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            </div>

            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Celular"></asp:Label>
                <br />
                <asp:TextBox ID="CelularTextBox" TabIndex="24" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Celular" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Celular" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                 <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{4}" ValidationGroup="Save">*</asp:RegularExpressionValidator>--%>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="CelularTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{4}" ValidationGroup="ID">*</asp:RegularExpressionValidator>--%>
                <ajaxToolkit:MaskedEditExtender ID="CelularMasked" runat="server" TargetControlID="CelularTextBox" Mask="999-999-9999" />
            
            </div>
            
                
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>
                <br />
                <asp:TextBox ID="TelefonoTextBox" TabIndex="25" CssClass="form-control" runat="server" Width="480"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar telefono" ForeColor="Red" ValidationGroup="Save">*</asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar telefono" ForeColor="Red" ValidationGroup="ID">*</asp:RequiredFieldValidator>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{4}" ValidationGroup="Save">*</asp:RegularExpressionValidator>--%>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TelefonoTextBox" ErrorMessage="Favor ingresar Telefono valido" ForeColor="Red" ValidationExpression="\d{3}-\d{3}-\d{4}" ValidationGroup="ID">*</asp:RegularExpressionValidator>--%>
                <ajaxToolkit:MaskedEditExtender ID="TelMasked" runat="server" TargetControlID="TelefonoTextBox" Mask="999-999-9999" />
            </div>
            <div class ="col-md-4 text-left">
                
            </div>
            
            <div class ="col-md-8 text-left">
                <br />
                <asp:Label ID="Label6" runat="server" Text="Direccion"></asp:Label>
                <br />
                <asp:TextBox ID="DireccionTextBox" TabIndex="26"  CssClass="form-control" runat="server" Width="480" ></asp:TextBox>
                <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingresar Direccion valido" ForeColor="Red" ValidationExpression="\w+" ValidationGroup="Save">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="DireccionTextBox" ErrorMessage="Favor ingresar Direccion valido" ForeColor="Red" ValidationExpression="\w+" ValidationGroup="ID">*</asp:RegularExpressionValidator>--%>
            </div>
           
        </div>

        <%--Botones--%>
    <div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="NewButton" CssClass="btn btn-warning" TabIndex="26" runat="server" Text="Nuevo" Width="89px" OnClick="NewButton_Click"   />
            </div>
            <div class ="col-md-1 text-left">
                <asp:Button ID="SaveButton" runat="server" TabIndex="27"  CssClass="btn btn-success" Text="Registrar" Width="89px"  ValidationGroup="Save" OnClick="SaveButton_Click"  />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="UpdateButton" ValidationGroup="ID" TabIndex="28" runat="server"  CssClass="btn btn-primary" Text="Editar" Width="89px" OnClick="UpdateButton_Click"   />
            </div> 
            <div class ="col-md-1 text-left">
                <asp:Button ID="DeleteButton" runat="server" TabIndex="29" ValidationGroup="Buscar"  CssClass="btn btn-danger" Text="Eliminar" Width="89px" OnClick="DeleteButton_Click"  />
            </div>               
            
            
           
        </div>
</asp:Content>
