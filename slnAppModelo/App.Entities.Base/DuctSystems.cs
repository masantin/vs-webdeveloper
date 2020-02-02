namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class DuctSystems
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? IDdetipo { get; set; }

        public int? Númerodeelementos { get; set; }

        [StringLength(255)]
        public string Equiposdesistema { get; set; }

        [StringLength(255)]
        public string Nombredesistema { get; set; }

        public double? Flujo { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
