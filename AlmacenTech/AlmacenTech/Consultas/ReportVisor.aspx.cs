using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class ReportVisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Cargar();
        }

        protected void Cargar()
        {

            if(Utilitarios.Set.Equals("UsersDataSet"))
            {
                Usuarios u = new Usuarios();
                Utilitarios.ConfigurarReporte(ReportViewerGenerico, @"Reportes\UsersReport.rdlc", "UsersDataSet", u.Listadodts(Utilitarios.Data));
            }
            if(Utilitarios.Set.Equals("BancasDataSet"))
            {
                Bancas B = new Bancas();
                Utilitarios.ConfigurarReporte(ReportViewerGenerico, @"Reportes\BancasReport.rdlc", "BancasDataSet", B.Listado("*", Utilitarios.Data, ""));
            }
            if(Utilitarios.Set.Equals("EquiposDataSet"))
            {
                Equipos eq = new Equipos();
                Utilitarios.ConfigurarReporte(ReportViewerGenerico, @"Reportes\EquiposReport.rdlc", "EquiposDataSet", eq.ListadoViewer(Utilitarios.Data));
            }
        }
    }
}