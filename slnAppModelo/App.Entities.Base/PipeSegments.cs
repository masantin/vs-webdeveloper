namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class PipeSegments
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Descripcióndesegmento { get; set; }

        [StringLength(255)]
        public string Tipodeconexión { get; set; }

        public double? Aspereza { get; set; }

        [Column("Serie/Tipo")]
        public int? Serie_Tipo { get; set; }

        public int? Material { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Materials Materials { get; set; }
    }
}
