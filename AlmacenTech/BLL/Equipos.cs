using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace BLL
{
    public class Equipos : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int EquipoId { get; set; }
        public int MarcaId { get; set; }
        public int TipoEquipoId { get; set; }
        public string SerialNum { get; set; }
        public float Costo { get; set; }
        public int Estado { get; set; }

        public override bool Buscar(int IdBuscado)
        {

            DataTable dt = new DataTable();

            try
            {
                dt = Conexion.ObtenerDatos(string.Format("Select * from Equipos where EquipoId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.EquipoId = IdBuscado;
                    this.MarcaId = int.Parse(dt.Rows[0]["MarcaId"].ToString());
                    this.TipoEquipoId = int.Parse(dt.Rows[0]["TipoEquipoId"].ToString());
                    this.SerialNum = dt.Rows[0]["SerialNum"].ToString();
                    this.Costo = float.Parse(dt.Rows[0]["Costo"].ToString());
                    this.Estado = int.Parse(dt.Rows[0]["Estado"].ToString());
                }
            }
            catch (Exception ex)
            {
                throw ex;

            }


            return dt.Rows.Count > 0;
        }

        public override bool Editar()
        {
            bool retorno;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Update Equipos set MarcaId = {0}, TipoEquipoId = {1}, SerialNum = '{2}', Costo= {3} Where UsuarioId = {4}", this.MarcaId, this.TipoEquipoId, this.SerialNum, this.Costo, this.EquipoId));
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
                retorno = Conexion.Ejecutar(string.Format("delete from Equipos where EquipoId= {0} ", this.EquipoId));
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
                retorno = Conexion.Ejecutar(string.Format("Insert into Equipos(MarcaId, TipoEquipoId, SerialNum, Costo, Estado) values({0}, {1},'{2}', {3}, {4})", this.MarcaId, this.TipoEquipoId, this.SerialNum, this.Costo, 0));
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
            return conexion.ObtenerDatos(string.Format("select " + Campos + " from Equipos where " + Condicion + ordenFinal));
        }

        public DataTable Listadodts(string Condicion)
        {
            ConexionDb conexion = new ConexionDb();

            return conexion.ObtenerDatos(string.Format("select EquipoId, TE.Detalle + '  ' + ME.Detalle + '  ' + E.SerialNum as Aux" + " from Equipos as E inner join TiposEquipos TE on E.TipoEquipoId=TE.TipoEquipoId inner join MarcaEquipos ME on E.MarcaId=ME.MarcaId where " + Condicion));
        }

        //from Ventas as V inner join VentasDetalle VD on V.VentaId=VD.VentaId inner join Articulos A on VD.ArticuloId=A.ArticuloId where " 
        //    string consulta = "SELECT au_id, au_fname + ' ' + au_lname AS name " +
        //          "FROM Authors";
    }
}