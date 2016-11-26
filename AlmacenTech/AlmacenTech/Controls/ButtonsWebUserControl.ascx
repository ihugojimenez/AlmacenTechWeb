<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ButtonsWebUserControl.ascx.cs" Inherits="AlmacenTech.Controls.ButtonsWebUserControl" %>
<<div class="row">
        <br />
            <div class ="col-md-4 text-left">
                  
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="NewButton" CssClass="btn btn-warning" TabIndex="23"  runat="server" Width="89px" ><span aria-hidden="true" class="glyphicon glyphicon-refresh"></span>  Nuevo</asp:LinkButton>
            </div>
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="SaveButton" CssClass="btn btn-success" TabIndex="24" ValidationGroup="Save"  runat="server" Width="89px" ><span aria-hidden="true" class="glyphicon glyphicon-save"></span>  Registrar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary" TabIndex="25" ValidationGroup="Save"  runat="server" Width="89px" ><span aria-hidden="true" class="glyphicon glyphicon-edit"></span>  Editar</asp:LinkButton>
            </div> 
            <div class ="col-md-1 text-left">
                <asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" TabIndex="26" ValidationGroup="Buscar"  runat="server" Width="89px" ><span aria-hidden="true" class="glyphicon glyphicon-trash"></span>  Eliminar</asp:LinkButton>
              
            </div>               
            
        </div>