using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class TiposSalidas : ClaseMaestra
    {
        ConexionDb con = new ConexionDb();
        public int TipoSalidaId { get; set; }
        public int MyProperty { get; set; }

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
            throw new NotImplementedException();
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " Orden by  " + Orden;

            return con.ObtenerDatos("Select " + Campos + " From TipoSalida Where " + Condicion + Orden);
        }
    }
}
