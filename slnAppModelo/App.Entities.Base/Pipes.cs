namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Pipes
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? Tipodesistema { get; set; }

        [StringLength(255)]
        public string Clasificacióndesistema { get; set; }

        public double? Grosordeaislamiento { get; set; }

        [StringLength(255)]
        public string Tipodeaislamiento { get; set; }

        [StringLength(255)]
        public string Tamañototal { get; set; }

        [StringLength(255)]
        public string Nombredesistema { get; set; }

        public double? Unidadesdeaparatos { get; set; }

        public double? Diámetroexterior { get; set; }

        public double? Elevacióninvertida { get; set; }

        public double? Flujoadicional { get; set; }

        public double? Diámetro { get; set; }

        public double? Flujo { get; set; }

        public double? Diámetrointerno { get; set; }

        public double? NúmerodeReynolds { get; set; }

        public double? Asperezarelativa { get; set; }

        public int? Estadodeflujo { get; set; }

        public double? Factordefricción { get; set; }

        public double? Velocidad { get; set; }

        public double? Fricción { get; set; }

        public double? Pérdidadecarga { get; set; }

        [StringLength(255)]
        public string Tamaño { get; set; }

        public int? Tramo { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Longitud { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual PipeFlowStateEnums PipeFlowStateEnums { get; set; }

        public virtual PipeTypes PipeTypes { get; set; }
    }
}
