namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class PlumbingFixtures
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Clasificacióndesistema { get; set; }

        [StringLength(255)]
        public string Nombredesistema { get; set; }

        [StringLength(255)]
        public string Sifón { get; set; }

        [StringLength(255)]
        public string Desagüe { get; set; }

        [StringLength(255)]
        public string Tuberíadesuministro { get; set; }

        [StringLength(255)]
        public string Unióndesuministro { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? Nivel { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual PlumbingFixtureOnWall PlumbingFixtureOnWall { get; set; }

        public virtual PlumbingFixtureTypes PlumbingFixtureTypes { get; set; }
    }
}
