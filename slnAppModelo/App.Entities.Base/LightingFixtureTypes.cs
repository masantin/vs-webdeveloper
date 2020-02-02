namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class LightingFixtureTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LightingFixtureTypes()
        {
            LightingFixtures = new HashSet<LightingFixtures>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Notaclave { get; set; }

        [StringLength(255)]
        public string Modelo { get; set; }

        [StringLength(255)]
        public string Fabricante { get; set; }

        [StringLength(255)]
        public string Comentariosdetipo { get; set; }

        [StringLength(255)]
        public string URL { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }

        [StringLength(255)]
        public string NúmeroOmniClass { get; set; }

        [StringLength(255)]
        public string Códigodemontaje { get; set; }

        [StringLength(255)]
        public string Nombredefamilia { get; set; }

        [StringLength(255)]
        public string Nombredetipo { get; set; }

        [StringLength(255)]
        public string Marcadetipo { get; set; }

        public double? Costo { get; set; }

        public double? Longituddesímbolodeorigendeluz { get; set; }

        public double? Tamañodesímbolodeorigendeluz { get; set; }

        public double? Diámetrodecírculodeemisión { get; set; }

        public double? Longitudderectángulodeemisión { get; set; }

        public double? Anchurarectángulodeemisión { get; set; }

        public double? Longituddelíneadeemisión { get; set; }

        public int? Formavisibleenrenderización { get; set; }

        public int? Cambiodetemperaturadecolordeluzatenuada { get; set; }

        public double? Depreciacióndelámparaporsuciedad { get; set; }

        public double? Depreciacióndelumendelámpara { get; set; }

        public double? Pérdidadedepreciacióndesuperficie { get; set; }

        public double? Pérdidadeinclinacióndelámpara { get; set; }

        public double? Pérdidadevoltaje { get; set; }

        public double? Pérdidadetemperatura { get; set; }

        public double? Temperaturadecolorinicial { get; set; }

        public double? Iluminancia { get; set; }

        public double? Intensidadluminosa { get; set; }

        public double? Eficacia { get; set; }

        public double? Vataje { get; set; }

        [StringLength(255)]
        public string Archivoderedfotométrica { get; set; }

        public double? Cargaaparente { get; set; }

        public double? Pérdidadebalasto { get; set; }

        public double? Factordepérdidadeluminosidadtotal { get; set; }

        public double? Ángulodecampodefoco { get; set; }

        public double? Ángulodeenfoque { get; set; }

        public double? Ángulodeinclinación { get; set; }

        public double? Flujoluminoso { get; set; }

        [StringLength(255)]
        public string Lámpara { get; set; }

        [StringLength(255)]
        public string Comentariosdevataje { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LightingFixtures> LightingFixtures { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }
    }
}
