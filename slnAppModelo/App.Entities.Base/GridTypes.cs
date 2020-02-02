namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class GridTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GridTypes()
        {
            Grids = new HashSet<Grids>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Nombredetipo { get; set; }

        public int? Símbolo { get; set; }

        public int? Segmentocentral { get; set; }

        public int? Patróndesegmentocentral { get; set; }

        public int? Colordesegmentocentral { get; set; }

        public int? Grosordesegmentocentral { get; set; }

        public double? Longituddesegmentosdeextremo { get; set; }

        public int? Patróndesegmentodeextremo { get; set; }

        public int? Colordesegmentodeextremo { get; set; }

        public int? Grosordesegmentodeextremo { get; set; }

        [Column("Extremo1Símbolosdevistadeplano(pordefecto)")]
        public int? Extremo1Símbolosdevistadeplano_pordefecto_ { get; set; }

        [Column("Extremo2Símbolosdevistadeplano(pordefecto)")]
        public int? Extremo2Símbolosdevistadeplano_pordefecto_ { get; set; }

        [Column("Símbolosdevistanodeplano(pordefecto)")]
        public int? Símbolosdevistanodeplano_pordefecto_ { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Grids> Grids { get; set; }
    }
}
