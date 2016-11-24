using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class TiposEquipos : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int TipoEquipoId { get; set; }
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
                dt = Conexion.ObtenerDatos(string.Format("Select * from TiposEquipos where TipoEquipoId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.TipoEquipoId = IdBuscado;
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

            return Conexion.ObtenerDatos("Select " + Campos + " From TiposEquipos Where " + Condicion + Orden);
        }
    }
}
