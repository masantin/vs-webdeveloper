namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("ElementLevel")]
    public partial class ElementLevel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ElementId { get; set; }

        [StringLength(255)]
        public string ElementName { get; set; }

        public int? LevelId { get; set; }

        [StringLength(255)]
        public string LevelName { get; set; }

        public virtual Levels Levels { get; set; }
    }
}
