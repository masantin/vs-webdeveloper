namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class DuctSystemTypes
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [Column("Símbolodesubida/bajada")]
        public int? Símbolodesubida_bajada { get; set; }

        [StringLength(255)]
        public string Abreviatura { get; set; }

        [StringLength(255)]
        public string Clasificacióndesistema { get; set; }

        [StringLength(255)]
        public string Comentariosdetipo { get; set; }

        [StringLength(255)]
        public string URL { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }
    }
}
