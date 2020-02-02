namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class StructuralFabricReinforcementTypes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StructuralFabricReinforcementTypes()
        {
            StructuralFabricReinforcement = new HashSet<StructuralFabricReinforcement>();
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

        public double? Masadeláminaporunidaddesuperficie { get; set; }

        public double? Áreaderefuerzosecundaria { get; set; }

        public double? Áreaderefuerzoprincipal { get; set; }

        public double? Masadelámina { get; set; }

        public double? Espaciadosecundario { get; set; }

        public double? Númerodealambresendirecciónsecundaria { get; set; }

        public double? Voladizofinalsecundario { get; set; }

        public double? Voladizoinicialsecundario { get; set; }

        public double? Anchura { get; set; }

        public double? Espaciadoprincipal { get; set; }

        public double? Númerodealambresendirecciónprincipal { get; set; }

        public double? Voladizofinalprincipal { get; set; }

        public double? Longitud { get; set; }

        public double? Longitudglobal { get; set; }

        public double? Tipodealambrededirecciónsecundaria { get; set; }

        public double? Tipodealambrededirecciónprincipal { get; set; }

        [StringLength(255)]
        public string Materialesfísicos { get; set; }

        public int? Material { get; set; }

        public virtual AssemblyCodes AssemblyCodes { get; set; }

        public virtual Materials Materials { get; set; }

        public virtual OmniClassNumbers OmniClassNumbers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralFabricReinforcement> StructuralFabricReinforcement { get; set; }
    }
}
