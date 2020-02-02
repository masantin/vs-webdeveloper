namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class DuctAccessories
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Clasificacióndesistema { get; set; }

        [StringLength(255)]
        public string Nombredesistema { get; set; }

        [StringLength(255)]
        public string Tamaño { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        [StringLength(255)]
        public string Tamañolibre { get; set; }

        public double? Grosordeaislamiento { get; set; }

        [StringLength(255)]
        public string Tipodeaislamiento { get; set; }

        public double? Grosordeaislamientointerior { get; set; }

        [StringLength(255)]
        public string Tipodeaislamientointerior { get; set; }

        [StringLength(255)]
        public string Tamañototal { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual DuctAccessoryTypes DuctAccessoryTypes { get; set; }
    }
}
