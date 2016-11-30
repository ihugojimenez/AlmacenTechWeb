using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Mensajeros : ClaseMaestra
    {
        ConexionDb Conexion = new ConexionDb();
        public int MensajeroId { get; set; }
        public string Nombres { get; set; }
        public string Cedula { get; set; }
        public string Celular { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string FechaNacimiento { get; set; }
        public string Sexo { get; set; }

        public override bool Insertar()
        {
            bool retorno = false;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Insert into Mensajeros(Nombres, Cedula, Celular, Telefono, Direccion, FechaNacimiento, Sexo) values('{0}', '{1}','{2}', '{3}', '{4}', '{5}', '{6}')", this.Nombres, this.Cedula, this.Celular, this.Telefono, this.Direccion, this.FechaNacimiento, this.Sexo));
            }
            catch (Exception ex)
            {
                retorno = false;
                throw ex;

            }
            return retorno;
        }

        public override bool Editar()
        {
            bool retorno;

            try
            {
                retorno = Conexion.Ejecutar(string.Format("Update Mensajeros set Nombres = '{0}', Cedula = '{1}', Celular = '{2}', Telefono= '{3}', Direccion = '{4}', FechaNacimiento = '{5}', Sexo = '{6}'  Where MensajeroId = {7}", this.Nombres, this.Cedula, this.Celular, this.Telefono, this.Direccion, this.FechaNacimiento, this.Sexo, Utilitarios.ID));
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
                retorno = Conexion.Ejecutar(string.Format("delete from Mensajeros where MensajeroId= {0} ", this.MensajeroId));
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return retorno;
        }

        public override bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();

            try
            {
                dt = Conexion.ObtenerDatos(string.Format("Select * from Mensajeros where MensajeroId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.MensajeroId = IdBuscado;
                    Utilitarios.ID = IdBuscado;
                    this.Nombres = dt.Rows[0]["Nombres"].ToString();
                    this.Cedula = dt.Rows[0]["Cedula"].ToString();
                    this.Celular = dt.Rows[0]["Celular"].ToString();
                    this.Telefono = dt.Rows[0]["Telefono"].ToString();
                    this.Direccion = dt.Rows[0]["Direccion"].ToString();
                    this.FechaNacimiento = dt.Rows[0]["FechaNacimiento"].ToString();
                    this.Sexo = dt.Rows[0]["Sexo"].ToString();
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
            ConexionDb conexion = new ConexionDb();
            string ordenFinal = "";
            if (!Orden.Equals(""))
                ordenFinal = " order by  " + Orden;
            return conexion.ObtenerDatos(string.Format("select " + Campos + " from Mensajeros where " + Condicion + ordenFinal));
        }
    }
}
