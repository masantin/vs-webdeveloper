namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("DoorWall")]
    public partial class DoorWall
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DoorId { get; set; }

        [StringLength(255)]
        public string DoorName { get; set; }

        public int? WallId { get; set; }

        [StringLength(255)]
        public string WallName { get; set; }

        public virtual Doors Doors { get; set; }

        public virtual Walls Walls { get; set; }
    }
}
