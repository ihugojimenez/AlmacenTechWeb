using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Salidas : ClaseMaestra
    {
        ConexionDb con = new ConexionDb();
        public int SalidaId { get; set; }
        public int UsuarioId { get; set; }
        public int TipoSalidaId { get; set; }
        public int BancaId { get; set; }
        public int MensajeroId { get; set; }
        public string FechaSalida { get; set; }
        public List<SalidasDetalle> Detalle { get; set; }

        public Salidas()
        {
            this.UsuarioId = 0;
            this.TipoSalidaId = 0;
            this.BancaId = 0;
            this.MensajeroId = 0;
            this.FechaSalida = "";
            this.Detalle = new List<SalidasDetalle>();
        }

        public override bool Insertar()
        {
            bool retorno;
            int aux;
            object identity;

            try
            {
                identity = con.ObtenerValor(string.Format("Insert into Salidas(UsuarioId, TipoSalidaId, BancaId, MensajeroId, FechaSalida) Values({0}, {1}, {2}, {3}, '{4}'); Select @@Identity", Utilitarios.UsuarioID, this.TipoSalidaId, this.BancaId, this.MensajeroId, this.FechaSalida));

                int.TryParse(identity.ToString(), out aux);

                foreach (SalidasDetalle d in this.Detalle)
                {
                    con.Ejecutar(string.Format("Insert into SalidasDetalle(SalidaId, EquipoId) Values({0}, {1})", aux, d.EquipoId));
                }
                retorno = true;
            }
            catch(Exception ex)
            {
                //throw ex;
                retorno = false;
            }

            return retorno;
        }




        public override bool Editar()
        {
            bool retorno = false;
            try
            {
                retorno = con.Ejecutar(String.Format("Update Salidas set UsuarioId={0}, TipoSalidaId ={1}, BancaId = {2}, MensajeroId = {3}, FechaSalida = '{4}' Where SalidaId = {5}", Utilitarios.UsuarioID, this.TipoSalidaId, this.BancaId, this.MensajeroId, this.FechaSalida, Utilitarios.ID));
                if (retorno)
                {
                    con.Ejecutar(String.Format("Delete from SalidasDetalle Where SalidaId= {0}", Utilitarios.ID));
                    foreach (SalidasDetalle var in this.Detalle)
                    {
                        con.Ejecutar(string.Format("Insert into SalidasDetalle(SalidaId, EquipoId) Values({0}, {1})", Utilitarios.ID, var.EquipoId));
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
                retorno = con.Ejecutar(string.Format("Delete from SalidasDetalle where SalidaId = " + this.SalidaId + ";" + " Delete from Salidas where SalidaId =" + this.SalidaId));
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
                dt = con.ObtenerDatos(string.Format("Select * from Salidas Where SalidaId = " + IdBuscado));
                if (dt.Rows.Count > 0)
                {
                    this.SalidaId = IdBuscado;
                    Utilitarios.ID = IdBuscado;
                    this.UsuarioId = Utilitarios.ConvertirAentero(dt.Rows[0]["UsuarioId"].ToString());
                    this.TipoSalidaId = Utilitarios.ConvertirAentero(dt.Rows[0]["TipoSalidaId"].ToString());
                    this.BancaId = Utilitarios.ConvertirAentero(dt.Rows[0]["BancaId"].ToString());
                    this.MensajeroId = Utilitarios.ConvertirAentero(dt.Rows[0]["MensajeroId"].ToString());
                    this.FechaSalida = dt.Rows[0]["FechaSalida"].ToString();

                }

                det = con.ObtenerDatos(string.Format("Select * from SalidasDetalle where SalidaId = " + IdBuscado));
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

        public DataTable ListadoConsultas(string Condicion)
        {
            ConexionDb conexion = new ConexionDb();
            
            return conexion.ObtenerDatos(string.Format("select S.SalidaId,FechaSalida, B.NumeroBanca, M.Nombres, TE.Detalle + '   '+ ME.Detalle +  '   ' + EQ.SerialNum as Detalles" + " from Salidas as S inner join SalidasDetalle SD on S.SalidaId=SD.SalidaId inner join Equipos EQ on SD.EquipoId= EQ.EquipoId inner join Mensajeros M on S.MensajeroId=M.MensajeroId inner join Bancas B on S.BancaId=B.BancaId inner join TiposEquipos TE on EQ.TipoEquipoId=TE.TipoEquipoId inner join MarcaEquipos ME on EQ.MarcaId=ME.MarcaId where " + Condicion));
        }

        public void AgregarEquipos(int SalidaId, int EquipoId)
        {
            this.Detalle.Add(new SalidasDetalle(SalidaId, EquipoId));
        }
    }
}
