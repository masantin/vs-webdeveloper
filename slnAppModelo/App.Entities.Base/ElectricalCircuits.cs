namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class ElectricalCircuits
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Panel { get; set; }

        [StringLength(255)]
        public string Númerodecircuito { get; set; }

        [Column("Núm.detramos")]
        public int? Núm_detramos { get; set; }

        [Column("Núm.deconductorescargados")]
        public int? Núm_deconductorescargados { get; set; }

        [Column("Núm.deconductoresneutros")]
        public int? Núm_deconductoresneutros { get; set; }

        [Column("Núm.deconductoresdetierra")]
        public int? Núm_deconductoresdetierra { get; set; }

        [StringLength(255)]
        public string Nombredecarga { get; set; }

        public double? FaseCdecargaaparente { get; set; }

        public double? FaseBdecargaaparente { get; set; }

        public double? FaseAdecargaaparente { get; set; }

        public double? FaseCdecargaactiva { get; set; }

        public double? FaseBdecargaactiva { get; set; }

        public double? FaseAdecargaactiva { get; set; }

        public double? Corrienteverdadera { get; set; }

        public double? FaseAdecorrienteverdadera { get; set; }

        public double? FaseBdecorrienteverdadera { get; set; }

        public double? FaseCdecorrienteverdadera { get; set; }

        public double? Corrienteaparente { get; set; }

        public double? FaseAdecorrienteaparente { get; set; }

        public double? FaseBdecorrienteaparente { get; set; }

        public double? FaseCdecorrienteaparente { get; set; }

        public double? Caídadevoltaje { get; set; }

        public double? Longitud { get; set; }

        public double? Corrientenominal { get; set; }

        [StringLength(255)]
        public string Tamañodecable { get; set; }

        public int? Tipodecable { get; set; }

        public int? Tipodesistema { get; set; }

        [StringLength(255)]
        public string Clasificacióndecarga { get; set; }

        public double? Cargaactiva { get; set; }

        public int? Estadodelfactordepotencia { get; set; }

        public double? Factordepotencia { get; set; }

        public double? Cargaaparente { get; set; }

        public int? Cargaequilibrada { get; set; }

        public double? Voltaje { get; set; }

        public int? Númerodepolos { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Fotograma { get; set; }

        public int? Númerodeelementos { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual WireTypes WireTypes { get; set; }

        public virtual ElectricalSystemEnums ElectricalSystemEnums { get; set; }
    }
}
