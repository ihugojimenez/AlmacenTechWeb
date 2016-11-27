using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
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
            NamesTextBox.Focus();
        }

        protected void SearchButton_Click1(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            if(u.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text)))
            {
                LlenarCampos(u);
            }
            else
            {
                Utilitarios.ShowToastr(this, "Usuario no encontrado, vuelva a intentar", "Mensaje", "error");
            }

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LlenarClase(u);
            if (Validar())
                if (u.Insertar())
                {
                    Limpiar();
                    Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
                }
                else
                {
                    Utilitarios.ShowToastr(this, "Error al intentar guardar, intentelo de nuevo", "Mensaje", "error");
                }
        }

      
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            LlenarClase(u);
            if (validarEditar())
            {
                if(u.Editar())
                {
                    Utilitarios.ShowToastr(this, "Editado", "Mensaje", "success");
                    Limpiar();
                }
                else
                {
                    Utilitarios.ShowToastr(this, "Error al intentar editar, intentelo de nuevo", "Mensaje", "error");
                }
                
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
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar eliminar, contacte soporte tecnico", "Mensaje", "error");
            }
        }



        public void LlenarCampos(Usuarios u)
        {
          
            IdTextBox.Text = u.UsuarioId.ToString();
            NamesTextBox.Text = u.Nombres;
            UserNameTextBox.Text = u.NombreUsuario;
            PassTextBox.Text = u.Contraseña;
            rPassTextBox.Text = u.Contraseña;
            TipoUsersDropDownList.SelectedValue = u.IdTipo.ToString();
            

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
            u.NombreUsuario = UserNameTextBox.Text.ToUpper();
            u.Contraseña = PassTextBox.Text;
            u.IdTipo = Utilitarios.ConvertirAentero(TipoUsersDropDownList.SelectedValue);
            string str = PhotoFileUpload.FileName;
            PhotoFileUpload.PostedFile.SaveAs(Server.MapPath("//Imagenes//") + str);
            string path = "~//Imagenes//" + str.ToString();
            u.Imagen = path;


        }

       public bool Validar()
        {
            Usuarios u = new Usuarios();
            bool yes = true;
            if(u.Listado("*", " NombreUsuario = '" + UserNameTextBox.Text + "'", "").Rows.Count > 0)
            {
                Utilitarios.ShowToastr(this, "Nombre de Usuario en uso", "Mensaje", "info");
                yes = false;
                UserNameTextBox.Text = "";
                UserNameTextBox.Focus();
            }

            return yes;


        }

        public bool validarEditar()
        {
            bool yes = true;
            if(NamesTextBox.Text.Equals("") || PassTextBox.Text.Equals("") || rPassTextBox.Text.Equals("") || UserNameTextBox.Text.Equals(""))
            {
                UpdateButton.ValidationGroup = "Save";
                ValidationSummary3.Visible = true;
                yes = false;
            }

            return yes;
        }




        protected void NamesTextBox_TextChanged(object sender, EventArgs e)
        {

        }

   
    }
}