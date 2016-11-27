using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rBancas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Cargar();
            }
        }

        protected void SearchButton_Click1(object sender, EventArgs e)
        {
            Bancas b = new Bancas();
            if(b.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text)))
            {
                LlenaCampos(b);
            }
            else
            {
                Utilitarios.ShowToastr(this, "Sucursal no encontrada, vuelva a intentar", "Mensaje", "error");
            }

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Bancas ba = new Bancas();
            LlenarClase(ba);
            if (ba.Insertar())
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

            Bancas ba = new Bancas();
            LlenarClase(ba);
            if(validarEditar())
            {
                if (ba.Editar())
                {
                    Limpiar();
                    Utilitarios.ShowToastr(this, "Editado", "Mensaje", "success");
                }
                else
                {
                    Utilitarios.ShowToastr(this, "Error al intentar editar, intentelo de nuevo", "Mensaje", "error");
                }
            }
            
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Bancas ba = new Bancas();
            ba.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            if (ba.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar eliminar, intentelo de nuevo", "Mensaje", "error");
            }
        }

        public void LlenarClase(Bancas b)
        {
            b.NumeroBanca = Utilitarios.ConvertirAentero( NumTextBox.Text);
            b.Direccion = DireccionTextBox.Text;

        }

        public bool validarEditar()
        {
            bool yes = true;
            if (NumTextBox.Text.Equals("") || DireccionTextBox.Text.Equals(""))
            {
                UpdateButton.ValidationGroup = "Save";
                ValidationSummary3.Visible = true;
                yes = false;
            }

            return yes;
        }

        public void LlenaCampos(Bancas b)
        {
            
            IdTextBox.Text = b.BancaId.ToString();
            NumTextBox.Text = b.NumeroBanca.ToString();
            DireccionTextBox.Text = b.Direccion;
             
                
        }

        public void Limpiar()
        {
            IdTextBox.Text = "";
            NumTextBox.Text = "";
            DireccionTextBox.Text = "";
        }

        protected void Cargar()
        {
            NumTextBox.Focus();
        }

        protected void IdTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}