using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Sesion
{
    public partial class Sing_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                UserNameTextBox.Focus();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

            if (ValidarUsuario())
                Response.Redirect("~/Default.aspx");
        }


        protected bool ValidarUsuario()
        {
            Usuarios u = new Usuarios();
            bool yes = false;
            if (u.Listado("*", " NombreUsuario = '" + UserNameTextBox.Text + "'", "").Rows.Count > 0 && u.Listado("*", " Contraseña = '" + PassTextBox.Text + "'", "").Rows.Count > 0)
            {
                u.BuscarDuplicado(UserNameTextBox.Text);
                Utilitarios.Names = u.Nombres;
                Utilitarios.UserName = u.NombreUsuario;
                Utilitarios.Pass = u.Contraseña;
                Utilitarios.Img = u.Imagen;
                Utilitarios.Tipo = u.IdTipo;
                Utilitarios.UsuarioID = u.UsuarioId;
                yes = true;
            }
            else
            {
                Utilitarios.ShowToastr(this, "Usuario o Contraseña incorrecta", "Mensaje", "error");
                UserNameTextBox.Text = "";
                PassTextBox.Text = "";
                UserNameTextBox.Focus();
                yes = false;
            }

            return yes;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registros/rUsuarios.aspx");
        }

        
    }
}