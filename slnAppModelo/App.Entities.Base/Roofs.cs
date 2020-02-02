namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Roofs
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Roofs()
        {
            CurtainWallPanelOnRoof = new HashSet<CurtainWallPanelOnRoof>();
            GenericModelOnRoof = new HashSet<GenericModelOnRoof>();
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

        public int? Aleroovigadecelosía { get; set; }

        public double? Profundidaddeimposta { get; set; }

        public int? Cortedealero { get; set; }

        public int? Nivelbase { get; set; }

        public double? Desfasedellímite { get; set; }

        public int? Niveldellímite { get; set; }

        public double? Desfasebasedesdenivel { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        [Column("Fase Constructiva")]
        [StringLength(255)]
        public string Fase_Constructiva { get; set; }

        [Column("Nivel del Elemento")]
        [StringLength(255)]
        public string Nivel_del_Elemento { get; set; }

        [StringLength(255)]
        public string Sector { get; set; }

        [StringLength(255)]
        public string Elemento { get; set; }

        [Column("Descripción de Partida")]
        [StringLength(255)]
        public string Descripción_de_Partida { get; set; }

        [Column("Tipo de Altura")]
        [StringLength(255)]
        public string Tipo_de_Altura { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CurtainWallPanelOnRoof> CurtainWallPanelOnRoof { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual EaveCutterTypeEnums EaveCutterTypeEnums { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GenericModelOnRoof> GenericModelOnRoof { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Levels Levels1 { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual RoofTypes RoofTypes { get; set; }
    }
}
