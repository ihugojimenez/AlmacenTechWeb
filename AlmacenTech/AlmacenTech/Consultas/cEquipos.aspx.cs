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
            if (!IsPostBack)
                Cargar();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if(Utilitarios.Operacion.Equals("EQ.EquipoId = "))
                Utilitarios.Data = Utilitarios.Operacion + Utilitarios.ConvertirAentero(FiltroTextBox.Text);
            else
                Utilitarios.Data = Utilitarios.Operacion + Utilitarios.ConvertirAentero(AuxDropDownList.SelectedValue);
            Filtrar();
        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {
            
        }

        public string Filtrar()
        {
            Equipos eq = new Equipos();
            string condicion = "1=1";
            if(!Utilitarios.Data.Equals(""))
            {
                condicion = Utilitarios.Data;
                ValidationSummary1.Enabled = false;
                RequiredFieldValidator6.Enabled = false;
                RegularExpressionValidator2.Enabled = false;
            }
            EquiposGridView.DataSource = eq.ListadoConsultas(condicion);
            EquiposGridView.DataBind();

            return condicion;
        }

        protected void Cargar()
        {
            Equipos eq = new Equipos();
            EquiposGridView.DataSource = eq.ListadoConsultas("1=1");
            EquiposGridView.DataBind();
        }
        
        protected void FiltroDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (FiltroDropDownList.SelectedIndex == 0)
            {
                AuxDropDownList.Visible = false;
                FiltroTextBox.Visible = true;
                ValidationSummary1.Enabled = true;
                RequiredFieldValidator6.Enabled = true;
                RegularExpressionValidator2.Enabled = true;
                Utilitarios.Operacion = "EQ.EquipoId = ";

            }
            if (FiltroDropDownList.SelectedIndex == 1)
            {
                MarcaEquipos me = new MarcaEquipos();
                AuxDropDownList.DataSource = me.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Detalle";
                AuxDropDownList.DataValueField = "MarcaId";
                AuxDropDownList.DataBind();
                FiltroTextBox.Visible = false;
                AuxDropDownList.Visible = true;
                Utilitarios.Operacion = "EQ.MarcaId = ";



            }
            if (FiltroDropDownList.SelectedIndex == 2)
            {
                Estado es = new Estado();
                AuxDropDownList.DataSource = es.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Descripcion";
                AuxDropDownList.DataValueField = "EstadoId";
                AuxDropDownList.DataBind();
                FiltroTextBox.Visible = false;
                AuxDropDownList.Visible = true;
                Utilitarios.Operacion = "EQ.EstadoId = ";

            }

            if (FiltroDropDownList.SelectedIndex == 3)
            {
                TiposEquipos te = new TiposEquipos();
                AuxDropDownList.DataSource = te.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Detalle";
                AuxDropDownList.DataValueField = "TipoEquipoId";
                AuxDropDownList.DataBind();
                FiltroTextBox.Visible = false;
                AuxDropDownList.Visible = true;
                Utilitarios.Operacion = "EQ.TipoEquipoId = ";

            }
        }


        
    }
}