namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("PanelScheduleTemplatesSwitchboard")]
    public partial class PanelScheduleTemplatesSwitchboard
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
