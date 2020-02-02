namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Areas
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdeesquemadeárea { get; set; }

        [StringLength(255)]
        public string Tipodeárea { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Perímetro { get; set; }

        public int? Nivel { get; set; }

        public double? Área { get; set; }

        [StringLength(255)]
        public string Número { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        public virtual AreaSchemes AreaSchemes { get; set; }

        public virtual Levels Levels { get; set; }
    }
}
