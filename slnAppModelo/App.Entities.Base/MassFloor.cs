namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("MassFloor")]
    public partial class MassFloor
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? Losa { get; set; }

        public int? Tiposconceptuales { get; set; }

        public int? Aparienciagráfica { get; set; }

        [Column("Masa:Descripción")]
        [StringLength(255)]
        public string Masa_Descripción { get; set; }

        [Column("Masa:Comentarios")]
        [StringLength(255)]
        public string Masa_Comentarios { get; set; }

        [Column("Masa:Comentariosdetipo")]
        [StringLength(255)]
        public string Masa_Comentariosdetipo { get; set; }

        [Column("Masa:Familiaytipo")]
        [StringLength(255)]
        public string Masa_Familiaytipo { get; set; }

        [Column("Masa:Familia")]
        [StringLength(255)]
        public string Masa_Familia { get; set; }

        [Column("Masa:Tipo")]
        [StringLength(255)]
        public string Masa_Tipo { get; set; }

        [StringLength(255)]
        public string Uso { get; set; }

        [StringLength(255)]
        public string Nivel { get; set; }

        public double? Volumendesuelo { get; set; }

        public double? Áreadesuperficieexterior { get; set; }

        public double? Áreacomúndelpiso { get; set; }

        public double? Perímetrodesuelo { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }
    }
}
