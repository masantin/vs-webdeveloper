namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("Casework")]
    public partial class Casework
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

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual CaseworkTypes CaseworkTypes { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual CaseworkOnWall CaseworkOnWall { get; set; }
    }
}
