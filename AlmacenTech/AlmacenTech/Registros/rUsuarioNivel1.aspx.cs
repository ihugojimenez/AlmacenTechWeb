using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rUsuarioNivel1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LlenarClase(u);
            if (Validar())
                if (u.Insertar())
                {
                    Limpiar();
                    Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
                }
        }

        public void LlenarClase(Usuarios u)
        {

            u.Nombres = NamesTextBox.Text;
            u.NombreUsuario = UserNameTextBox.Text.ToUpper();
            u.Contraseña = PassTextBox.Text;
            u.IdTipo = 2;


        }

        public bool Validar()
        {
            Usuarios u = new Usuarios();
            bool yes = true;
            if (u.Listado("*", " NombreUsuario = '" + UserNameTextBox.Text + "'", "").Rows.Count > 0)
            {
                Utilitarios.ShowToastr(this, "Nombre de Usuario en uso", "Mensaje", "info");
                yes = false;
                UserNameTextBox.Text = "";
                UserNameTextBox.Focus();
            }

            return yes;


        }

        public void Limpiar()
        {
            NamesTextBox.Text = "";
            UserNameTextBox.Text = "";
            PassTextBox.Text = "";
            rPassTextBox.Text = "";
        }


    }
}