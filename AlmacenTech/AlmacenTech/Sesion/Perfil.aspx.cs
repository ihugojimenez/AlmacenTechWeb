using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Sesion
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Cargar();
        }

        protected void Cargar()
        {
            NamesTextBox.Text = Utilitarios.Names;
            PassTextBox.Text = Utilitarios.Pass;
            UserNameTextBox.Text = Utilitarios.UserName;
            ImagePerfil.ImageUrl = Utilitarios.Img;
        }
    }
}