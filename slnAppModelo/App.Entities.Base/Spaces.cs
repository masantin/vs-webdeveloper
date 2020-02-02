namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Spaces
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Spaces()
        {
            SpaceAssociations = new HashSet<SpaceAssociations>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        public int? Opcióndediseño { get; set; }

        public double? Proporcióndecavidaddehabitación { get; set; }

        public double? Iluminaciónmediaestimada { get; set; }

        public double? Reflectanciadesuelo { get; set; }

        public double? Reflectanciademuro { get; set; }

        public double? Reflectanciadetecho { get; set; }

        public double? Planodetrabajodecálculodeiluminación { get; set; }

        public int? Plénum { get; set; }

        public int? Ocupable { get; set; }

        [StringLength(255)]
        public string Númerodehabitación { get; set; }

        [StringLength(255)]
        public string Nombredehabitación { get; set; }

        public double? Suministrodeflujodeairecalculadoporárea { get; set; }

        public double? Cargaderefrigeracióncalculadaporárea { get; set; }

        public double? Cargadecalefaccióncalculadaporárea { get; set; }

        public double? Cargadeiluminaciónrealporárea { get; set; }

        public double? Cargadepotenciarealporárea { get; set; }

        public int? Valoresdecargadecalor { get; set; }

        public double? Cargaderefrigeracióndediseño { get; set; }

        public double? Cargaderefrigeracióncalculada { get; set; }

        public double? Cargadecalefaccióndediseño { get; set; }

        public double? Cargadecalefaccióncalculada { get; set; }

        public int? Tipodeconstrucción { get; set; }

        public double? Incrementodecalorsensibleporpersona { get; set; }

        public double? Cargadeiluminaciónespecificada { get; set; }

        public double? Cargadepotenciaespecificada { get; set; }

        public double? Cargadeiluminaciónreal { get; set; }

        public double? Cargadepotenciareal { get; set; }

        public double? Otrascargasdediseñoporárea { get; set; }

        public double? Cargadeclimatizacióndediseñoporárea { get; set; }

        public double? Cargadeiluminaciónespecificadaporárea { get; set; }

        public double? Cargadepotenciaespecificadaporárea { get; set; }

        public double? Salidadeflujodeaireviciadoreal { get; set; }

        public double? Retornodeflujodeairereal { get; set; }

        public double? Suministrodeflujodeairereal { get; set; }

        public double? Incrementodecalorlatenteporpersona { get; set; }

        public double? Incrementodecalortotalporpersona { get; set; }

        public double? Suministrodeflujodeairecalculado { get; set; }

        public double? Flujodeaireviciadoespecificado { get; set; }

        public double? Retornodeflujodeaireespecificado { get; set; }

        public double? Suministrodeflujodeaireespecificado { get; set; }

        public double? Áreaporpersona { get; set; }

        public double? Númerodepersonas { get; set; }

        public int? Tipodeespacio { get; set; }

        public int? Tipodeacondicionamiento { get; set; }

        public int? IDdefase { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        public double? Volumen { get; set; }

        public double? Perímetro { get; set; }

        public int? Nivel { get; set; }

        public double? Área { get; set; }

        [StringLength(255)]
        public string Número { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        public double? Alturasinlímites { get; set; }

        public virtual ConditionTypeEnums ConditionTypeEnums { get; set; }

        public virtual DesignOptions DesignOptions { get; set; }

        public virtual Levels Levels { get; set; }

        public virtual Phases Phases { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SpaceAssociations> SpaceAssociations { get; set; }

        public virtual SpaceTypeEnums SpaceTypeEnums { get; set; }
    }
}
