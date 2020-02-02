namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class LineLoads
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? Naturaleza { get; set; }

        [StringLength(255)]
        public string Todaslascargasno0 { get; set; }

        public double? Longitud { get; set; }

        public double? Mz2 { get; set; }

        public double? My2 { get; set; }

        public double? Mx2 { get; set; }

        public double? Mz1 { get; set; }

        public double? My1 { get; set; }

        public double? Mx1 { get; set; }

        public double? Fz2 { get; set; }

        public double? Fy2 { get; set; }

        public double? Fx2 { get; set; }

        public double? Fz1 { get; set; }

        public double? Fy1 { get; set; }

        public double? Fx1 { get; set; }

        public int? Reacción { get; set; }

        public int? Cargauniforme { get; set; }

        public int? Casodecarga { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual LineLoadOnBeam LineLoadOnBeam { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }
    }
}
