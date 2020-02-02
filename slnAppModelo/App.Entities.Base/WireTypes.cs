namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class WireTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WireTypes()
        {
            ElectricalCircuits = new HashSet<ElectricalCircuits>();
            Wires = new HashSet<Wires>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Notaclave { get; set; }

        [StringLength(255)]
        public string Modelo { get; set; }

        [StringLength(255)]
        public string Fabricante { get; set; }

        [StringLength(255)]
        public string Comentariosdetipo { get; set; }

        [StringLength(255)]
        public string URL { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }

        [StringLength(255)]
        public string NúmeroOmniClass { get; set; }

        [StringLength(255)]
        public string Códigodemontaje { get; set; }

        [StringLength(255)]
        public string Nombredefamilia { get; set; }

        [StringLength(255)]
        public string Nombredetipo { get; set; }

        [StringLength(255)]
        public string Marcadetipo { get; set; }

        public double? Costo { get; set; }

        public int? Compartirconductorneutro { get; set; }

        public int? Compartirconductordetierra { get; set; }

        public int? Material { get; set; }

        public int? Estimacióndetemperatura { get; set; }

        public int? Aislamiento { get; set; }

        [Column("Tamañomáx.")]
        [StringLength(255)]
        public string Tamañomáx_ { get; set; }

        public double? Multiplicadorneutro { get; set; }

        public int? Neutroincluidoencargaequilibrada { get; set; }

        public int? Tamañoneutro { get; set; }

        [StringLength(255)]
        public string Tipodetubo { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElectricalCircuits> ElectricalCircuits { get; set; }

        public virtual NeutralModeEnums NeutralModeEnums { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Wires> Wires { get; set; }
    }
}
