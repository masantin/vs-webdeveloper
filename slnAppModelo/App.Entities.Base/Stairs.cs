namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Stairs
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? Númerodecontrahuellasreal { get; set; }

        public int? Nivelsuperiordeedificiomultiplanta { get; set; }

        public double? Desfasesuperior { get; set; }

        public double? Desfasedebase { get; set; }

        public double? Alturadecontrahuellareal { get; set; }

        public double? Anchura { get; set; }

        public int? Nivelsuperior { get; set; }

        public int? Nivelbase { get; set; }

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

        [Column("Sector op02")]
        [StringLength(255)]
        public string Sector_op02 { get; set; }

        [StringLength(255)]
        public string Frente { get; set; }

        [StringLength(255)]
        public string Recinto { get; set; }

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

        public int? Planificado_Concreto { get; set; }

        public int? Planificado_Acero { get; set; }

        public int? Planificado_Encofrado { get; set; }

        public int? Real_Concreto { get; set; }

        public int? Real_Acero { get; set; }

        public int? Real_Encofrado { get; set; }

        public int? Maestro_Concreto { get; set; }

        public int? Maestro_Incio_Concreto { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Levels Levels1 { get; set; }

        public virtual Levels Levels2 { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual StairTypes StairTypes { get; set; }
    }
}
