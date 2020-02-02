namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("AreaLoadOnSlab")]
    public partial class AreaLoadOnSlab
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int AreaLoadId { get; set; }

        public int? SlabId { get; set; }

        public virtual AreaLoads AreaLoads { get; set; }

        public virtual Floors Floors { get; set; }
    }
}
