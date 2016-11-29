using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class ReportBancas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                cargar();
        }

        public void cargar()
        {
            Bancas B = new Bancas();
            Utilitarios.ConfigurarReporte(BancasReportViewer, @"Reportes\BancasReport.rdlc", "BancasDataSet", B.Listado("*", Utilitarios.Data, ""));
        }
    }
}