using BLL;
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class ReportEquipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Configurar(EquiposReportViewer);
            }
        }

        private void Configurar(ReportViewer reportViewergenerico)
        {
            Equipos eq = new Equipos();

            reportViewergenerico.LocalReport.DataSources.Clear();
            reportViewergenerico.ProcessingMode = ProcessingMode.Local;

            reportViewergenerico.LocalReport.ReportPath = @"Reportes\EquiposReport.rdlc";

            ReportDataSource source = new ReportDataSource("EquiposDataSet", eq.ListadoViewer("1=1"));
            reportViewergenerico.LocalReport.DataSources.Add(source);

            reportViewergenerico.LocalReport.Refresh();
        }
    }
}