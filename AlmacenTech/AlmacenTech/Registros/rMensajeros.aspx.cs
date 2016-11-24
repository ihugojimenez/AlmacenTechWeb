using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rMensajeros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Cargar();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            LlenaCampos(Utilitarios.ConvertirAentero(IdTextBox.Text));
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            Mensajeros m  = new Mensajeros();
            LlenarClase(m);
            if (m.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Mensajeros m = new Mensajeros();
            LlenarClase(m);
            if (m.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Editado", "Mensaje", "success");
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Mensajeros m = new Mensajeros();
            m.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            if (m.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
        }

        public void LlenaCampos(int id)
        {
            Mensajeros m = new Mensajeros();
            m.Buscar(id);
            IdTextBox.Text = m.MensajeroId.ToString();
            NombresTextBox.Text = m.Nombres;
            CedulaTextBox.Text = m.Cedula;
            CelularTextBox.Text = m.Celular;
            TelefonoTextBox.Text = m.Telefono;
            DireccionTextBox.Text = m.Direccion;
            SexoDropDownList.SelectedValue = RevirtirSexo(m).ToString();
            
        }

        protected int RevirtirSexo(Mensajeros m)
        {
            int aux = 0;
            if (m.Sexo == "F")
                aux = 1;
            return aux;
        }

        protected string InsertarSexo()
        {
            string aux = "M";
            if (SexoDropDownList.SelectedValue == "0")
                aux = "F";
            return aux;
        }

        protected void Limpiar()
        {
            IdTextBox.Text = "";
            NombresTextBox.Text = "";
            CedulaTextBox.Text = "";
            CelularTextBox.Text = "";
            TelefonoTextBox.Text = "";
            DireccionTextBox.Text = "";
            SexoDropDownList.SelectedIndex = 1;
        }

        protected void LlenarClase(Mensajeros m)
        {
            m.Nombres = NombresTextBox.Text;
            m.FechaNacimiento = "11/23/1995";
            m.Sexo = InsertarSexo();
            m.Cedula = CedulaTextBox.Text;
            m.Celular = CelularTextBox.Text;
            m.Telefono = TelefonoTextBox.Text;
            m.Direccion = DireccionTextBox.Text;


        }

        protected void Cargar()
        {
            NombresTextBox.Focus();
        }
    }
}