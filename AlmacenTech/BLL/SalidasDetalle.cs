using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class SalidasDetalle
    {
        public int Id { get; set; }
        public int SalidaId { get; set; }
        public int EquipoId { get; set; }

        public SalidasDetalle()
        {

        }

        public SalidasDetalle(int SalidaId, int EquipoId)
        {
            this.SalidaId = SalidaId;
            this.EquipoId = EquipoId;
        }
    }
}
