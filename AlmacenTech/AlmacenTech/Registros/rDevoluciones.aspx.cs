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
    public partial class rDevoluciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Cargar();
            }
        }


        protected void SearchButton_Click1(object sender, EventArgs e)
        {
            Devoluciones d = new Devoluciones();
            if(d.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text)))
            {
                LlenaCampos(d);
            }
            else
            {
                Utilitarios.ShowToastr(this, "Registro no encontrado", "Mensaje", "error");
            }
            
        }

        protected void AddButton_Click1(object sender, EventArgs e)
        {
            Agregar();
        }

        protected void NewButton_Click1(object sender, EventArgs e)
        {
            Limpiar();
        }

        protected void SaveButton_Click1(object sender, EventArgs e)
        {
            Devoluciones d = new Devoluciones();
            LlenarClase(d);
            if (d.Insertar())
            {
                Limpiar();
                Utilitarios.ShowToastr(this, "Registrado", "Mensaje", "success");
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar Guardar, Vuelva a intentarlo,si el problema persiste, contacte a soporte tecnico", "Mensaje", "error");
            }
        }

        protected void UpdateButton_Click1(object sender, EventArgs e)
        {
            Devoluciones d = new Devoluciones();
            LlenarClase(d);
            if (d.Editar())
            {
                Utilitarios.ShowToastr(this, "Modificado", "Mensaje", "success");
                Limpiar();
            }
            else
            {
                Utilitarios.ShowToastr(this, "Error al intentar Modificar, si el problema persiste, contacte a soporte tecnico", "Mensaje", "error");
            }
        }

        protected void DeleteButton_Click1(object sender, EventArgs e)
        {
            Devoluciones d = new Devoluciones();
            d.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));
            RegresarEstado(d);
            if (d.Eliminar())
            {
                Utilitarios.ShowToastr(this, "Eliminado", "Mensaje", "success");
                Limpiar();
            }
        }

        protected void LlenaCampos(Devoluciones d)
        {
            DataTable dt = new DataTable();
            Equipos eq = new Equipos();
            TiposEquipos te = new TiposEquipos();
            MarcaEquipos me = new MarcaEquipos();
            IdTextBox.Text = d.DevolucionId.ToString();
            BancasDropDownList.SelectedValue = d.BancaId.ToString();
            MensajerosDropDownList.SelectedValue = d.MensajeroId.ToString();
            FechaCargar.Text = "Fecha de Devolucion: " + d.FechaDevolucion;
            FechaCargar.Visible = true;


            foreach (var de in d.Detalle)
            {
                eq.Buscar(de.EquipoId);
                me.Buscar(eq.MarcaId);
                te.Buscar(eq.TipoEquipoId);
                DataTable det = (DataTable)ViewState["Detalle"];
                det.Rows.Add(de.EquipoId, te.Detalle, me.Detalle, eq.Costo);
                ViewState["Detalle"] = det;
                EquiposGridView.DataSource = (DataTable)ViewState["Detalle"];
                EquiposGridView.DataBind();


            }
        }

        protected void Agregar()
        {
            Equipos eq = new Equipos();
            TiposEquipos te = new TiposEquipos();
            MarcaEquipos me = new MarcaEquipos();
            DataTable dt = (DataTable)ViewState["Detalle"];
            eq.Buscar(Convert.ToInt32(EquiposDropDownList.SelectedValue));
            eq.Editarestado(0);
            Cargar();
            me.Buscar(eq.MarcaId);
            te.Buscar(eq.TipoEquipoId);
            dt.Rows.Add(eq.EquipoId, te.Detalle, me.Detalle, eq.Costo);
            ViewState["Detalle"] = dt;
            EquiposGridView.DataSource = (DataTable)ViewState["Detalle"];
            EquiposGridView.DataBind();
        }

        protected void LlenarClase(Devoluciones d)
        {
            Equipos eq = new Equipos();

            d.UsuarioId = 1;
            d.BancaId = Utilitarios.ConvertirAentero(BancasDropDownList.SelectedValue);
            d.MensajeroId = Utilitarios.ConvertirAentero(MensajerosDropDownList.SelectedValue);
            d.FechaDevolucion = FechaLabel.Text;



            foreach (GridViewRow g in EquiposGridView.Rows)
            {
                d.AgregarEquipos(d.DevolucionId, Utilitarios.ConvertirAentero(g.Cells[0].Text));
            }

        }

        protected void RegresarEstado(Devoluciones d)
        {


            Equipos eq = new Equipos();
            DevolucionesDetalle dd = new DevolucionesDetalle();
            d.Buscar(Utilitarios.ConvertirAentero(IdTextBox.Text));

            foreach (var a in d.Detalle)
            {
                eq.Buscar(a.EquipoId);
                eq.Editarestado(1);


            }

        }

        protected void Limpiar()
        {
            IdTextBox.Text = "";
            EquiposDropDownList.SelectedIndex = 0;
            BancasDropDownList.SelectedIndex = 0;
            MensajerosDropDownList.SelectedIndex = 0;
            EquiposGridView.DataSource = null;
            EquiposGridView.DataBind();
            Cargar();
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

            BancasDropDownList.DataSource = b.Listado("*", "1=1", "");
            BancasDropDownList.DataValueField = "BancaId";
            BancasDropDownList.DataTextField = "NumeroBanca";
            BancasDropDownList.DataBind();

            MensajerosDropDownList.DataSource = m.Listado("*", "1=1", "");
            MensajerosDropDownList.DataValueField = "MensajeroId";
            MensajerosDropDownList.DataTextField = "Nombres";
            MensajerosDropDownList.DataBind();

            EquiposDropDownList.DataSource = eq.Listadodts("Estado = 1");
            EquiposDropDownList.DataValueField = "EquipoId";
            EquiposDropDownList.DataTextField = "Aux";
            EquiposDropDownList.DataBind();

            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Equipo ID"), new DataColumn("Tipo de Equipo"), new DataColumn("Marca"), new DataColumn("Costo") });
            ViewState["Detalle"] = dt;

        }
    }

   
}