using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cEquipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {

        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {

        }

        public string Filtrar()
        {

            if(AuxDropDownList.SelectedIndex==1)
            {
                MarcaEquipos me = new MarcaEquipos();
                AuxDropDownList.DataSource = me.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Detalle";
                AuxDropDownList.DataValueField = "MarcaId";
                AuxDropDownList.Visible = true;
                //me.BuscarFiltro("Select *" + " From MarcaEquipos Where Detalle like '% " + FiltroTextBox + "%'");
                
            }



            Equipos eq = new Equipos();
            string condicion = "1=1";

            if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                condicion = SeleccionarFiltro() + " like '%" + FiltroTextBox.Text + "%'";

            EquiposGridView.DataSource = eq.Listado("*", condicion, "");
            EquiposGridView.DataBind();

            return condicion;
        }

        protected string SeleccionarFiltro()
        {
            string op = " ";

            if (FiltroDropDownList.SelectedIndex == 0)
                op = "EquipoId";
            if (FiltroDropDownList.SelectedIndex == 1)
            {
                

            }  
            if (FiltroDropDownList.SelectedIndex == 2)
            {
                op = "Estado";
            }
                
            if (FiltroDropDownList.SelectedIndex == 3)
                op = "IdTipo";
            return op;

        }
    }
}