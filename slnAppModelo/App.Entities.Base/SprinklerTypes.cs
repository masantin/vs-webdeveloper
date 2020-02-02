namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class SprinklerTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SprinklerTypes()
        {
            Sprinklers = new HashSet<Sprinklers>();
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

        public double? Tamañodeorificio { get; set; }

        public double? Estimacióndetemperatura { get; set; }

        public double? FactorK { get; set; }

        public int? Clasedepresión { get; set; }

        public int? Orificio { get; set; }

        public int? Cobertura { get; set; }

        public int? Respuesta { get; set; }

        public double? Diámetro { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sprinklers> Sprinklers { get; set; }
    }
}
