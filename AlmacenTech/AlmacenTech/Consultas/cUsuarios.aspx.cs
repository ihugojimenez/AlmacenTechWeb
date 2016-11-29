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
            string condicion = "";
            if (string.IsNullOrWhiteSpace(FiltroTextBox.Text))
            {
                condicion = "1=1";
            }
            else
            {
                if (!string.IsNullOrWhiteSpace(FiltroTextBox.Text))
                {
                    condicion = FiltroDropDownList.SelectedValue + " like '%" + FiltroTextBox.Text + "%'";
                    
                }
            }
            UsuariosRepeater.DataSource = u.Listado("Nombres,Imagen,NombreUsuario,IdTipo", condicion, "");
            UsuariosRepeater.DataBind();

            return condicion;
        }

        protected void SeleccionarFiltro()
        {

        }


        protected void cargar()
        {
            Usuarios u = new Usuarios();
            UsuariosRepeater.DataSource = u.Listado("Nombres,Imagen,NombreUsuario,IdTipo", Filtrar(), "");
            UsuariosRepeater.DataBind();
            Utilitarios.Data = Filtrar();
        }

        protected void PrintButon_Click(object sender, EventArgs e)
        {
            Usuarios u = new Usuarios();
            Utilitarios.Data = Filtrar();
            Response.Write("<script type='text/javascript'>detailedresults=window.open('ReportUsers.aspx');</script>");
        }
    }
}