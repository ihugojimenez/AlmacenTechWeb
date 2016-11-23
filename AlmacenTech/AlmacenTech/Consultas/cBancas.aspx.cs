﻿using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlmacenTech.Consultas
{
    public partial class cBancas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Condicion();
            gridView();
        }

        public string Condicion()
        {
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

            return condicion;
        }

        public void gridView()
        {
            Bancas u = new Bancas();
            BancasGridView.DataSource = u.Listado("BancaId, NumeroBanca, Direccion", Condicion(), "");
            BancasGridView.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Consultas/ReporteEquipos.aspx");
            Response.Clear();
        }
    }
}