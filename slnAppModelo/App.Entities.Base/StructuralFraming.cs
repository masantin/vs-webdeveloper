namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("StructuralFraming")]
    public partial class StructuralFraming
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StructuralFraming()
        {
            LineLoadOnBeam = new HashSet<LineLoadOnBeam>();
            RebarOnFraming = new HashSet<RebarOnFraming>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Volumenreforzadoestimado { get; set; }

        public double? Volumen { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? Nivel { get; set; }

        public double? Longituddecorte { get; set; }

        public int? Niveldereferencia { get; set; }

        public int? Usoestructural { get; set; }

        public double? Longitud { get; set; }

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
        public string IfcMaterial { get; set; }

        [StringLength(255)]
        public string IfcExportAs { get; set; }

        [StringLength(255)]
        public string ObjectTypeOverride { get; set; }

        [StringLength(255)]
        public string IfcPresentationLayer { get; set; }

        [StringLength(255)]
        public string IfcSpatialContainer { get; set; }

        [StringLength(255)]
        public string IfcTag { get; set; }

        [Column("Bottom elevation(Tekla Common)")]
        [StringLength(255)]
        public string Bottom_elevation_Tekla_Common_ { get; set; }

        [Column("Top elevation(Tekla Common)")]
        [StringLength(255)]
        public string Top_elevation_Tekla_Common_ { get; set; }

        [Column("Preliminary mark(Tekla Common)")]
        [StringLength(255)]
        public string Preliminary_mark_Tekla_Common_ { get; set; }

        [Column("Phase(Tekla Common)")]
        public int? Phase_Tekla_Common_ { get; set; }

        [Column("Class(Tekla Common)")]
        [StringLength(255)]
        public string Class_Tekla_Common_ { get; set; }

        [Column("Width(BaseQuantities)")]
        public double? Width_BaseQuantities_ { get; set; }

        [Column("NetArea(BaseQuantities)")]
        public double? NetArea_BaseQuantities_ { get; set; }

        [Column("GrossArea(BaseQuantities)")]
        public double? GrossArea_BaseQuantities_ { get; set; }

        [Column("CrossSectionArea(BaseQuantities)")]
        public double? CrossSectionArea_BaseQuantities_ { get; set; }

        [Column("NetVolume(BaseQuantities)")]
        public double? NetVolume_BaseQuantities_ { get; set; }

        [Column("GrossVolume(BaseQuantities)")]
        public double? GrossVolume_BaseQuantities_ { get; set; }

        [StringLength(255)]
        public string IfcPropertySetList { get; set; }

        [Column("Length(BaseQuantities)")]
        public double? Length_BaseQuantities_ { get; set; }

        [Column("OuterSurfaceArea(BaseQuantities)")]
        public double? OuterSurfaceArea_BaseQuantities_ { get; set; }

        [Column("NetWeight(BaseQuantities)")]
        [StringLength(255)]
        public string NetWeight_BaseQuantities_ { get; set; }

        [StringLength(255)]
        public string IfcElementAssembly { get; set; }

        [Column("LoadBearing(Pset_PlateCommon)")]
        public int? LoadBearing_Pset_PlateCommon_ { get; set; }

        [Column("Reference(Pset_PlateCommon)")]
        [StringLength(255)]
        public string Reference_Pset_PlateCommon_ { get; set; }

        [Column("Finish(Tekla Common)")]
        [StringLength(255)]
        public string Finish_Tekla_Common_ { get; set; }

        [Column("Weight(Tekla Quantity)")]
        [StringLength(255)]
        public string Weight_Tekla_Quantity_ { get; set; }

        [Column("Volume(Tekla Quantity)")]
        public double? Volume_Tekla_Quantity_ { get; set; }

        [Column("Gross footprint area(Tekla Quantity)")]
        public double? Gross_footprint_area_Tekla_Quantity_ { get; set; }

        [Column("Area per tons(Tekla Quantity)")]
        public double? Area_per_tons_Tekla_Quantity_ { get; set; }

        [Column("Net surface area(Tekla Quantity)")]
        public double? Net_surface_area_Tekla_Quantity_ { get; set; }

        [Column("Height(Tekla Quantity)")]
        public double? Height_Tekla_Quantity_ { get; set; }

        [Column("Width(Tekla Quantity)")]
        public double? Width_Tekla_Quantity_ { get; set; }

        [Column("Length(Tekla Quantity)")]
        public double? Length_Tekla_Quantity_ { get; set; }

        [Column("LoadBearing(Pset_BeamCommon)")]
        public int? LoadBearing_Pset_BeamCommon_ { get; set; }

        [Column("Reference(Pset_BeamCommon)")]
        [StringLength(255)]
        public string Reference_Pset_BeamCommon_ { get; set; }

        [Column("LoadBearing(Pset_MemberCommon)")]
        public int? LoadBearing_Pset_MemberCommon_ { get; set; }

        [Column("Reference(Pset_MemberCommon)")]
        [StringLength(255)]
        public string Reference_Pset_MemberCommon_ { get; set; }

        [Column("GrossSurfaceArea(BaseQuantities)")]
        public double? GrossSurfaceArea_BaseQuantities_ { get; set; }

        [Column("GrossWeight(BaseQuantities)")]
        [StringLength(255)]
        public string GrossWeight_BaseQuantities_ { get; set; }

        [Column("Sector op02")]
        [StringLength(255)]
        public string Sector_op02 { get; set; }

        [Column("H/V")]
        [StringLength(255)]
        public string H_V { get; set; }

        [StringLength(255)]
        public string Secuencia { get; set; }

        [StringLength(255)]
        public string Frente { get; set; }

        [StringLength(255)]
        public string Recinto { get; set; }

        [StringLength(255)]
        public string Lote { get; set; }

        [Column("Fecha Incio")]
        [StringLength(255)]
        public string Fecha_Incio { get; set; }

        [StringLength(255)]
        public string HV { get; set; }

        [Column("%liberación")]
        [StringLength(255)]
        public string C_liberación { get; set; }

        [StringLength(255)]
        public string Ecompresion28 { get; set; }

        [StringLength(255)]
        public string Ecompresion7 { get; set; }

        [Column("f´c")]
        [StringLength(255)]
        public string f_c { get; set; }

        [StringLength(255)]
        public string fvaciado { get; set; }

        [StringLength(255)]
        public string NC { get; set; }

        [StringLength(255)]
        public string OBS { get; set; }

        [StringLength(255)]
        public string Ad01 { get; set; }

        [StringLength(255)]
        public string Ad02 { get; set; }

        [StringLength(255)]
        public string Ad03 { get; set; }

        [StringLength(255)]
        public string Ad04 { get; set; }

        public double? Ad05 { get; set; }

        [StringLength(255)]
        public string Ad06 { get; set; }

        [StringLength(255)]
        public string Ad07 { get; set; }

        [StringLength(255)]
        public string Ad08 { get; set; }

        [StringLength(255)]
        public string Ad09 { get; set; }

        [StringLength(255)]
        public string Ad10 { get; set; }

        [StringLength(255)]
        public string Ded01 { get; set; }

        [StringLength(255)]
        public string Ded02 { get; set; }

        [StringLength(255)]
        public string Ded03 { get; set; }

        [StringLength(255)]
        public string Ded04 { get; set; }

        [StringLength(255)]
        public string Ded05 { get; set; }

        [StringLength(255)]
        public string ETACliente { get; set; }

        [StringLength(255)]
        public string MatCliente { get; set; }

        [StringLength(255)]
        public string Metrados { get; set; }

        [StringLength(255)]
        public string Partida { get; set; }

        [StringLength(255)]
        public string Subcontratista { get; set; }

        [StringLength(255)]
        public string CodAct { get; set; }

        [StringLength(255)]
        public string CodCuadrilla { get; set; }

        [StringLength(255)]
        public string CodFrente { get; set; }

        [StringLength(255)]
        public string CodLote { get; set; }

        [StringLength(255)]
        public string CodPiso { get; set; }

        [StringLength(255)]
        public string CodPrioridad { get; set; }

        [StringLength(255)]
        public string CodWBS { get; set; }

        [StringLength(255)]
        public string CtrlCambios { get; set; }

        [StringLength(255)]
        public string Estado { get; set; }

        [Column("Ratio 1")]
        [StringLength(255)]
        public string Ratio_1 { get; set; }

        [Column("Ratio 2")]
        public double? Ratio_2 { get; set; }

        [Column("Ratio 3")]
        [StringLength(255)]
        public string Ratio_3 { get; set; }

        [StringLength(255)]
        public string Responsable { get; set; }

        [StringLength(255)]
        public string Restricciones { get; set; }

        [StringLength(255)]
        public string FactProductividad { get; set; }

        [StringLength(255)]
        public string FactProductividad01 { get; set; }

        [StringLength(255)]
        public string FactProductividad02 { get; set; }

        [StringLength(255)]
        public string FactProductividad03 { get; set; }

        [StringLength(255)]
        public string FactProductividad04 { get; set; }

        [StringLength(255)]
        public string FactProductividad05 { get; set; }

        [StringLength(255)]
        public string FactProductividad06 { get; set; }

        [StringLength(255)]
        public string RatPpto { get; set; }

        [StringLength(255)]
        public string RatPrev { get; set; }

        [StringLength(255)]
        public string RatReal { get; set; }

        [Column("Estado de Avance")]
        [StringLength(255)]
        public string Estado_de_Avance { get; set; }

        public int? Planificado_Concreto { get; set; }

        public int? Planificado_Acero { get; set; }

        public int? Planificado_Encofrado { get; set; }

        public int? Real_Concreto { get; set; }

        public int? Real_Acero { get; set; }

        public int? Real_Encofrado { get; set; }

        public int? Ejecutado { get; set; }

        public int? Maestro_Concreto { get; set; }

        public int? Maestro_Incio_Concreto { get; set; }

        public double? Plataformado { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual InstanceUsageEnums InstanceUsageEnums { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Levels Levels1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LineLoadOnBeam> LineLoadOnBeam { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RebarOnFraming> RebarOnFraming { get; set; }

        public virtual StructuralFramingTypes StructuralFramingTypes { get; set; }
    }
}
