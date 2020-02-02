namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Rooms
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Rooms()
        {
            RoomAssociations = new HashSet<RoomAssociations>();
            RoomFromToAssociations = new HashSet<RoomFromToAssociations>();
            RoomFromToAssociations1 = new HashSet<RoomFromToAssociations>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? IDdefase { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Volumen { get; set; }

        public double? Perímetro { get; set; }

        public int? Nivel { get; set; }

        [StringLength(255)]
        public string Ocupación { get; set; }

        [StringLength(255)]
        public string Departamento { get; set; }

        [StringLength(255)]
        public string Acabadodelabase { get; set; }

        [StringLength(255)]
        public string Acabadodeltecho { get; set; }

        [StringLength(255)]
        public string Acabadodemuro { get; set; }

        [StringLength(255)]
        public string Acabadodelsuelo { get; set; }

        public double? Área { get; set; }

        [StringLength(255)]
        public string Número { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        public double? Alturasinlímites { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Phases Phases { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoomAssociations> RoomAssociations { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoomFromToAssociations> RoomFromToAssociations { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoomFromToAssociations> RoomFromToAssociations1 { get; set; }
    }
}
