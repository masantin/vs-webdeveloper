namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("ElementPhase")]
    public partial class ElementPhase
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ElementId { get; set; }

        [StringLength(255)]
        public string ElementName { get; set; }

        public int? PhaseCreatedId { get; set; }

        [StringLength(255)]
        public string PhaseName { get; set; }

        public virtual Phases Phases { get; set; }
    }
}
