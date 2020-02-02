namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class PointLoads
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

        public double? Mz { get; set; }

        public double? My { get; set; }

        public double? Mx { get; set; }

        public double? Fz { get; set; }

        public double? Fy { get; set; }

        public double? Fx { get; set; }

        public int? Reacción { get; set; }

        public int? Casodecarga { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }
    }
}
