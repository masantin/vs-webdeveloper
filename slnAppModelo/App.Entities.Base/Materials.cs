namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class Materials
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Materials()
        {
            Categories = new HashSet<Categories>();
            FasciaTypes = new HashSet<FasciaTypes>();
            GutterTypes = new HashSet<GutterTypes>();
            MaterialQuantities = new HashSet<MaterialQuantities>();
            PipeSegments = new HashSet<PipeSegments>();
            SlabEdgeTypes = new HashSet<SlabEdgeTypes>();
            StructuralFabricReinforcementTypes = new HashSet<StructuralFabricReinforcementTypes>();
            WallSweepTypes = new HashSet<WallSweepTypes>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Id { get; set; }

        [StringLength(255)]
        public string Notaclave { get; set; }

        [StringLength(255)]
        public string Nombre { get; set; }

        [StringLength(255)]
        public string Modelo { get; set; }

        [StringLength(255)]
        public string Fabricante { get; set; }

        [StringLength(255)]
        public string Comentarios { get; set; }

        [StringLength(255)]
        public string URL { get; set; }

        [StringLength(255)]
        public string Descripción { get; set; }

        public double? Costo { get; set; }

        [StringLength(255)]
        public string Marca { get; set; }

        [StringLength(255)]
        public string Cimentación { get; set; }

        [StringLength(255)]
        public string Especie { get; set; }

        public double? Coeficientededilatacióntérmica { get; set; }

        public double? Flexión { get; set; }

        public double? Módulodeelasticidadtransversal { get; set; }

        public double? CoeficientedePoisson { get; set; }

        public double? Tracciónperpendicularalaveta { get; set; }

        public double? Cortanteparaleloalaveta { get; set; }

        public double? Compresiónperpendicularalaveta { get; set; }

        public double? Compresiónparalelaalaveta { get; set; }

        public double? MódulodeYoung { get; set; }

        public int? Tipodematerial { get; set; }

        public int? Ligero { get; set; }

        public int? Comportamiento { get; set; }

        public double? Fuerzadecálculoderesistencia { get; set; }

        public double? Factordereducciónparacorte { get; set; }

        public double? Resistenciaatracciónmínima { get; set; }

        public double? Límitedeelasticidadmínima { get; set; }

        public double? Modificacióndeesfuerzocortante { get; set; }

        public double? Límitedeelasticidadderefuerzocortante { get; set; }

        public double? Refuerzoflector { get; set; }

        public double? Resistenciaacompresión { get; set; }

        public double? Coeficientedeamortiguación { get; set; }

        public double? CoeficienteXdedilatacióntérmica { get; set; }

        public double? CoeficienteYdedilatacióntérmica { get; set; }

        public double? CoeficienteZdedilatacióntérmica { get; set; }

        public double? Pesounitario { get; set; }

        public double? MódulodeelasticidadtransversalX { get; set; }

        public double? MódulodeelasticidadtransversalY { get; set; }

        public double? MódulodeelasticidadtransversalZ { get; set; }

        public double? CoeficienteXdePoisson { get; set; }

        public double? CoeficienteYdePoisson { get; set; }

        public double? CoeficienteZdePoisson { get; set; }

        public double? MódulodeYoungX { get; set; }

        public double? MódulodeYoungY { get; set; }

        public double? MódulodeYoungZ { get; set; }

        public int? Brillo { get; set; }

        public int? Suavidad { get; set; }

        public int? Transparencia { get; set; }

        public int? Color { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Categories> Categories { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FasciaTypes> FasciaTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GutterTypes> GutterTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MaterialQuantities> MaterialQuantities { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeSegments> PipeSegments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SlabEdgeTypes> SlabEdgeTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralFabricReinforcementTypes> StructuralFabricReinforcementTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WallSweepTypes> WallSweepTypes { get; set; }
    }
}
