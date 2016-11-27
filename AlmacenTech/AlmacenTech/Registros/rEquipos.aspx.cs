using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rEquipos : System.Web.UI.Page
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
            Equipos eq = new Equipos();
            if (eq.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text)))
            {
                LlenarClase(eq);
            }
            else
            {
                Utilitarios.ShowToastr(this, "Equipo no encontrado, vuelva a intentar", "Mensaje", "error");
            }
        }
        
        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Equipos eq = new Equipos();
            LlenarClase(eq);
            if (eq.Insertar())
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
            Equipos eq = new Equipos();
            LlenarCampos(eq);
            if(validarEditar())
            {
                if (eq.Editar())
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
            Equipos eq = new Equipos();
            eq.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            if (eq.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar eliminar, intentelo de nuevo", "Mensaje", "error");
            }
        }

        public void LlenarClase(Equipos eq)
        {
            
            eq.MarcaId = Utilitarios.ConvertirAentero(MarcaDropDownList.SelectedValue);
            eq.TipoEquipoId = Utilitarios.ConvertirAentero(TipoDropDownList.SelectedValue);
            eq.SerialNum = SerialNumTextBox.Text;
            eq.Costo = Utilitarios.ConvertirAflotante(CostoTextBox.Text);

        }

        public bool validarEditar()
        {
            bool yes = true;
            if (SerialNumTextBox.Text.Equals("") || CostoTextBox.Text.Equals(""))
            {
                UpdateButton.ValidationGroup = "Save";
                ValidationSummary3.Visible = true;
                yes = false;
            }

            return yes;
        }

        public void Cargar()
        {
            MarcaEquipos me = new MarcaEquipos();
            TiposEquipos te = new TiposEquipos();
            Limpiar();

            MarcaDropDownList.DataSource = me.Listado("*", "1=1", "");
            MarcaDropDownList.DataValueField = "MarcaId";
            MarcaDropDownList.DataTextField = "Detalle";
            MarcaDropDownList.DataBind();

            TipoDropDownList.DataSource = te.Listado("*", "1=1", "");
            TipoDropDownList.DataValueField = "TipoEquipoId";
            TipoDropDownList.DataTextField = "Detalle";
            TipoDropDownList.DataBind();
            SerialNumTextBox.Focus();
        }

        public void Limpiar()
        {
            IdTextBox.Text = "";
            MarcaDropDownList.SelectedIndex = 0;
            TipoDropDownList.SelectedIndex = 0;
            SerialNumTextBox.Text = "";
            CostoTextBox.Text = "";
            Label6.Visible = false;
            EstadoTextBox.Visible = false;

                
        }

        public void LlenarCampos(Equipos eq)
        {
            
            IdTextBox.Text = eq.EquipoId.ToString();
            MarcaDropDownList.SelectedValue = eq.MarcaId.ToString();
            TipoDropDownList.SelectedValue = eq.TipoEquipoId.ToString();
            SerialNumTextBox.Text = eq.SerialNum;
            CostoTextBox.Text = eq.Costo.ToString();
            EstadoTextBox.Text = Estado();
            Label6.Visible = true;
            EstadoTextBox.Visible = true;

        }

        public string Estado()
        {
            Equipos eq = new Equipos();
            string estado = "";
            if (eq.Estado == 0)
                estado = "Existencia";
            if (eq.Estado == 1)
                estado = "Prestado";
            if (eq.Estado == 2)
                estado = "Reparacion";
            if (eq.Estado == 1)
                estado = "Asignado";

            return estado;

        }

        protected void IdTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}