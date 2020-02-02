namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class GenericModels
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? IDdeanfitrión { get; set; }

        public int? Nivel { get; set; }

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

        [StringLength(255)]
        public string IfcName { get; set; }

        [StringLength(255)]
        public string IfcDescription { get; set; }

        [StringLength(255)]
        public string IfcExportAs { get; set; }

        [StringLength(255)]
        public string IfcTag { get; set; }

        [Column("Width(BaseQuantities)")]
        public double? Width_BaseQuantities_ { get; set; }

        [StringLength(255)]
        public string IfcPropertySetList { get; set; }

        [StringLength(255)]
        public string IfcSpatialContainer { get; set; }

        [StringLength(255)]
        public string IfcPredefinedType { get; set; }

        [StringLength(255)]
        public string IfcAssemblyPlace { get; set; }

        [Column("Assembly/Cast unit weight(Tekla Assembly)")]
        [StringLength(255)]
        public string Assembly_Cast_unit_weight_Tekla_Assembly_ { get; set; }

        [Column("Assembly/Cast unit bottom elevation(Tekla Assembly)")]
        [StringLength(255)]
        public string Assembly_Cast_unit_bottom_elevation_Tekla_Assembly_ { get; set; }

        [Column("Assembly/Cast unit top elevation(Tekla Assembly)")]
        [StringLength(255)]
        public string Assembly_Cast_unit_top_elevation_Tekla_Assembly_ { get; set; }

        [Column("Assembly/Cast unit position code(Tekla Assembly)")]
        [StringLength(255)]
        public string Assembly_Cast_unit_position_code_Tekla_Assembly_ { get; set; }

        [Column("Assembly/Cast unit Mark(Tekla Assembly)")]
        [StringLength(255)]
        public string Assembly_Cast_unit_Mark_Tekla_Assembly_ { get; set; }

        [Column("PLANS_STATUS(WorkflowAssembly)")]
        [StringLength(255)]
        public string PLANS_STATUS_WorkflowAssembly_ { get; set; }

        [Column("Cast unit type(Tekla Assembly)")]
        [StringLength(255)]
        public string Cast_unit_type_Tekla_Assembly_ { get; set; }

        [Column("Cast unit rebar weight(Tekla Assembly)")]
        [StringLength(255)]
        public string Cast_unit_rebar_weight_Tekla_Assembly_ { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual GenericModelOnRoof GenericModelOnRoof { get; set; }

        public virtual GenericModelOnWall GenericModelOnWall { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual GenericModelTypes GenericModelTypes { get; set; }

        public virtual Levels Levels { get; set; }
    }
}
