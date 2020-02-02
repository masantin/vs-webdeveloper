namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class DoorTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DoorTypes()
        {
            Doors = new HashSet<Doors>();
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

        public double? Anchuraaproximada { get; set; }

        public double? Alturaaproximada { get; set; }

        public double? Grosor { get; set; }

        public double? Anchura { get; set; }

        public double? Altura { get; set; }

        [StringLength(255)]
        public string Operación { get; set; }

        [StringLength(255)]
        public string Tipodeconstrucción { get; set; }

        [StringLength(255)]
        public string Clasificaciónparaincendios { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Doors> Doors { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }
    }
}
