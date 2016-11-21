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
                Cargar();
            }
        }

        public void Cargar()
        {
            TiposUsuarios tp = new TiposUsuarios();
            TipoUsersDropDownList.DataSource = tp.Listado("*", "1=1", "");
            TipoUsersDropDownList.DataTextField = "Detalle";
            TipoUsersDropDownList.DataValueField = "IdTipo";
            TipoUsersDropDownList.DataBind();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
           
            LlenarCampos(Utilitarios.ConvertirAentero(IdTextBox.Text));
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LlenarClase(u);
            if (u.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
            }

        }

        public void elegirValidacion()
        {
            if(NamesTextBox.Text.Equals(""))
            {
                
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LlenarClase(u);
            if (u.Editar())
            {
                Utilitarios.ShowToastr(this, "Editado", "Mensaje", "success");
                Limpiar();
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            u.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            if (u.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
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
            TipoUsersDropDownList.SelectedValue = u.IdTipo.ToString();

            return u;
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

        public void LlenarClase(Usuarios u)
        {
            
                u.Nombres = NamesTextBox.Text;
                u.NombreUsuario = UserNameTextBox.Text;
                u.Contraseña = PassTextBox.Text;
                u.IdTipo = Utilitarios.ConvertirAentero(TipoUsersDropDownList.SelectedValue);
            
            
        }

        



        protected void NamesTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}