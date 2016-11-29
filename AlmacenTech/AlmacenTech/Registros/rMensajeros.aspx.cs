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

        protected void SearchButton_Click1(object sender, EventArgs e)
        {
            Mensajeros m = new Mensajeros();
            if (m.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text)))
            {
                LlenaCampos(m);

            }
            else
            {
                Utilitarios.ShowToastr(this, "Mensajero no encontrado, vuelva a intentar", "Mensaje", "error");
            }
        }

        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Mensajeros m = new Mensajeros();
            LlenarClase(m);
            if(ValidarFecha())
            {
                if (m.Insertar())
                {
                    Limpiar();
                    Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
                }
                else
                {
                    Utilitarios.ShowToastr(this, "Error al intentar guardar, intentelo de nuevo", "Mensaje", "error");
                }
            }
            
        }

        
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Mensajeros m = new Mensajeros();
            LlenarClase(m);

            if(validarEditar())
            {
                if (m.Insertar())
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
            Mensajeros m = new Mensajeros();
            m.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            if (m.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar eliminar, intentelo de nuevo", "Mensaje", "error");
            }
        }

        public void LlenaCampos(Mensajeros m)
        {
            IdTextBox.Text = m.MensajeroId.ToString();
            NombresTextBox.Text = m.Nombres;
            CedulaTextBox.Text = m.Cedula;
            CelularTextBox.Text = m.Celular;
            TelefonoTextBox.Text = m.Telefono;
            DireccionTextBox.Text = m.Direccion;
            SexoDropDownList.SelectedValue = RevirtirSexo(m).ToString();
            LlenarFecha(m);


        }


        public bool validarEditar()
        {
            bool yes = true;
            if (NombresTextBox.Text.Equals("") || CedulaTextBox.Text.Equals("") || CelularTextBox.Text.Equals("") || TelefonoTextBox.Text.Equals("") || DireccionTextBox.Text.Equals(""))
            {
                UpdateButton.ValidationGroup = "Save";
                ValidationSummary3.Visible = true;
                yes = false;
            }

            return yes;
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
            m.Nombres = NombresTextBox.Text.ToUpper() ;            
            m.FechaNacimiento = string.Concat(Fecha(), AnioDropDownList.SelectedItem.ToString());
            m.Sexo = InsertarSexo();
            m.Cedula = CedulaTextBox.Text;
            m.Celular = CelularTextBox.Text;
            m.Telefono = TelefonoTextBox.Text;
            m.Direccion = DireccionTextBox.Text.ToUpper();
        }

        protected string Fecha()
        {
            string fecha = "";
            string dia="";
            string mes="";

            if (DiaDropDownList.SelectedIndex < 10)
                dia = string.Concat("0", DiaDropDownList.SelectedIndex.ToString());
            else
                dia = DiaDropDownList.SelectedIndex.ToString();
            if (MesDropDownList.SelectedIndex < 10)
                mes = string.Concat("0", MesDropDownList.SelectedIndex.ToString());
            else
                mes = MesDropDownList.SelectedIndex.ToString();

            return fecha = string.Concat(dia, mes);
        }

        protected bool ValidarFecha()
        {
            bool yes = true;
            if(DiaDropDownList.SelectedItem.Text == "Dia" || MesDropDownList.SelectedItem.Text == "Mes" || AnioDropDownList.SelectedItem.Text == "Año")
            {
                Utilitarios.ShowToastr(this, "Favor ingrese su fecha", "Mensaje", "error");
                yes = false;
                DiaDropDownList.Focus();
            }

            return yes;
        }

        protected void LlenarFecha(Mensajeros m)
        {
            string dia = "";
            string mes = "";
            string anio = " ";

            if(m.FechaNacimiento[0].ToString().Equals("0"))
                dia = m.FechaNacimiento[1].ToString();
            else
                dia = string.Concat(m.FechaNacimiento[0].ToString(), m.FechaNacimiento[1]);
            if(m.FechaNacimiento[2].ToString().Equals("0"))
                mes = m.FechaNacimiento[3].ToString();
            else
                mes = string.Concat(m.FechaNacimiento[2].ToString(), m.FechaNacimiento[3].ToString());

            anio = string.Concat(m.FechaNacimiento[4].ToString(), m.FechaNacimiento[5].ToString(), m.FechaNacimiento[6].ToString(), m.FechaNacimiento[7].ToString());
            AnioDropDownList.SelectedValue = anio;
            DiaDropDownList.SelectedIndex = Utilitarios.ConvertirAentero(dia);
            MesDropDownList.SelectedIndex = Utilitarios.ConvertirAentero(mes);

        }

        protected void Cargar()
        {
            NombresTextBox.Focus();
            DiaDropDownList.Items.Add("Dia");
            AnioDropDownList.Items.Add("Año");
            for (int ae = 1; ae <= 31; ae++)
                DiaDropDownList.Items.Add(ae.ToString());
            int aux = DateTime.Now.Year;
            for (int a = aux; a >= (aux - 120); a--) 
            {
                AnioDropDownList.Items.Add(a.ToString());
            }

            AnioDropDownList.DataBind();
            DiaDropDownList.DataBind();
        }

        
    }
}