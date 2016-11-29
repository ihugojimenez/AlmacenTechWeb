using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class MarcaEquipos : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int MarcaId { get; set; }
        public string Detalle { get; set; }
        
        public override bool Insertar()
        {
            throw new NotImplementedException();
        }

        public override bool Editar()
        {
            throw new NotImplementedException();
        }

        public override bool Eliminar()
        {
            throw new NotImplementedException();
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            try
            {
                dt = Conexion.ObtenerDatos(string.Format("Select * from MarcaEquipos where MarcaId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.MarcaId = IdBuscado;
                    this.Detalle = dt.Rows[0]["Detalle"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;

            }


            return dt.Rows.Count > 0;
        }

        public  bool BuscarFiltro(string cond)
        {
            DataTable dt = new DataTable();

            try
            {
                dt = Conexion.ObtenerDatos(string.Format(cond));
                if (dt.Rows.Count > 0)
                {
                    this.MarcaId = Utilitarios.ConvertirAentero(dt.Rows[0]["MarcaId"].ToString());
                    this.Detalle = dt.Rows[0]["Detalle"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;

            }


            return dt.Rows.Count > 0;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " Orden by  " + Orden;

            return Conexion.ObtenerDatos("Select " + Campos + " From MarcaEquipos Where " + Condicion + Orden);
        }
    }
}
