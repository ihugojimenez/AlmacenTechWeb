using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cSalidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Cargar();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if (Utilitarios.Operacion.Equals("S.SalidaId = "))
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
            Salidas S = new Salidas();
            string condicion = "1=1";
            if (!Utilitarios.Data.Equals("1=1"))
            {
                condicion = Utilitarios.Data;
                ValidationSummary1.Enabled = false;
                RequiredFieldValidator6.Enabled = false;
                RegularExpressionValidator2.Enabled = false;
            }
            SalidasGridView.DataSource = S.ListadoConsultas(condicion);
            SalidasGridView.DataBind();

            return condicion;
        }

        protected void Cargar()
        {
            Salidas s = new Salidas();
            SalidasGridView.DataSource = s.ListadoConsultas("1=1");
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
                Utilitarios.Operacion = "S.SalidaId = ";

            }
            if (FiltroDropDownList.SelectedIndex == 1)
            {
                TiposSalidas ts = new TiposSalidas();
                AuxDropDownList.DataSource = ts.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Detalle";
                AuxDropDownList.DataValueField = "TipoSalidaId";
                AuxDropDownList.DataBind();
                FiltroTextBox.Visible = false;
                AuxDropDownList.Visible = true;
                Utilitarios.Operacion = "S.TipoSalidaId = ";



            }
            if (FiltroDropDownList.SelectedIndex == 2)
            {
                Mensajeros M = new Mensajeros();
                AuxDropDownList.DataSource = M.Listado("*", "1=1", "");
                AuxDropDownList.DataTextField = "Nombres";
                AuxDropDownList.DataValueField = "MensajeroId";
                AuxDropDownList.DataBind();
                FiltroTextBox.Visible = false;
                AuxDropDownList.Visible = true;
                Utilitarios.Operacion = "S.MensajeroId = ";

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