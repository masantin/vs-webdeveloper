namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Sheets
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [Column("Montaje:Notaclave")]
        [StringLength(255)]
        public string Montaje_Notaclave { get; set; }

        [Column("Montaje:Descripcióndemontaje")]
        [StringLength(255)]
        public string Montaje_Descripcióndemontaje { get; set; }

        [Column("Montaje:Costo")]
        public double? Montaje_Costo { get; set; }

        [Column("Montaje:Marcadetipo")]
        [StringLength(255)]
        public string Montaje_Marcadetipo { get; set; }

        [Column("Montaje:Códigodemontaje")]
        [StringLength(255)]
        public string Montaje_Códigodemontaje { get; set; }

        [Column("Montaje:Descripción")]
        [StringLength(255)]
        public string Montaje_Descripción { get; set; }

        [Column("Montaje:URL")]
        [StringLength(255)]
        public string Montaje_URL { get; set; }

        [Column("Montaje:Comentariosdetipo")]
        [StringLength(255)]
        public string Montaje_Comentariosdetipo { get; set; }

        [Column("Montaje:Fabricante")]
        [StringLength(255)]
        public string Montaje_Fabricante { get; set; }

        [Column("Montaje:Modelo")]
        [StringLength(255)]
        public string Montaje_Modelo { get; set; }

        [Column("Montaje:Nombre")]
        [StringLength(255)]
        public string Montaje_Nombre { get; set; }

        public int? Rejillaguía { get; set; }

        public int? Revisiónactualemitida { get; set; }

        [StringLength(255)]
        public string Revisiónactualemitidapor { get; set; }

        [StringLength(255)]
        public string Revisiónactualemitidapara { get; set; }

        [StringLength(255)]
        public string Fechaderevisiónactual { get; set; }

        [StringLength(255)]
        public string Descripciónderevisiónactual { get; set; }

        [StringLength(255)]
        public string Revisiónactual { get; set; }

        [StringLength(255)]
        public string Rutadearchivo { get; set; }

        [StringLength(255)]
        public string Aprobadopor { get; set; }

        [StringLength(255)]
        public string Diseñadopor { get; set; }

        public int? Apareceenlalistadeplanos { get; set; }

        [StringLength(255)]
        public string Comprobadopor { get; set; }

        [StringLength(255)]
        public string Dibujadopor { get; set; }

        [StringLength(255)]
        public string Escala { get; set; }

        [StringLength(255)]
        public string Númerodeplano { get; set; }

        [StringLength(255)]
        public string Nombredeplano { get; set; }

        [StringLength(255)]
        public string Fechadeemisióndelplano { get; set; }

        [StringLength(255)]
        public string Dependencia { get; set; }

        [StringLength(255)]
        public string Detalledereferencia { get; set; }

        [StringLength(255)]
        public string Planodereferencia { get; set; }

        public int? Delimitaciónizquierdaactiva { get; set; }

        [Column("COSAPI - Clasificación de Vistas")]
        [StringLength(255)]
        public string COSAPI___Clasificación_de_Vistas { get; set; }

        [Column("FECHA DE DISEÑO")]
        [StringLength(255)]
        public string FECHA_DE_DISEÑO { get; set; }

        [StringLength(255)]
        public string Revision { get; set; }

        [Column("APROBADO POR")]
        [StringLength(255)]
        public string APROBADO_POR { get; set; }

        [Column("DIBUJADO POR")]
        [StringLength(255)]
        public string DIBUJADO_POR { get; set; }

        [Column("FECHA DE DIBUJADO")]
        [StringLength(255)]
        public string FECHA_DE_DIBUJADO { get; set; }

        [Column("REVISADO POR")]
        [StringLength(255)]
        public string REVISADO_POR { get; set; }

        [Column("FECHA DE REVISADO")]
        [StringLength(255)]
        public string FECHA_DE_REVISADO { get; set; }

        [Column("FECHA DE APROBADO")]
        [StringLength(255)]
        public string FECHA_DE_APROBADO { get; set; }

        [Column("GERENTE DE PROYECTO")]
        [StringLength(255)]
        public string GERENTE_DE_PROYECTO { get; set; }

        [Column("FECHA DE APRO.GERENTE")]
        [StringLength(255)]
        public string FECHA_DE_APRO_GERENTE { get; set; }

        [Column("DISEÑADO POR")]
        [StringLength(255)]
        public string DISEÑADO_POR { get; set; }
    }
}
