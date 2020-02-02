namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Openings
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        public int? LevelId { get; set; }

        public int? HostId { get; set; }

        public virtual OpeningOnFloor OpeningOnFloor { get; set; }

        public virtual OpeningOnWall OpeningOnWall { get; set; }
    }
}
