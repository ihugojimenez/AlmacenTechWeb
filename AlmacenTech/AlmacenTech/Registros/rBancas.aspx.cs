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
            Bancas ba = new Bancas();
            LlenarClase(ba);
            if(ba.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            Bancas ba = new Bancas();
            LlenarClase(ba);
            if (ba.Editar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
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
        }

        public void LlenarClase(Bancas b)
        {
            b.NumeroBanca = Utilitarios.ConvertirAentero( NumTextBox.Text);
            b.Direccion = DireccionTextBox.Text;

        }

        public void LlenaCampos(int id)
        {
            Bancas b = new Bancas();
            b.Buscar(id);

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

        
    }
}