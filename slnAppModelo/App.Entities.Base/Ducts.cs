namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Ducts
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

        [StringLength(255)]
        public string Nombredesistema { get; set; }

        public double? Elevacióninferior { get; set; }

        public double? Elevaciónsuperior { get; set; }

        [StringLength(255)]
        public string Tamaño { get; set; }

        public int? Bloqueodetamaño { get; set; }

        public double? Flujoadicional { get; set; }

        public double? Diámetrohidráulico { get; set; }

        public double? NúmerodeReynolds { get; set; }

        public double? Diámetroequivalente { get; set; }

        public int? Tramo { get; set; }

        public double? Coeficientedepérdida { get; set; }

        public double? Presióndevelocidad { get; set; }

        public double? Área { get; set; }

        public double? Grosorderevestimiento { get; set; }

        public double? Grosordeaislamiento { get; set; }

        public double? Fricción { get; set; }

        public double? Pérdidadecarga { get; set; }

        public double? Velocidad { get; set; }

        public double? Diámetro { get; set; }

        public double? Altura { get; set; }

        public double? Anchura { get; set; }

        public double? Flujo { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Longitud { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        [StringLength(255)]
        public string Tamañolibre { get; set; }

        [StringLength(255)]
        public string Tipodeaislamiento { get; set; }

        [StringLength(255)]
        public string Tipodeaislamientointerior { get; set; }

        [StringLength(255)]
        public string Tamañototal { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual DuctTypes DuctTypes { get; set; }
    }
}
