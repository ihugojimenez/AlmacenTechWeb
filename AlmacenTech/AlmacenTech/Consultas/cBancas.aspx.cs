using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cBancas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                cargar();
        }

        protected void SearchButton_Click1(object sender, EventArgs e)
        {

            Filtrar();
        }

        public string Filtrar()
        {
            Bancas B = new Bancas();
            string condicion = "1=1";

            if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                condicion = SeleccionarFiltro() + " like '%" + FiltroTextBox.Text + "%'";

            BancasGridView.DataSource = B.Listado("BancaId, NumeroBanca, Direccion", condicion, "");
            BancasGridView.DataBind();

            return condicion;
        }

        protected string SeleccionarFiltro()
        {
            string op = " ";

            if (FiltroDropDownList.SelectedIndex == 0)
                op = "BancaId";
            if (FiltroDropDownList.SelectedIndex == 1)
                op = "Direccion";
            if (FiltroDropDownList.SelectedIndex == 2)
                op = "NumeroBanca";
            return op;

        }


        protected void cargar()
        {
            Bancas b = new Bancas();
            BancasGridView.DataSource = b.Listado("BancaId, NumeroBanca, Direccion", Filtrar(), "");
            BancasGridView.DataBind();
            Utilitarios.Data = Filtrar();
        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {
            Utilitarios.Data = Filtrar();
            Utilitarios.Set = "BancasDataSet";
            //Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportBancas.aspx');</script>");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportVisor.aspx');</script>");
        }
    }
}