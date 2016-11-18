using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Bancas : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int BancaId { get; set; }
        public int NumeroBanca { get; set; }
        public string Direccion { get; set; }
        

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            dt = Conexion.ObtenerDatos(string.Format("Select * from Bancas where BancaId = " + IdBuscado));
            if (dt.Rows.Count > 0)
            {
                this.BancaId = IdBuscado;
                this.NumeroBanca = int.Parse(dt.Rows[0]["NumeroBanca"].ToString());
                this.Direccion = dt.Rows[0]["Direccion"].ToString();
                
            }

            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            bool retorno;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Update Bancas set NumeroBanca = {0}, Direccion = '{1}' Where BancaId = {2}", this.NumeroBanca, this.Direccion, this.BancaId));
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retorno;
        }

        public override bool Eliminar()
        {
           
            bool retorno = false;
            try
            {
                retorno = Conexion.Ejecutar(string.Format("delete from Bancas where BancaId= {0} ", this.BancaId));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorno;
        }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Insert into Bancas(NumeroBanca, Direccion) values({0}, '{1}')", this.NumeroBanca, this.Direccion));
            }
            catch (Exception ex)
            {
                retorno = false;
                throw ex;

            }
            return retorno;
        }

        public override DataTable Listado(string Campos, string Condicion, string Orden)
        {
            ConexionDb conexion = new ConexionDb();
            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " order by  " + Orden;
            return conexion.ObtenerDatos(string.Format("select " + Campos + " from Bancas where " + Condicion + ordenFinal));
        }
    }
}
