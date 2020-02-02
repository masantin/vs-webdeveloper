namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("StructuralRebar")]
    public partial class StructuralRebar
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Volumenreforzadoestimado { get; set; }

        public double? Diámetrodecurvaturaestándar { get; set; }

        [StringLength(255)]
        public string Marcadetabladeplanificación { get; set; }

        public int? Estilo { get; set; }

        public double? Longituddebarra { get; set; }

        public int? Forma { get; set; }

        public double? Espaciado { get; set; }

        public int? Cantidad { get; set; }

        public int? Regladediseño { get; set; }

        public int? Ganchoalfinal { get; set; }

        public int? Ganchoalinicio { get; set; }

        public double? Longitudtotaldebarra { get; set; }

        public double? Diámetrodebarra { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

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

        [Column("Codigo del Elemento")]
        [StringLength(255)]
        public string Codigo_del_Elemento { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual RebarLayoutEnums RebarLayoutEnums { get; set; }

        public virtual RebarOnColumn RebarOnColumn { get; set; }

        public virtual RebarOnFloor RebarOnFloor { get; set; }

        public virtual RebarOnFoundation RebarOnFoundation { get; set; }

        public virtual RebarOnFraming RebarOnFraming { get; set; }

        public virtual RebarOnWall RebarOnWall { get; set; }

        public virtual RebarStyleEnums RebarStyleEnums { get; set; }

        public virtual StructuralRebarShapes StructuralRebarShapes { get; set; }

        public virtual StructuralRebarHookTypes StructuralRebarHookTypes { get; set; }

        public virtual StructuralRebarHookTypes StructuralRebarHookTypes1 { get; set; }

        public virtual StructuralRebarBarTypes StructuralRebarBarTypes { get; set; }
    }
}
