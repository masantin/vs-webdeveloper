namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class CurtainPanels
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Área { get; set; }

        public int? IDdeanfitrión { get; set; }

        public double? Anchura { get; set; }

        public double? Altura { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual CurtainWallPanelOnRoof CurtainWallPanelOnRoof { get; set; }

        public virtual CurtainWallPanelOnWall CurtainWallPanelOnWall { get; set; }
    }
}
