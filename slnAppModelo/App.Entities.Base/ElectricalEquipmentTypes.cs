namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class ElectricalEquipmentTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ElectricalEquipmentTypes()
        {
            ElectricalEquipment = new HashSet<ElectricalEquipment>();
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

        [StringLength(255)]
        public string Voltaje { get; set; }

        [StringLength(255)]
        public string Vataje { get; set; }

        [StringLength(255)]
        public string Bus { get; set; }

        public int? Barradepuestaatierra { get; set; }

        [StringLength(255)]
        public string Tipodesuministro { get; set; }

        public double? Potenciadedisyuntorprincipal { get; set; }

        public int? Busneutro { get; set; }

        public double? Potencianeutra { get; set; }

        public int? Terminalesdesubalimentación { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElectricalEquipment> ElectricalEquipment { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }
    }
}
