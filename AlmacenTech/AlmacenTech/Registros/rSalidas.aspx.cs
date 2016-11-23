using BLL;
using System;
using System.Collections.Generic;
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

        protected void SearchButton_Click(object sender, EventArgs e)
        {

        }

        protected void NewButton_Click(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

        }

        protected void Cargar()
        {
            Equipos eq = new Equipos();
            TiposSalidas ts = new TiposSalidas();
            Bancas b = new Bancas();
            Mensajeros m = new Mensajeros();

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

            EquiposDropDownList.DataSource = eq.Listadodts("Estado = 0");
            EquiposDropDownList.DataValueField = "EquipoId";
            EquiposDropDownList.DataTextField = "Aux";
            EquiposDropDownList.DataBind();

        }
    }
}