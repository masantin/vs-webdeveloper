namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("SwitchSystem")]
    public partial class SwitchSystem
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string IDdeinterruptor { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
