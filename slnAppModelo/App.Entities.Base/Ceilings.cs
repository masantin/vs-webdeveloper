namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Ceilings
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ceilings()
        {
            LightingFixtureOnCeiling = new HashSet<LightingFixtureOnCeiling>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Volumen { get; set; }

        public double? Área { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Desfasedealturadesdenivel { get; set; }

        public int? Nivel { get; set; }

        public double? Perímetro { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        [Column("Estado de Avance")]
        [StringLength(255)]
        public string Estado_de_Avance { get; set; }

        public int? Ejecutado { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual CeilingTypes CeilingTypes { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LightingFixtureOnCeiling> LightingFixtureOnCeiling { get; set; }
    }
}
