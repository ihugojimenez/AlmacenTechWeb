using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cDevoluciones : System.Web.UI.Page
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

        protected void AuxDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        public string Filtrar()
        {
            Devoluciones d = new Devoluciones();
            string condicion = "1=1";
            if (!Utilitarios.Data.Equals("1=1"))
            {
                condicion = Utilitarios.Data;
                ValidationSummary1.Enabled = false;
                RequiredFieldValidator6.Enabled = false;
                RegularExpressionValidator2.Enabled = false;
            }
            SalidasGridView.DataSource = d.ListadoConsultas(condicion);
            SalidasGridView.DataBind();

            return condicion;
        }

        protected void Cargar()
        {
            Devoluciones d = new Devoluciones();
            SalidasGridView.DataSource = d.ListadoConsultas("1=1");
            SalidasGridView.DataBind();
            Utilitarios.Data = "1=1";
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
                Utilitarios.Operacion = "D.DevolucionId = ";

            }
            if (FiltroDropDownList.SelectedIndex == 1)
            {

                AuxDropDownList.Visible = false;
                FiltroTextBox.Visible = true;
                Utilitarios.Operacion = "B.NumeroBanca ";



            }
            if (FiltroDropDownList.SelectedIndex == 2)
            {

                AuxDropDownList.Visible = false;
                FiltroTextBox.Visible = true;
                Utilitarios.Operacion = "M.Nombres = ";

            }

            //if (FiltroDropDownList.SelectedIndex == 3)
            //{
            //    TiposEquipos te = new TiposEquipos();
            //    AuxDropDownList.DataSource = te.Listado("*", "1=1", "");
            //    AuxDropDownList.DataTextField = "Detalle";
            //    AuxDropDownList.DataValueField = "TipoEquipoId";
            //    AuxDropDownList.DataBind();
            //    FiltroTextBox.Visible = false;
            //    AuxDropDownList.Visible = true;
            //    Utilitarios.Operacion = "EQ.TipoEquipoId = ";

            //}
        }
    }
}