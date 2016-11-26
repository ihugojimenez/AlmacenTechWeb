using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class DevolucionesDetalle
    {
        public int Id { get; set; }
        public int DevolucionId { get; set; }
        public int EquipoId { get; set; }

        public DevolucionesDetalle()
        {

        }

        public DevolucionesDetalle(int DevolucionId, int EquipoId)
        {
            this.DevolucionId = DevolucionId;
            this.EquipoId = EquipoId;
        }
    }
}
