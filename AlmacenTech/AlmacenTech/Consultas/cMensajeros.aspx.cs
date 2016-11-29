using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cMensajeros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                cargar();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Filtrar();
        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {
            Utilitarios.Data = Filtrar();
            Utilitarios.Set = "MensajerosDataSet";
            Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportVisor.aspx');</script>");
        }

        public string Filtrar()
        {
            Mensajeros M = new Mensajeros();
            string condicion = "1=1";

            if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                condicion = SeleccionarFiltro() + " like '%" + FiltroTextBox.Text + "%'";

            MensajerosGridView.DataSource = M.Listado("MensajeroId, Nombres, Sexo, FechaNacimiento, Cedula, Direccion, Celular", condicion, "");
            MensajerosGridView.DataBind();

            return condicion;
        }

        protected string SeleccionarFiltro()
        {
            string op = " ";

            if (FiltroDropDownList.SelectedIndex == 0)
                op = "MensajeroId";
            if (FiltroDropDownList.SelectedIndex == 1)
                op = "Nombres";
            if (FiltroDropDownList.SelectedIndex == 2)
                op = "Direccion";
            return op;

        }


        protected void cargar()
        {
            Mensajeros M = new Mensajeros();
            MensajerosGridView.DataSource = M.Listado("MensajeroId, Nombres, Sexo, FechaNacimiento, Cedula, Direccion, Celular", Filtrar(), "");
            MensajerosGridView.DataBind();
            Utilitarios.Data = Filtrar();
        }
    }
}