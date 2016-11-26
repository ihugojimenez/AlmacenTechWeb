﻿using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class Devoluciones : ClaseMaestra
    {
        ConexionDb con = new ConexionDb();
        public int DevolucionId { get; set; }
        public int UsuarioId { get; set; }
        public int MensajeroId { get; set; }
        public int BancaId { get; set; }
        public string FechaDevolucion { get; set; }
        public List<DevolucionesDetalle> Detalle { get; set; }

        public Devoluciones()
        {
            this.UsuarioId = 0;
            this.BancaId = 0;
            this.MensajeroId = 0;
            this.FechaDevolucion = "";
            this.Detalle = new List<DevolucionesDetalle>();
        }

        public override bool Insertar()
        {
            bool retorno;
            int aux;
            object identity;

            try
            {
                identity = con.ObtenerValor(string.Format("Insert into Devoluciones(UsuarioId, MensajeroId, BancaId, FechaDevolucion) Values({0}, {1}, {2}, {3}, '{4}'); Select @@Identity", 1, this.MensajeroId, this.BancaId, this.FechaDevolucion));

                int.TryParse(identity.ToString(), out aux);

                foreach (DevolucionesDetalle d in this.Detalle)
                {
                    con.Ejecutar(string.Format("Insert into DevolucionesDetalle(DevolucionId, EquipoId) Values({0}, {1})", aux, d.EquipoId));
                }
                retorno = true;
            }
            catch(Exception ex)
            {
                throw ex;
                //retorno = false;
            }

            return retorno;
        }

        public override bool Editar()
        {
            bool retorno = false;
            try
            {
                retorno = con.Ejecutar(String.Format("Update Devoluciones set UsuarioId={0},  MensajeroId = {1}, BancaId = {2}, FechaSalida = '{3}' Where DevolucionId = {4}", 1, this.MensajeroId, this.BancaId, this.FechaDevolucion, this.DevolucionId));
                if (retorno)
                {
                    con.Ejecutar(String.Format("Delete from DevolucionesDetalle Where DevolucionId= {0}", this.DevolucionId));
                    foreach (DevolucionesDetalle var in this.Detalle)
                    {
                        con.Ejecutar(string.Format("Insert into DevolucionesDetalle(DevolucionId, EquipoId Values({0}, {1})", this.DevolucionId, var.EquipoId));
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return retorno;
        }

        public override bool Eliminar()
        {
            bool retorno;

            try
            {
                retorno = con.Ejecutar(string.Format("Delete from DevolucionesDetalle where DevolucionId = " + this.DevolucionId + ";" + " Delete from Devoluciones where DevolucionId =" + this.DevolucionId));
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
            DataTable det = new DataTable();

            try
            {
                dt = con.ObtenerDatos(string.Format("Select * from Devoluciones Where DevolucionId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.DevolucionId = IdBuscado;
                    this.UsuarioId = Utilitarios.ConvertirAentero(dt.Rows[0]["UsuarioId"].ToString());
                    this.MensajeroId = Utilitarios.ConvertirAentero(dt.Rows[0]["MensajeroId"].ToString());
                    this.BancaId = Utilitarios.ConvertirAentero(dt.Rows[0]["BancaId"].ToString());
                    this.FechaDevolucion = dt.Rows[0]["FechaSalida"].ToString();

                }

                det = con.ObtenerDatos(string.Format("Select * from DevolucionesDetalle where DevolucionId = " + IdBuscado));
                foreach (DataRow dr in det.Rows)
                {
                    this.AgregarEquipos(IdBuscado, (int)dr["EquipoId"]);
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
            throw new NotImplementedException();
        }

        public void AgregarEquipos(int DevolucionId, int EquipoId)
        {
            this.Detalle.Add(new DevolucionesDetalle(DevolucionId, EquipoId));
        }
    }
}