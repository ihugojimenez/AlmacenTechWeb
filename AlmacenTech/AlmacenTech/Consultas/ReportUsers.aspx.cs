using BLL;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class ReportUsers : System.Web.UI.Page
    {

        public ReportUsers()
        {
                
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                cargar();
        }

        public void cargar()
        {
            Usuarios u = new Usuarios();
            Utilitarios.ConfigurarReporte(UsersReportViewer, @"Reportes\UsersReport.rdlc", "UsersDataSet", u.Listadodts(Utilitarios.Data));
        }
    }
}