namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class HVACZones
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Áreacalculadaporcargaderefrigeración { get; set; }

        public double? Áreacalculadaporcargadecalefacción { get; set; }

        public int? UsarRenovacionesdeaireporhora { get; set; }

        public int? Usaraireexteriorporárea { get; set; }

        public int? Usaraireexteriorporpersona { get; set; }

        public int? Posicióndeajustededeshumidificación { get; set; }

        public int? Usarposicióndeajustedehumidificación { get; set; }

        public double? Áreabruta { get; set; }

        public double? Volumenbruto { get; set; }

        public int? IDdefase { get; set; }

        public double? Suministrodeflujodeairecalculadoporárea { get; set; }

        public double? Cargaderefrigeracióncalculadaporárea { get; set; }

        public double? Cargadecalefaccióncalculadaporárea { get; set; }

        public int? Nivel { get; set; }

        [Column("Tasadeaireexterior/Renovacionesdeaireporhora")]
        public double? Tasadeaireexterior_Renovacionesdeaireporhora { get; set; }

        public double? Aireexteriorporárea { get; set; }

        public double? Aireexteriorporpersona { get; set; }

        public double? Posicióndeajustedehumidificación { get; set; }

        public double? Temperaturadeairederefrigeración { get; set; }

        public double? Temperaturadeairedecalefacción { get; set; }

        public double? Posicióndeajustederefrigeración { get; set; }

        public double? Posicióndeajustedecalefacción { get; set; }

        public double? Suministrodeflujodeairecalculado { get; set; }

        public double? Cargaderefrigeracióncalculada { get; set; }

        public double? Cargadecalefaccióncalculada { get; set; }

        public int? Tipodeservicio { get; set; }

        public double? Volumenocupado { get; set; }

        public double? Perímetro { get; set; }

        public double? Áreaocupada { get; set; }

        public double? Derivacióndeserpentín { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual ServiceTypeEnums ServiceTypeEnums { get; set; }
    }
}
