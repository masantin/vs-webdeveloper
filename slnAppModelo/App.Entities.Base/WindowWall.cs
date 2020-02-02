namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("WindowWall")]
    public partial class WindowWall
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int WindowId { get; set; }

        [StringLength(255)]
        public string WindowName { get; set; }

        public int? WallId { get; set; }

        [StringLength(255)]
        public string WallName { get; set; }

        public virtual Walls Walls { get; set; }

        public virtual Windows Windows { get; set; }
    }
}
