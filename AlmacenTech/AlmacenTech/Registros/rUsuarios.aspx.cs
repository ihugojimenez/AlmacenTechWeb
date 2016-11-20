using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cargar();
            }
        }

        public void cargar()
        {
            TiposUsuarios tp = new TiposUsuarios();
            TipoUsersDropDownList.DataSource = tp.Listado("*", "1=1", "");
            TipoUsersDropDownList.DataTextField = "Detalle";
            TipoUsersDropDownList.DataValueField = "IdTipo";
            TipoUsersDropDownList.DataBind();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            int id;
            int.TryParse(IdTextBox.Text, out id);
            LlenarCampos(id);
        }

        public Usuarios LlenarCampos(int id)
        {
            Usuarios u = new Usuarios();

            u.Buscar(id);
            IdTextBox.Text = u.UsuarioId.ToString();
            NamesTextBox.Text = u.Nombres;
            UserNameTextBox.Text = u.NombreUsuario;
            PassTextBox.Text = u.Contraseña;
            rPassTextBox.Text = u.Contraseña;
            TipoUsersDropDownList.SelectedIndex = u.IdTipo;

            return u;
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void NamesTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        public void Limpiar()
        {
            IdTextBox.Text = "";
            NamesTextBox.Text = "";
            UserNameTextBox.Text = "";
            PassTextBox.Text = "";
            rPassTextBox.Text = "";
            TipoUsersDropDownList.SelectedIndex = 1;
        }

        public void LLenarClase(Usuarios u)
        {
            u.Nombres = NamesTextBox.Text;
            u.NombreUsuario = UserNameTextBox.Text;
            u.Contraseña = PassTextBox.Text;
            u.IdTipo = int.Parse(TipoUsersDropDownList.SelectedValue);
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LLenarClase(u);
            u.Insertar();

        }
    }
}