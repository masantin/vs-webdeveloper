namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class PipingSystemTypes
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Abreviatura { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }

        public double? Densidaddefluido { get; set; }

        public double? Temperaturadefluido { get; set; }

        public int? Tipodefluido { get; set; }

        public double? Viscosidaddinámicadefluido { get; set; }

        public int? Símbolodebajadadelíneaúnica { get; set; }

        public int? Símbolodesubidadelíneaúnica { get; set; }

        public int? Símbolodetehaciaabajodelíneaúnica { get; set; }

        public int? Símbolodetehaciaarribadelíneaúnica { get; set; }

        [StringLength(255)]
        public string Clasificacióndesistema { get; set; }

        public int? Símbolodebajadadedoslíneas { get; set; }

        public int? Símbolodesubidadedoslíneas { get; set; }

        [StringLength(255)]
        public string Comentariosdetipo { get; set; }

        [StringLength(255)]
        public string URL { get; set; }
    }
}
