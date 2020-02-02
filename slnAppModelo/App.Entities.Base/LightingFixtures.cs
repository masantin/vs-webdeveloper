namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class LightingFixtures
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string IDdeinterruptor { get; set; }

        [StringLength(255)]
        public string Panel { get; set; }

        [StringLength(255)]
        public string Númerodecircuito { get; set; }

        [StringLength(255)]
        public string Datoseléctricos { get; set; }

        public double? Coeficientedeutilización { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? IDdeanfitrión { get; set; }

        public int? Nivel { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual LightingFixtureOnCeiling LightingFixtureOnCeiling { get; set; }

        public virtual LightingFixtureOnWall LightingFixtureOnWall { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual LightingFixtureTypes LightingFixtureTypes { get; set; }
    }
}
