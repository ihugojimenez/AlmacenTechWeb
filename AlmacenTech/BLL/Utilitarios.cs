﻿using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLL
{
    public static class Utilitarios
    {
        public static string Data { get; set; }
        public static string Operacion { get; set; }
        public static string Set { get; set; }
        public static string UserName { get; set; }
        public static string Pass { get; set; }
        public static string Names { get; set; }
        public static string Img { get; set; }
        public static int Tipo { get; set; }
        public static int ID { get; set; }
        public static int UsuarioID { get; set; }



        public static void ShowToastr(this Page page, string message, string title, string type = "info")
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message",
                  String.Format("toastr.{0}('{1}', '{2}');", type.ToLower(), message, title), addScriptTags: true);
        }

        public static int ConvertirAentero(string s)
        {
            int id = 0;
            int.TryParse(s, out id);
            return id;
        }

        public static float ConvertirAflotante(string s)
        {
            float aux = 0;
            float.TryParse(s, out aux);
            return aux;
        }

        public static void ConfigurarReporte(ReportViewer rv, string ruta, string DataSets, DataTable listado)
        {
            rv.LocalReport.DataSources.Clear();
            rv.ProcessingMode = ProcessingMode.Local;


            rv.LocalReport.ReportPath = ruta;
            ReportDataSource sourse = new ReportDataSource(DataSets, listado);

            rv.LocalReport.DataSources.Add(sourse);
            rv.LocalReport.Refresh();
        }
        
    }
}
