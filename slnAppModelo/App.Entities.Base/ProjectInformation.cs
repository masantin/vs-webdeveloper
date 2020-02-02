namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("ProjectInformation")]
    public partial class ProjectInformation
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Fechadeemisióndeproyecto { get; set; }

        [StringLength(255)]
        public string Estadodeproyecto { get; set; }

        [StringLength(255)]
        public string Nombredecliente { get; set; }

        [StringLength(255)]
        public string Direccióndeproyecto { get; set; }

        [StringLength(255)]
        public string Nombredeproyecto { get; set; }

        [StringLength(255)]
        public string Númerodeproyecto { get; set; }

        [StringLength(255)]
        public string IfcExportAs { get; set; }

        [StringLength(255)]
        public string IfcPropertySetList { get; set; }
    }
}
