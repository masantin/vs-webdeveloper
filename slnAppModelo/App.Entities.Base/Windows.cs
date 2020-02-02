namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Windows
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

        public double? Alturadeextremoinicial { get; set; }

        public double? Alturadeantepecho { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual WindowTypes WindowTypes { get; set; }

        public virtual WindowWall WindowWall { get; set; }
    }
}
