namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("LineLoadOnBeam")]
    public partial class LineLoadOnBeam
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int LineLoadId { get; set; }

        public int? BeamId { get; set; }

        public virtual StructuralFraming StructuralFraming { get; set; }

        public virtual LineLoads LineLoads { get; set; }
    }
}
