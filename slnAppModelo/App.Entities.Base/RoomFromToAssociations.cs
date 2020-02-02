namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class RoomFromToAssociations
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PhaseId { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DesignOptionId { get; set; }

        public int? FromRoom { get; set; }

        public int? ToRoom { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Rooms Rooms { get; set; }

        public virtual Rooms Rooms1 { get; set; }
    }
}
