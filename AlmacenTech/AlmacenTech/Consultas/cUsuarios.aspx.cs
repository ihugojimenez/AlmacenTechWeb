using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AlmacenTech.Consultas;
using Microsoft.Reporting.WebForms;

namespace AlmacenTech.Consultas
{
    public partial class cUsuarios : System.Web.UI.Page
    {
        public string aux { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                cargar();
        }

        protected void SearchButton_Click1(object sender, EventArgs e)
        {
            Filtrar();
        }


        public string Filtrar()
        {
            Usuarios u = new Usuarios();
            string condicion = "1=1";

            if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                condicion = SeleccionarFiltro() + " like '%" + FiltroTextBox.Text + "%'";
             
            UsuariosRepeater.DataSource = u.ListadoConsulta(condicion);
            UsuariosRepeater.DataBind();

            return condicion;
        }

        protected string SeleccionarFiltro()
        {
            string op=" ";

            if (FiltroDropDownList.SelectedIndex == 0)
                op = "UsuarioId";
            if (FiltroDropDownList.SelectedIndex == 1)
                op = "Nombres";
            if (FiltroDropDownList.SelectedIndex == 2)
                op = "NombreUsuario";
            if (FiltroDropDownList.SelectedIndex == 3)
                op = "IdTipo";
            return op;

        }


        protected void cargar()
        {
            Usuarios u = new Usuarios();
            UsuariosRepeater.DataSource = u.ListadoConsulta(Filtrar());
            UsuariosRepeater.DataBind();
            Utilitarios.Data = Filtrar();
        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {
            Utilitarios.Data = Filtrar();
            Utilitarios.Set = "UsuariosDataSet";
            //Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportUsers.aspx');</script>");
            Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportVisor.aspx');</script>");
        }
    }
}