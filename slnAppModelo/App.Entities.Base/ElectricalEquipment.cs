namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    [Table("ElectricalEquipment")]
    public partial class ElectricalEquipment
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? IDdetipo { get; set; }

        public int? Fasedecreación { get; set; }

        public int? Fasedederribo { get; set; }

        public int? Opcióndediseño { get; set; }

        [StringLength(255)]
        public string Modificaciones { get; set; }

        [StringLength(255)]
        public string Recinto { get; set; }

        public double? Redeléctrica { get; set; }

        [StringLength(255)]
        public string Instalación { get; set; }

        [StringLength(255)]
        public string Corrientedecortocircuito { get; set; }

        [Column("Máx.deinterruptoresunipolares")]
        public int? Máx_deinterruptoresunipolares { get; set; }

        [StringLength(255)]
        public string Nombredepanel { get; set; }

        public double? Demandatotalestimada { get; set; }

        public double? Totalconectado { get; set; }

        public double? FaseAdecargaaparente { get; set; }

        public double? FaseBdecargaaparente { get; set; }

        public double? FaseCdecargaaparente { get; set; }

        [StringLength(255)]
        public string Datoseléctricos { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public int? IDdeanfitrión { get; set; }

        public int? Nivel { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        public double? FaseAdecorriente { get; set; }

        public double? FaseBdecorriente { get; set; }

        public double? FaseCdecorriente { get; set; }

        [StringLength(255)]
        public string Alimentación { get; set; }

        [StringLength(255)]
        public string Ubicación { get; set; }

        public int? Númerodecables { get; set; }

        public int? Númerodefases { get; set; }

        [StringLength(255)]
        public string Suministrode { get; set; }

        public double? Totaldecorrienteconectada { get; set; }

        public double? Totaldefactordedemanda { get; set; }

        public double? Totaldedemandadecorrienteestimada { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Phases Phases { get; set; }

        public virtual Phases Phases1 { get; set; }

        public virtual ElectricalEquipmentTypes ElectricalEquipmentTypes { get; set; }

        public virtual Levels Levels { get; set; }
    }
}
