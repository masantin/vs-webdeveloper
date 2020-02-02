namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class StructuralRebarBarTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StructuralRebarBarTypes()
        {
            StructuralRebar = new HashSet<StructuralRebar>();
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

        public int? Material { get; set; }

        public double? Diámetrodecurvaturadeganchoestándar { get; set; }

        public double? Radiomáximodecurvatura { get; set; }

        [Column("Diámetrodecurvaturadeestribo/tirante")]
        public double? Diámetrodecurvaturadeestribo_tirante { get; set; }

        public double? Diámetrodecurvaturaestándar { get; set; }

        public int? Subcategoría { get; set; }

        public double? Diámetrodebarra { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralRebar> StructuralRebar { get; set; }
    }
}
