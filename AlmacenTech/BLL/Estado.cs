using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DAL;

namespace BLL
{
    public class Estado : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int EstadoId { get; set; }
        public string Descripcion { get; set; }

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
                dt = Conexion.ObtenerDatos(string.Format("Select * from Estado where EstadoId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.EstadoId = IdBuscado;
                    this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
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

            return Conexion.ObtenerDatos("Select " + Campos + " From Estado Where " + Condicion + Orden);
        }
    }
}
