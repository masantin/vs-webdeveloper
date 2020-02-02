namespace App.Entities.Base
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
     

    public partial class OmniClassNumbers
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OmniClassNumbers()
        {
            AirTerminalTypes = new HashSet<AirTerminalTypes>();
            AssemblyTypes = new HashSet<AssemblyTypes>();
            CableTrayFittingType = new HashSet<CableTrayFittingType>();
            CableTrayTypes = new HashSet<CableTrayTypes>();
            CaseworkTypes = new HashSet<CaseworkTypes>();
            CeilingTypes = new HashSet<CeilingTypes>();
            ColumnTypes = new HashSet<ColumnTypes>();
            CommunicationDeviceTypes = new HashSet<CommunicationDeviceTypes>();
            ConduitFittingType = new HashSet<ConduitFittingType>();
            ConduitTypes = new HashSet<ConduitTypes>();
            CoverTypes = new HashSet<CoverTypes>();
            CurtainPanelTypes = new HashSet<CurtainPanelTypes>();
            CurtainSystemTypes = new HashSet<CurtainSystemTypes>();
            CurtainWallMullionTypes = new HashSet<CurtainWallMullionTypes>();
            DataDeviceTypes = new HashSet<DataDeviceTypes>();
            DemandFactorTypes = new HashSet<DemandFactorTypes>();
            DistributionSystemTypes = new HashSet<DistributionSystemTypes>();
            DivisionProfiles = new HashSet<DivisionProfiles>();
            DoorTypes = new HashSet<DoorTypes>();
            DuctAccessoryTypes = new HashSet<DuctAccessoryTypes>();
            DuctFittingTypes = new HashSet<DuctFittingTypes>();
            DuctInsulationTypes = new HashSet<DuctInsulationTypes>();
            DuctLiningTypes = new HashSet<DuctLiningTypes>();
            DuctTypes = new HashSet<DuctTypes>();
            ElectricalEquipmentTypes = new HashSet<ElectricalEquipmentTypes>();
            ElectricalFixtureTypes = new HashSet<ElectricalFixtureTypes>();
            FasciaTypes = new HashSet<FasciaTypes>();
            FireAlarmDeviceTypes = new HashSet<FireAlarmDeviceTypes>();
            FlexDuctTypes = new HashSet<FlexDuctTypes>();
            FlexPipeTypes = new HashSet<FlexPipeTypes>();
            FloorTypes = new HashSet<FloorTypes>();
            FluidTypes = new HashSet<FluidTypes>();
            FurnitureSystemTypes = new HashSet<FurnitureSystemTypes>();
            FurnitureTypes = new HashSet<FurnitureTypes>();
            GenericModelTypes = new HashSet<GenericModelTypes>();
            GutterTypes = new HashSet<GutterTypes>();
            LightingDeviceTypes = new HashSet<LightingDeviceTypes>();
            LightingFixtureTypes = new HashSet<LightingFixtureTypes>();
            MassTypes = new HashSet<MassTypes>();
            MechanicalEquipmentTypes = new HashSet<MechanicalEquipmentTypes>();
            NurseCallDeviceTypes = new HashSet<NurseCallDeviceTypes>();
            ParkingTypes = new HashSet<ParkingTypes>();
            PipeAccessoryTypes = new HashSet<PipeAccessoryTypes>();
            PipeConnectionTypes = new HashSet<PipeConnectionTypes>();
            PipeFittingTypes = new HashSet<PipeFittingTypes>();
            PipeInsulationTypes = new HashSet<PipeInsulationTypes>();
            PipeMaterialTypes = new HashSet<PipeMaterialTypes>();
            PipeScheduleTypes = new HashSet<PipeScheduleTypes>();
            PipeTypes = new HashSet<PipeTypes>();
            PlantingTypes = new HashSet<PlantingTypes>();
            PlumbingFixtureTypes = new HashSet<PlumbingFixtureTypes>();
            Profiles = new HashSet<Profiles>();
            PropertyLineTypes = new HashSet<PropertyLineTypes>();
            RailingTypes = new HashSet<RailingTypes>();
            RampTypes = new HashSet<RampTypes>();
            RoofTypes = new HashSet<RoofTypes>();
            SecurityDeviceTypes = new HashSet<SecurityDeviceTypes>();
            SiteTypes = new HashSet<SiteTypes>();
            SlabEdgeTypes = new HashSet<SlabEdgeTypes>();
            SpecialtyEquipmentTypes = new HashSet<SpecialtyEquipmentTypes>();
            SprinklerTypes = new HashSet<SprinklerTypes>();
            StairTypes = new HashSet<StairTypes>();
            StructuralColumnTypes = new HashSet<StructuralColumnTypes>();
            StructuralFabricReinforcementTypes = new HashSet<StructuralFabricReinforcementTypes>();
            StructuralFoundationTypes = new HashSet<StructuralFoundationTypes>();
            StructuralFramingTypes = new HashSet<StructuralFramingTypes>();
            StructuralRebarBarTypes = new HashSet<StructuralRebarBarTypes>();
            StructuralRebarHookTypes = new HashSet<StructuralRebarHookTypes>();
            StructuralRebarShapes = new HashSet<StructuralRebarShapes>();
            StructuralStiffenerTypes = new HashSet<StructuralStiffenerTypes>();
            StructuralTrussTypes = new HashSet<StructuralTrussTypes>();
            TelephoneDeviceTypes = new HashSet<TelephoneDeviceTypes>();
            TopographyTypes = new HashSet<TopographyTypes>();
            VoltageTypes = new HashSet<VoltageTypes>();
            WallSweepTypes = new HashSet<WallSweepTypes>();
            WallTypes = new HashSet<WallTypes>();
            WindowTypes = new HashSet<WindowTypes>();
            WireInsulationTypes = new HashSet<WireInsulationTypes>();
            WireMaterialTypes = new HashSet<WireMaterialTypes>();
            WireTemperatureRatingTypes = new HashSet<WireTemperatureRatingTypes>();
            WireTypes = new HashSet<WireTypes>();
        }

        [Key]
        [StringLength(255)]
        public string NúmeroOmniClass { get; set; }

        [StringLength(255)]
        public string TítuloOmniClass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AirTerminalTypes> AirTerminalTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AssemblyTypes> AssemblyTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CableTrayFittingType> CableTrayFittingType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CableTrayTypes> CableTrayTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CaseworkTypes> CaseworkTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CeilingTypes> CeilingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ColumnTypes> ColumnTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CommunicationDeviceTypes> CommunicationDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ConduitFittingType> ConduitFittingType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ConduitTypes> ConduitTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CoverTypes> CoverTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CurtainPanelTypes> CurtainPanelTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CurtainSystemTypes> CurtainSystemTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CurtainWallMullionTypes> CurtainWallMullionTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DataDeviceTypes> DataDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DemandFactorTypes> DemandFactorTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DistributionSystemTypes> DistributionSystemTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DivisionProfiles> DivisionProfiles { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DoorTypes> DoorTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuctAccessoryTypes> DuctAccessoryTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuctFittingTypes> DuctFittingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuctInsulationTypes> DuctInsulationTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuctLiningTypes> DuctLiningTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DuctTypes> DuctTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElectricalEquipmentTypes> ElectricalEquipmentTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElectricalFixtureTypes> ElectricalFixtureTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FasciaTypes> FasciaTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FireAlarmDeviceTypes> FireAlarmDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FlexDuctTypes> FlexDuctTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FlexPipeTypes> FlexPipeTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FloorTypes> FloorTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FluidTypes> FluidTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FurnitureSystemTypes> FurnitureSystemTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FurnitureTypes> FurnitureTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GenericModelTypes> GenericModelTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GutterTypes> GutterTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LightingDeviceTypes> LightingDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LightingFixtureTypes> LightingFixtureTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MassTypes> MassTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MechanicalEquipmentTypes> MechanicalEquipmentTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NurseCallDeviceTypes> NurseCallDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ParkingTypes> ParkingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeAccessoryTypes> PipeAccessoryTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeConnectionTypes> PipeConnectionTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeFittingTypes> PipeFittingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeInsulationTypes> PipeInsulationTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeMaterialTypes> PipeMaterialTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeScheduleTypes> PipeScheduleTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PipeTypes> PipeTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlantingTypes> PlantingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlumbingFixtureTypes> PlumbingFixtureTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Profiles> Profiles { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PropertyLineTypes> PropertyLineTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RailingTypes> RailingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RampTypes> RampTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RoofTypes> RoofTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SecurityDeviceTypes> SecurityDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SiteTypes> SiteTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SlabEdgeTypes> SlabEdgeTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SpecialtyEquipmentTypes> SpecialtyEquipmentTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SprinklerTypes> SprinklerTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StairTypes> StairTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralColumnTypes> StructuralColumnTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralFabricReinforcementTypes> StructuralFabricReinforcementTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralFoundationTypes> StructuralFoundationTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralFramingTypes> StructuralFramingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralRebarBarTypes> StructuralRebarBarTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralRebarHookTypes> StructuralRebarHookTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralRebarShapes> StructuralRebarShapes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralStiffenerTypes> StructuralStiffenerTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StructuralTrussTypes> StructuralTrussTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TelephoneDeviceTypes> TelephoneDeviceTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TopographyTypes> TopographyTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VoltageTypes> VoltageTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WallSweepTypes> WallSweepTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WallTypes> WallTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WindowTypes> WindowTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WireInsulationTypes> WireInsulationTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WireMaterialTypes> WireMaterialTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WireTemperatureRatingTypes> WireTemperatureRatingTypes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WireTypes> WireTypes { get; set; }
    }
}
