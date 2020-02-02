namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class ConduitFittings
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Opcióndediseño { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        [StringLength(255)]
        public string Tipodeservicio { get; set; }

        [StringLength(255)]
        public string Tamaño { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual ConduitFittingType ConduitFittingType { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }
    }
}
