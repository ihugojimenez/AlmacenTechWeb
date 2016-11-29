using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Registros
{
    public partial class rSalidas : System.Web.UI.Page
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
            LlenaCampos(Utilitarios.ConvertirAentero(IdTextBox.Text));
        }


        protected void NewButton_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Agregar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Salidas s = new Salidas();
            LlenarClase(s);
            if (s.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Salidas s = new Salidas();
            LlenarClase(s);
            if (s.Editar())
            {
                Utilitarios.ShowToastr(this, "Modificado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar Modificar, si el problema persiste, contacte a soporte tecnico", "Mensaje", "error");
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Salidas s = new Salidas();
            s.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            RegresarEstado(s);
            if (s.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
        }

        protected void LlenaCampos(int id)
        {
            DataTable dt = new DataTable();
            Salidas s = new Salidas();  
            Equipos eq = new Equipos();
            TiposEquipos te = new TiposEquipos();
            MarcaEquipos me = new MarcaEquipos();
            s.Buscar(id);
            IdTextBox.Text = id.ToString();
            TipoDropDownList.SelectedValue = s.TipoSalidaId.ToString();
            BancasDropDownList.SelectedValue = s.BancaId.ToString();
            MensajerosDropDownList.SelectedValue = s.MensajeroId.ToString();
            FechaCargar.Text = "Fecha de Saldia: " + s.FechaSalida;
            FechaCargar.Visible = true;

            
            foreach (var d in s.Detalle)
            {
                eq.Buscar(d.EquipoId);
                me.Buscar(eq.MarcaId);
                te.Buscar(eq.TipoEquipoId);
                DataTable det = (DataTable)ViewState["Detalle"];
                det.Rows.Add(d.EquipoId, te.Detalle, me.Detalle, eq.Costo);
                ViewState["Detalle"] = det;
                EquiposGridView.DataSource = (DataTable)ViewState["Detalle"];
                EquiposGridView.DataBind();


            }
        }

        protected void Limpiar()
        {
            IdTextBox.Text = "";
            if(EquiposDropDownList.DataSource == null)
            {
                TipoDropDownList.SelectedIndex = 0;
                BancasDropDownList.SelectedIndex = 0;
                MensajerosDropDownList.SelectedIndex = 0;
                EquiposGridView.DataSource = null;
                EquiposGridView.DataBind();
            }
            else
            {
                TipoDropDownList.SelectedIndex = 0;
                EquiposDropDownList.SelectedIndex = 0;
                BancasDropDownList.SelectedIndex = 0;
                MensajerosDropDownList.SelectedIndex = 0;
                EquiposGridView.DataSource = null;
                EquiposGridView.DataBind();
                Cargar();
            }
            
        }

        protected void Cargar()
        {
            Equipos eq = new Equipos();
            TiposSalidas ts = new TiposSalidas();
            Bancas b = new Bancas();
            Mensajeros m = new Mensajeros();
            DataTable dt = new DataTable();

            FechaLabel.Text = DateTime.Now.ToString("dd/MM/yyy");
            FechaCargar.Visible = false;

            TipoDropDownList.DataSource = ts.Listado("*", "1=1", "");
            TipoDropDownList.DataValueField = "TipoSalidaId";
            TipoDropDownList.DataTextField = "Detalle";
            TipoDropDownList.DataBind();

            BancasDropDownList.DataSource = b.Listado("*", "1=1", "");
            BancasDropDownList.DataValueField = "BancaId";
            BancasDropDownList.DataTextField = "NumeroBanca";
            BancasDropDownList.DataBind();

            MensajerosDropDownList.DataSource = m.Listado("*", "1=1", "");
            MensajerosDropDownList.DataValueField = "MensajeroId";
            MensajerosDropDownList.DataTextField = "Nombres";
            MensajerosDropDownList.DataBind();

            EquiposDropDownList.DataSource = eq.Listadodts("EstadoId = 1");
            EquiposDropDownList.DataValueField = "EquipoId";
            EquiposDropDownList.DataTextField = "Aux";
            EquiposDropDownList.DataBind();

            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Equipo ID"), new DataColumn("Tipo de Equipo"), new DataColumn("Marca"), new DataColumn("Costo") });
            ViewState["Detalle"] = dt;

        }

        protected int CambioEstado()
        {
            int aux = 1;
            if (TipoDropDownList.SelectedIndex == 0)
                aux = 2;
            if (TipoDropDownList.SelectedIndex == 1)
                aux = 3;
            if (TipoDropDownList.SelectedIndex == 2)
                aux = 4;

            return aux;


        }

        protected void RegresarEstado(Salidas s)
        {

            
            Equipos eq = new Equipos();
            SalidasDetalle sd = new SalidasDetalle();
            s.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));

            foreach (var a in s.Detalle)
            {
                eq.Buscar(a.EquipoId);
                eq.Editarestado(1);


            }

        }



        protected void Agregar()
        {
            Equipos eq = new Equipos();
            TiposEquipos te = new TiposEquipos();
            MarcaEquipos me = new MarcaEquipos();
            DataTable dt = (DataTable)ViewState["Detalle"];
            eq.Buscar(Convert.ToInt32(EquiposDropDownList.SelectedValue));
            eq.Editarestado(CambioEstado());
            Cargar();
            me.Buscar(eq.MarcaId);
            te.Buscar(eq.TipoEquipoId);
            dt.Rows.Add(eq.EquipoId, te.Detalle, me.Detalle, eq.Costo);
            ViewState["Detalle"] = dt;
            EquiposGridView.DataSource = (DataTable)ViewState["Detalle"];
            EquiposGridView.DataBind();
        }

        protected void LlenarClase(Salidas s)
        {
            Equipos eq = new Equipos();
            
            s.UsuarioId = 1;
            s.TipoSalidaId = Utilitarios.ConvertirAentero(TipoDropDownList.SelectedValue);
            s.BancaId = Utilitarios.ConvertirAentero(BancasDropDownList.SelectedValue);
            s.MensajeroId = Utilitarios.ConvertirAentero(MensajerosDropDownList.SelectedValue);
            s.FechaSalida = FechaLabel.Text;



            foreach (GridViewRow g in EquiposGridView.Rows)
            {
                s.AgregarEquipos(s.SalidaId, Utilitarios.ConvertirAentero(g.Cells[0].Text));
            }

        }

        protected void IdTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}