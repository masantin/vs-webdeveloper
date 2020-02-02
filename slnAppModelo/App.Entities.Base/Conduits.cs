namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Conduits
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? IDdetipo { get; set; }

        [StringLength(255)]
        public string Tipodeservicio { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public double? Diámetroexterior { get; set; }

        public double? Diámetrointerior { get; set; }

        public double? Elevacióninferior { get; set; }

        public double? Elevaciónsuperior { get; set; }

        [Column("Diámetro(tamañocomercial)")]
        public double? Diámetro_tamañocomercial_ { get; set; }

        public double? Longitud { get; set; }

        [StringLength(255)]
        public string Tamaño { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual ConduitTypes ConduitTypes { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
