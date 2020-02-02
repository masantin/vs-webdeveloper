namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Wires
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Descripcióndecircuito { get; set; }

        [StringLength(255)]
        public string Nombredecargadecircuito { get; set; }

        public int? Númerodeconductores { get; set; }

        public int? Marcas { get; set; }

        [StringLength(255)]
        public string Panel { get; set; }

        [StringLength(255)]
        public string Circuitos { get; set; }

        public int? Tipo { get; set; }

        public int? Conductorescargados { get; set; }

        public int? Conductoresneutros { get; set; }

        public int? Conductoresdetierra { get; set; }

        [StringLength(255)]
        public string Tamañodecable { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual WireTypes WireTypes { get; set; }

        public virtual WiringTypeEnums WiringTypeEnums { get; set; }
    }
}
