namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Views
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Familia { get; set; }

        [StringLength(255)]
        public string Familiaytipo { get; set; }

        public int? Filtrodefases { get; set; }

        public int? Visibilidaddepiezas { get; set; }

        public int? Niveldedetalle { get; set; }

        public int? Caminodesol { get; set; }

        [StringLength(255)]
        public string Mostrarnombre { get; set; }

        [StringLength(255)]
        public string Nombredeplano { get; set; }

        [StringLength(255)]
        public string Númerodeplano { get; set; }

        public int? Orientación { get; set; }

        [StringLength(255)]
        public string Nivelasociado { get; set; }

        public int? Disciplina { get; set; }

        public int? Visualizarmodelo { get; set; }

        public int? Escaladevista { get; set; }

        [Column("Valordeescala1:")]
        public int? Valordeescala1_ { get; set; }

        [StringLength(255)]
        public string Títuloenplano { get; set; }

        [StringLength(255)]
        public string Nombredevista { get; set; }

        public int? Fase { get; set; }

        [Column("COSAPI - Clasificación de Vistas")]
        [StringLength(255)]
        public string COSAPI___Clasificación_de_Vistas { get; set; }

        [Column("Vista - Usuario")]
        [StringLength(255)]
        public string Vista___Usuario { get; set; }

        public virtual Phases Phases { get; set; }
    }
}
