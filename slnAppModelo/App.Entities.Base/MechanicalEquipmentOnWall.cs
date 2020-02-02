namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("MechanicalEquipmentOnWall")]
    public partial class MechanicalEquipmentOnWall
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        public int? HostId { get; set; }

        [StringLength(255)]
        public string HostName { get; set; }

        public virtual MechanicalEquipment MechanicalEquipment { get; set; }

        public virtual Walls Walls { get; set; }
    }
}
