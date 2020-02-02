namespace App.Data.DataAccess
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using App.Entities.Base;

    public partial class DBModel : DbContext
    {
        public DBModel()
            : base("name=DBModel")
        {
        }

        public virtual DbSet<AirTerminals> AirTerminals { get; set; }
        public virtual DbSet<AirTerminalTypes> AirTerminalTypes { get; set; }
        public virtual DbSet<AnalyzesAsTypeEnums> AnalyzesAsTypeEnums { get; set; }
        public virtual DbSet<AreaLoadOnSlab> AreaLoadOnSlab { get; set; }
        public virtual DbSet<AreaLoads> AreaLoads { get; set; }
        public virtual DbSet<Areas> Areas { get; set; }
        public virtual DbSet<AreaSchemes> AreaSchemes { get; set; }
        public virtual DbSet<Assemblies> Assemblies { get; set; }
        public virtual DbSet<AssemblyCodes> AssemblyCodes { get; set; }
        public virtual DbSet<AssemblyTypes> AssemblyTypes { get; set; }
        public virtual DbSet<BuildingTypeSettings> BuildingTypeSettings { get; set; }
        public virtual DbSet<CableTrayFittings> CableTrayFittings { get; set; }
        public virtual DbSet<CableTrayFittingType> CableTrayFittingType { get; set; }
        public virtual DbSet<CableTrays> CableTrays { get; set; }
        public virtual DbSet<CableTrayTypes> CableTrayTypes { get; set; }
        public virtual DbSet<Casework> Casework { get; set; }
        public virtual DbSet<CaseworkOnWall> CaseworkOnWall { get; set; }
        public virtual DbSet<CaseworkTypes> CaseworkTypes { get; set; }
        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Ceilings> Ceilings { get; set; }
        public virtual DbSet<CeilingTypes> CeilingTypes { get; set; }
        public virtual DbSet<Columns1> Columns1 { get; set; }
        public virtual DbSet<ColumnTypes> ColumnTypes { get; set; }
        public virtual DbSet<CommunicationDevices> CommunicationDevices { get; set; }
        public virtual DbSet<CommunicationDeviceTypes> CommunicationDeviceTypes { get; set; }
        public virtual DbSet<ConditionTypeEnums> ConditionTypeEnums { get; set; }
        public virtual DbSet<ConduitFittings> ConduitFittings { get; set; }
        public virtual DbSet<ConduitFittingType> ConduitFittingType { get; set; }
        public virtual DbSet<Conduits> Conduits { get; set; }
        public virtual DbSet<ConduitTypes> ConduitTypes { get; set; }
        public virtual DbSet<Constructions> Constructions { get; set; }
        public virtual DbSet<ConstructionTypes> ConstructionTypes { get; set; }
        public virtual DbSet<CoverTypes> CoverTypes { get; set; }
        public virtual DbSet<CurtainPanels> CurtainPanels { get; set; }
        public virtual DbSet<CurtainPanelTypes> CurtainPanelTypes { get; set; }
        public virtual DbSet<CurtainSystems> CurtainSystems { get; set; }
        public virtual DbSet<CurtainSystemTypes> CurtainSystemTypes { get; set; }
        public virtual DbSet<CurtainWallMullions> CurtainWallMullions { get; set; }
        public virtual DbSet<CurtainWallMullionTypes> CurtainWallMullionTypes { get; set; }
        public virtual DbSet<CurtainWallPanelOnRoof> CurtainWallPanelOnRoof { get; set; }
        public virtual DbSet<CurtainWallPanelOnWall> CurtainWallPanelOnWall { get; set; }
        public virtual DbSet<DataDevices> DataDevices { get; set; }
        public virtual DbSet<DataDeviceTypes> DataDeviceTypes { get; set; }
        public virtual DbSet<DemandFactors> DemandFactors { get; set; }
        public virtual DbSet<DemandFactorTypes> DemandFactorTypes { get; set; }
        public virtual DbSet<DesignOptions> DesignOptions { get; set; }
        public virtual DbSet<DesignOptionSets> DesignOptionSets { get; set; }
        public virtual DbSet<DistributionSystems> DistributionSystems { get; set; }
        public virtual DbSet<DistributionSystemTypes> DistributionSystemTypes { get; set; }
        public virtual DbSet<DivisionProfiles> DivisionProfiles { get; set; }
        public virtual DbSet<Doors> Doors { get; set; }
        public virtual DbSet<DoorTypes> DoorTypes { get; set; }
        public virtual DbSet<DoorWall> DoorWall { get; set; }
        public virtual DbSet<DuctAccessories> DuctAccessories { get; set; }
        public virtual DbSet<DuctAccessoryTypes> DuctAccessoryTypes { get; set; }
        public virtual DbSet<DuctFittings> DuctFittings { get; set; }
        public virtual DbSet<DuctFittingTypes> DuctFittingTypes { get; set; }
        public virtual DbSet<DuctInsulations> DuctInsulations { get; set; }
        public virtual DbSet<DuctInsulationTypes> DuctInsulationTypes { get; set; }
        public virtual DbSet<DuctLinings> DuctLinings { get; set; }
        public virtual DbSet<DuctLiningTypes> DuctLiningTypes { get; set; }
        public virtual DbSet<DuctPlaceholders> DuctPlaceholders { get; set; }
        public virtual DbSet<Ducts> Ducts { get; set; }
        public virtual DbSet<DuctSystems> DuctSystems { get; set; }
        public virtual DbSet<DuctSystemTypeEnums> DuctSystemTypeEnums { get; set; }
        public virtual DbSet<DuctSystemTypes> DuctSystemTypes { get; set; }
        public virtual DbSet<DuctTypes> DuctTypes { get; set; }
        public virtual DbSet<EaveCutterTypeEnums> EaveCutterTypeEnums { get; set; }
        public virtual DbSet<ElectricalCircuits> ElectricalCircuits { get; set; }
        public virtual DbSet<ElectricalDemandFactorDefinitions> ElectricalDemandFactorDefinitions { get; set; }
        public virtual DbSet<ElectricalEquipment> ElectricalEquipment { get; set; }
        public virtual DbSet<ElectricalEquipmentTypes> ElectricalEquipmentTypes { get; set; }
        public virtual DbSet<ElectricalFixtures> ElectricalFixtures { get; set; }
        public virtual DbSet<ElectricalFixtureTypes> ElectricalFixtureTypes { get; set; }
        public virtual DbSet<ElectricalLoadClassificationParameterElement> ElectricalLoadClassificationParameterElement { get; set; }
        public virtual DbSet<ElectricalLoadClassifications> ElectricalLoadClassifications { get; set; }
        public virtual DbSet<ElectricalPhaseConfigurationEnums> ElectricalPhaseConfigurationEnums { get; set; }
        public virtual DbSet<ElectricalPhaseEnums> ElectricalPhaseEnums { get; set; }
        public virtual DbSet<ElectricalSystemEnums> ElectricalSystemEnums { get; set; }
        public virtual DbSet<ElementLevel> ElementLevel { get; set; }
        public virtual DbSet<ElementPhase> ElementPhase { get; set; }
        public virtual DbSet<FabricLocationEnums> FabricLocationEnums { get; set; }
        public virtual DbSet<Fascias> Fascias { get; set; }
        public virtual DbSet<FasciaTypes> FasciaTypes { get; set; }
        public virtual DbSet<FireAlarmDevices> FireAlarmDevices { get; set; }
        public virtual DbSet<FireAlarmDeviceTypes> FireAlarmDeviceTypes { get; set; }
        public virtual DbSet<FlexDucts> FlexDucts { get; set; }
        public virtual DbSet<FlexDuctTypes> FlexDuctTypes { get; set; }
        public virtual DbSet<FlexPipes> FlexPipes { get; set; }
        public virtual DbSet<FlexPipeTypes> FlexPipeTypes { get; set; }
        public virtual DbSet<Floors> Floors { get; set; }
        public virtual DbSet<FloorTypes> FloorTypes { get; set; }
        public virtual DbSet<Fluids> Fluids { get; set; }
        public virtual DbSet<FluidTypes> FluidTypes { get; set; }
        public virtual DbSet<Furniture> Furniture { get; set; }
        public virtual DbSet<FurnitureSystems> FurnitureSystems { get; set; }
        public virtual DbSet<FurnitureSystemTypes> FurnitureSystemTypes { get; set; }
        public virtual DbSet<FurnitureTypes> FurnitureTypes { get; set; }
        public virtual DbSet<GenericModelOnRoof> GenericModelOnRoof { get; set; }
        public virtual DbSet<GenericModelOnWall> GenericModelOnWall { get; set; }
        public virtual DbSet<GenericModels> GenericModels { get; set; }
        public virtual DbSet<GenericModelTypes> GenericModelTypes { get; set; }
        public virtual DbSet<Grids> Grids { get; set; }
        public virtual DbSet<GridTypes> GridTypes { get; set; }
        public virtual DbSet<Gutters> Gutters { get; set; }
        public virtual DbSet<GutterTypes> GutterTypes { get; set; }
        public virtual DbSet<HVACLoadSchedules> HVACLoadSchedules { get; set; }
        public virtual DbSet<HVACZones> HVACZones { get; set; }
        public virtual DbSet<InstanceUsageEnums> InstanceUsageEnums { get; set; }
        public virtual DbSet<InternalAreaLoads> InternalAreaLoads { get; set; }
        public virtual DbSet<InternalLineLoads> InternalLineLoads { get; set; }
        public virtual DbSet<InternalPointLoads> InternalPointLoads { get; set; }
        public virtual DbSet<Levels> Levels { get; set; }
        public virtual DbSet<LevelTypes> LevelTypes { get; set; }
        public virtual DbSet<LightingDevices> LightingDevices { get; set; }
        public virtual DbSet<LightingDeviceTypes> LightingDeviceTypes { get; set; }
        public virtual DbSet<LightingFixtureOnCeiling> LightingFixtureOnCeiling { get; set; }
        public virtual DbSet<LightingFixtureOnWall> LightingFixtureOnWall { get; set; }
        public virtual DbSet<LightingFixtures> LightingFixtures { get; set; }
        public virtual DbSet<LightingFixtureTypes> LightingFixtureTypes { get; set; }
        public virtual DbSet<LineLoadOnBeam> LineLoadOnBeam { get; set; }
        public virtual DbSet<LineLoads> LineLoads { get; set; }
        public virtual DbSet<LoadClassificationTypeEnums> LoadClassificationTypeEnums { get; set; }
        public virtual DbSet<Mass> Mass { get; set; }
        public virtual DbSet<MassExteriorWall> MassExteriorWall { get; set; }
        public virtual DbSet<MassFloor> MassFloor { get; set; }
        public virtual DbSet<MassGlazing> MassGlazing { get; set; }
        public virtual DbSet<MassInteriorWall> MassInteriorWall { get; set; }
        public virtual DbSet<MassOpening> MassOpening { get; set; }
        public virtual DbSet<MassRoof> MassRoof { get; set; }
        public virtual DbSet<MassSkylight> MassSkylight { get; set; }
        public virtual DbSet<MassTypes> MassTypes { get; set; }
        public virtual DbSet<MaterialQuantities> MaterialQuantities { get; set; }
        public virtual DbSet<Materials> Materials { get; set; }
        public virtual DbSet<MechanicalEquipment> MechanicalEquipment { get; set; }
        public virtual DbSet<MechanicalEquipmentOnWall> MechanicalEquipmentOnWall { get; set; }
        public virtual DbSet<MechanicalEquipmentTypes> MechanicalEquipmentTypes { get; set; }
        public virtual DbSet<NeutralModeEnums> NeutralModeEnums { get; set; }
        public virtual DbSet<NurseCallDevices> NurseCallDevices { get; set; }
        public virtual DbSet<NurseCallDeviceTypes> NurseCallDeviceTypes { get; set; }
        public virtual DbSet<OmniClassNumbers> OmniClassNumbers { get; set; }
        public virtual DbSet<OpeningOnFloor> OpeningOnFloor { get; set; }
        public virtual DbSet<OpeningOnWall> OpeningOnWall { get; set; }
        public virtual DbSet<Openings> Openings { get; set; }
        public virtual DbSet<PanelScheduleTemplatesBranchPanel> PanelScheduleTemplatesBranchPanel { get; set; }
        public virtual DbSet<PanelScheduleTemplatesDataPanel> PanelScheduleTemplatesDataPanel { get; set; }
        public virtual DbSet<PanelScheduleTemplatesSwitchboard> PanelScheduleTemplatesSwitchboard { get; set; }
        public virtual DbSet<Parking> Parking { get; set; }
        public virtual DbSet<ParkingTypes> ParkingTypes { get; set; }
        public virtual DbSet<Phases> Phases { get; set; }
        public virtual DbSet<PipeAccessories> PipeAccessories { get; set; }
        public virtual DbSet<PipeAccessoryTypes> PipeAccessoryTypes { get; set; }
        public virtual DbSet<PipeConnections> PipeConnections { get; set; }
        public virtual DbSet<PipeConnectionTypes> PipeConnectionTypes { get; set; }
        public virtual DbSet<PipeFittings> PipeFittings { get; set; }
        public virtual DbSet<PipeFittingTypes> PipeFittingTypes { get; set; }
        public virtual DbSet<PipeFlowStateEnums> PipeFlowStateEnums { get; set; }
        public virtual DbSet<PipeInsulations> PipeInsulations { get; set; }
        public virtual DbSet<PipeInsulationTypes> PipeInsulationTypes { get; set; }
        public virtual DbSet<PipeMaterials> PipeMaterials { get; set; }
        public virtual DbSet<PipeMaterialTypes> PipeMaterialTypes { get; set; }
        public virtual DbSet<PipePlaceholders> PipePlaceholders { get; set; }
        public virtual DbSet<Pipes> Pipes { get; set; }
        public virtual DbSet<PipeSchedules> PipeSchedules { get; set; }
        public virtual DbSet<PipeScheduleTypes> PipeScheduleTypes { get; set; }
        public virtual DbSet<PipeSegments> PipeSegments { get; set; }
        public virtual DbSet<PipeSystemTypeEnums> PipeSystemTypeEnums { get; set; }
        public virtual DbSet<PipeTypes> PipeTypes { get; set; }
        public virtual DbSet<PipingSystems> PipingSystems { get; set; }
        public virtual DbSet<PipingSystemTypes> PipingSystemTypes { get; set; }
        public virtual DbSet<Planting> Planting { get; set; }
        public virtual DbSet<PlantingTypes> PlantingTypes { get; set; }
        public virtual DbSet<PlumbingFixtureOnWall> PlumbingFixtureOnWall { get; set; }
        public virtual DbSet<PlumbingFixtures> PlumbingFixtures { get; set; }
        public virtual DbSet<PlumbingFixtureTypes> PlumbingFixtureTypes { get; set; }
        public virtual DbSet<PointLoads> PointLoads { get; set; }
        public virtual DbSet<PowerFactorStateTypeEnums> PowerFactorStateTypeEnums { get; set; }
        public virtual DbSet<Profiles> Profiles { get; set; }
        public virtual DbSet<ProjectInformation> ProjectInformation { get; set; }
        public virtual DbSet<PropertyLines> PropertyLines { get; set; }
        public virtual DbSet<PropertyLineTypes> PropertyLineTypes { get; set; }
        public virtual DbSet<Railings> Railings { get; set; }
        public virtual DbSet<RailingTypes> RailingTypes { get; set; }
        public virtual DbSet<Ramps> Ramps { get; set; }
        public virtual DbSet<RampTypes> RampTypes { get; set; }
        public virtual DbSet<RebarLayoutEnums> RebarLayoutEnums { get; set; }
        public virtual DbSet<RebarOnColumn> RebarOnColumn { get; set; }
        public virtual DbSet<RebarOnFloor> RebarOnFloor { get; set; }
        public virtual DbSet<RebarOnFoundation> RebarOnFoundation { get; set; }
        public virtual DbSet<RebarOnFraming> RebarOnFraming { get; set; }
        public virtual DbSet<RebarOnWall> RebarOnWall { get; set; }
        public virtual DbSet<RebarStyleEnums> RebarStyleEnums { get; set; }
        public virtual DbSet<RevitDBLinkInfo> RevitDBLinkInfo { get; set; }
        public virtual DbSet<Roofs> Roofs { get; set; }
        public virtual DbSet<RoofTypes> RoofTypes { get; set; }
        public virtual DbSet<RoomAssociations> RoomAssociations { get; set; }
        public virtual DbSet<RoomFromToAssociations> RoomFromToAssociations { get; set; }
        public virtual DbSet<Rooms> Rooms { get; set; }
        public virtual DbSet<RoomTags> RoomTags { get; set; }
        public virtual DbSet<SecurityDevices> SecurityDevices { get; set; }
        public virtual DbSet<SecurityDeviceTypes> SecurityDeviceTypes { get; set; }
        public virtual DbSet<ServiceTypeEnums> ServiceTypeEnums { get; set; }
        public virtual DbSet<Sheets> Sheets { get; set; }
        public virtual DbSet<Site> Site { get; set; }
        public virtual DbSet<SiteTypes> SiteTypes { get; set; }
        public virtual DbSet<SlabEdges> SlabEdges { get; set; }
        public virtual DbSet<SlabEdgeTypes> SlabEdgeTypes { get; set; }
        public virtual DbSet<SpaceAssociations> SpaceAssociations { get; set; }
        public virtual DbSet<Spaces> Spaces { get; set; }
        public virtual DbSet<SpaceTypeEnums> SpaceTypeEnums { get; set; }
        public virtual DbSet<SpaceTypeSettings> SpaceTypeSettings { get; set; }
        public virtual DbSet<SpecialtyEquipment> SpecialtyEquipment { get; set; }
        public virtual DbSet<SpecialtyEquipmentTypes> SpecialtyEquipmentTypes { get; set; }
        public virtual DbSet<Sprinklers> Sprinklers { get; set; }
        public virtual DbSet<SprinklerTypes> SprinklerTypes { get; set; }
        public virtual DbSet<Stairs> Stairs { get; set; }
        public virtual DbSet<StairTypes> StairTypes { get; set; }
        public virtual DbSet<StructuralColumns> StructuralColumns { get; set; }
        public virtual DbSet<StructuralColumnTypes> StructuralColumnTypes { get; set; }
        public virtual DbSet<StructuralFabricReinforcement> StructuralFabricReinforcement { get; set; }
        public virtual DbSet<StructuralFabricReinforcementTypes> StructuralFabricReinforcementTypes { get; set; }
        public virtual DbSet<StructuralFoundations> StructuralFoundations { get; set; }
        public virtual DbSet<StructuralFoundationTypes> StructuralFoundationTypes { get; set; }
        public virtual DbSet<StructuralFraming> StructuralFraming { get; set; }
        public virtual DbSet<StructuralFramingTypes> StructuralFramingTypes { get; set; }
        public virtual DbSet<StructuralRebar> StructuralRebar { get; set; }
        public virtual DbSet<StructuralRebarBarTypes> StructuralRebarBarTypes { get; set; }
        public virtual DbSet<StructuralRebarHookTypes> StructuralRebarHookTypes { get; set; }
        public virtual DbSet<StructuralRebarShapes> StructuralRebarShapes { get; set; }
        public virtual DbSet<StructuralStiffeners> StructuralStiffeners { get; set; }
        public virtual DbSet<StructuralStiffenerTypes> StructuralStiffenerTypes { get; set; }
        public virtual DbSet<StructuralTrusses> StructuralTrusses { get; set; }
        public virtual DbSet<StructuralTrussTypes> StructuralTrussTypes { get; set; }
        public virtual DbSet<SwitchSystem> SwitchSystem { get; set; }
        public virtual DbSet<TelephoneDevices> TelephoneDevices { get; set; }
        public virtual DbSet<TelephoneDeviceTypes> TelephoneDeviceTypes { get; set; }
        public virtual DbSet<Topography> Topography { get; set; }
        public virtual DbSet<TopographyTypes> TopographyTypes { get; set; }
        public virtual DbSet<Views> Views { get; set; }
        public virtual DbSet<Voltages> Voltages { get; set; }
        public virtual DbSet<VoltageTypes> VoltageTypes { get; set; }
        public virtual DbSet<Walls> Walls { get; set; }
        public virtual DbSet<WallSweeps> WallSweeps { get; set; }
        public virtual DbSet<WallSweepTypes> WallSweepTypes { get; set; }
        public virtual DbSet<WallTypes> WallTypes { get; set; }
        public virtual DbSet<WallUsageEnums> WallUsageEnums { get; set; }
        public virtual DbSet<Windows> Windows { get; set; }
        public virtual DbSet<WindowTypes> WindowTypes { get; set; }
        public virtual DbSet<WindowWall> WindowWall { get; set; }
        public virtual DbSet<WireInsulations> WireInsulations { get; set; }
        public virtual DbSet<WireInsulationTypes> WireInsulationTypes { get; set; }
        public virtual DbSet<WireMaterials> WireMaterials { get; set; }
        public virtual DbSet<WireMaterialTypes> WireMaterialTypes { get; set; }
        public virtual DbSet<Wires> Wires { get; set; }
        public virtual DbSet<WireTemperatureRatings> WireTemperatureRatings { get; set; }
        public virtual DbSet<WireTemperatureRatingTypes> WireTemperatureRatingTypes { get; set; }
        public virtual DbSet<WireTypes> WireTypes { get; set; }
        public virtual DbSet<WiringTypeEnums> WiringTypeEnums { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AirTerminalTypes>()
                .HasMany(e => e.AirTerminals)
                .WithOptional(e => e.AirTerminalTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<AnalyzesAsTypeEnums>()
                .HasMany(e => e.Floors)
                .WithOptional(e => e.AnalyzesAsTypeEnums)
                .HasForeignKey(e => e.Analizarcomo);

            modelBuilder.Entity<AreaLoads>()
                .HasOptional(e => e.AreaLoadOnSlab)
                .WithRequired(e => e.AreaLoads);

            modelBuilder.Entity<AreaSchemes>()
                .HasMany(e => e.Areas)
                .WithOptional(e => e.AreaSchemes)
                .HasForeignKey(e => e.IDdeesquemadeárea);

            modelBuilder.Entity<AssemblyTypes>()
                .HasMany(e => e.Assemblies)
                .WithOptional(e => e.AssemblyTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<CableTrayFittingType>()
                .HasMany(e => e.CableTrayFittings)
                .WithOptional(e => e.CableTrayFittingType)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<CableTrayTypes>()
                .HasMany(e => e.CableTrays)
                .WithOptional(e => e.CableTrayTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Casework>()
                .HasOptional(e => e.CaseworkOnWall)
                .WithRequired(e => e.Casework);

            modelBuilder.Entity<CaseworkTypes>()
                .HasMany(e => e.Casework)
                .WithOptional(e => e.CaseworkTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Categories>()
                .HasMany(e => e.Assemblies)
                .WithOptional(e => e.Categories)
                .HasForeignKey(e => e.Categoríaasignada);

            modelBuilder.Entity<Ceilings>()
                .HasMany(e => e.LightingFixtureOnCeiling)
                .WithOptional(e => e.Ceilings)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<CeilingTypes>()
                .HasMany(e => e.Ceilings)
                .WithOptional(e => e.CeilingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ColumnTypes>()
                .HasMany(e => e.Columns1)
                .WithOptional(e => e.ColumnTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<CommunicationDeviceTypes>()
                .HasMany(e => e.CommunicationDevices)
                .WithOptional(e => e.CommunicationDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ConditionTypeEnums>()
                .HasMany(e => e.Spaces)
                .WithOptional(e => e.ConditionTypeEnums)
                .HasForeignKey(e => e.Tipodeacondicionamiento);

            modelBuilder.Entity<ConduitFittingType>()
                .HasMany(e => e.ConduitFittings)
                .WithOptional(e => e.ConduitFittingType)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ConduitTypes>()
                .HasMany(e => e.Conduits)
                .WithOptional(e => e.ConduitTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ConstructionTypes>()
                .HasMany(e => e.Constructions)
                .WithOptional(e => e.ConstructionTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<CurtainPanels>()
                .HasOptional(e => e.CurtainWallPanelOnRoof)
                .WithRequired(e => e.CurtainPanels);

            modelBuilder.Entity<CurtainPanels>()
                .HasOptional(e => e.CurtainWallPanelOnWall)
                .WithRequired(e => e.CurtainPanels);

            modelBuilder.Entity<CurtainSystemTypes>()
                .HasMany(e => e.CurtainSystems)
                .WithOptional(e => e.CurtainSystemTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<CurtainWallMullionTypes>()
                .HasMany(e => e.CurtainWallMullions)
                .WithOptional(e => e.CurtainWallMullionTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DataDeviceTypes>()
                .HasMany(e => e.DataDevices)
                .WithOptional(e => e.DataDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DemandFactorTypes>()
                .HasMany(e => e.DemandFactors)
                .WithOptional(e => e.DemandFactorTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.AirTerminals)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.AreaLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Assemblies)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.BuildingTypeSettings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CableTrayFittings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CableTrays)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Casework)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Ceilings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Columns1)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CommunicationDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ConduitFittings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Conduits)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Constructions)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CurtainPanels)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CurtainSystems)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.CurtainWallMullions)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DataDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DemandFactors)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DesignOptionSets)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.IDdeopciónprimaria);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DistributionSystems)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Doors)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctAccessories)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctFittings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctInsulations)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctLinings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctPlaceholders)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Ducts)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.DuctSystems)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalCircuits)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalDemandFactorDefinitions)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalEquipment)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalFixtures)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalLoadClassificationParameterElement)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.ElectricalLoadClassifications)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Fascias)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.FireAlarmDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.FlexDucts)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.FlexPipes)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Floors)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Fluids)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Furniture)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.FurnitureSystems)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.GenericModels)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Gutters)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.HVACLoadSchedules)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.HVACZones)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.InternalAreaLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.InternalLineLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.InternalPointLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Levels)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.LightingDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.LightingFixtures)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.LineLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Mass)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassExteriorWall)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassFloor)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassGlazing)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassInteriorWall)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassOpening)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassRoof)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MassSkylight)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.MechanicalEquipment)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.NurseCallDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PanelScheduleTemplatesBranchPanel)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PanelScheduleTemplatesDataPanel)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PanelScheduleTemplatesSwitchboard)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Parking)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeAccessories)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeConnections)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeFittings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeInsulations)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeMaterials)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipePlaceholders)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Pipes)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeSchedules)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipeSegments)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PipingSystems)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Planting)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PlumbingFixtures)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PointLoads)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.PropertyLines)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Railings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Ramps)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Roofs)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Rooms)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.SecurityDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Site)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.SlabEdges)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Spaces)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.SpaceTypeSettings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.SpecialtyEquipment)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Sprinklers)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Stairs)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralColumns)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralFabricReinforcement)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralFoundations)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralFraming)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralStiffeners)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.StructuralTrusses)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.SwitchSystem)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.TelephoneDevices)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Topography)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Voltages)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Walls)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.WallSweeps)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Windows)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.WireInsulations)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.WireMaterials)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.Wires)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DesignOptions>()
                .HasMany(e => e.WireTemperatureRatings)
                .WithOptional(e => e.DesignOptions)
                .HasForeignKey(e => e.Opcióndediseño);

            modelBuilder.Entity<DistributionSystemTypes>()
                .HasMany(e => e.DistributionSystems)
                .WithOptional(e => e.DistributionSystemTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Doors>()
                .HasOptional(e => e.DoorWall)
                .WithRequired(e => e.Doors);

            modelBuilder.Entity<DoorTypes>()
                .HasMany(e => e.Doors)
                .WithOptional(e => e.DoorTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctAccessoryTypes>()
                .HasMany(e => e.DuctAccessories)
                .WithOptional(e => e.DuctAccessoryTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctFittingTypes>()
                .HasMany(e => e.DuctFittings)
                .WithOptional(e => e.DuctFittingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctInsulationTypes>()
                .HasMany(e => e.DuctInsulations)
                .WithOptional(e => e.DuctInsulationTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctLiningTypes>()
                .HasMany(e => e.DuctLinings)
                .WithOptional(e => e.DuctLiningTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctTypes>()
                .HasMany(e => e.DuctPlaceholders)
                .WithOptional(e => e.DuctTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<DuctTypes>()
                .HasMany(e => e.Ducts)
                .WithOptional(e => e.DuctTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<EaveCutterTypeEnums>()
                .HasMany(e => e.Roofs)
                .WithOptional(e => e.EaveCutterTypeEnums)
                .HasForeignKey(e => e.Cortedealero);

            modelBuilder.Entity<ElectricalEquipmentTypes>()
                .HasMany(e => e.ElectricalEquipment)
                .WithOptional(e => e.ElectricalEquipmentTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ElectricalFixtureTypes>()
                .HasMany(e => e.ElectricalFixtures)
                .WithOptional(e => e.ElectricalFixtureTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ElectricalPhaseConfigurationEnums>()
                .HasMany(e => e.DistributionSystemTypes)
                .WithOptional(e => e.ElectricalPhaseConfigurationEnums)
                .HasForeignKey(e => e.Configuración);

            modelBuilder.Entity<ElectricalPhaseEnums>()
                .HasMany(e => e.DistributionSystemTypes)
                .WithOptional(e => e.ElectricalPhaseEnums)
                .HasForeignKey(e => e.Fase);

            modelBuilder.Entity<ElectricalSystemEnums>()
                .HasMany(e => e.ElectricalCircuits)
                .WithOptional(e => e.ElectricalSystemEnums)
                .HasForeignKey(e => e.Tipodesistema);

            modelBuilder.Entity<FabricLocationEnums>()
                .HasMany(e => e.StructuralFabricReinforcement)
                .WithOptional(e => e.FabricLocationEnums)
                .HasForeignKey(e => e.Ubicación);

            modelBuilder.Entity<FasciaTypes>()
                .HasMany(e => e.Fascias)
                .WithOptional(e => e.FasciaTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FireAlarmDeviceTypes>()
                .HasMany(e => e.FireAlarmDevices)
                .WithOptional(e => e.FireAlarmDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FlexDuctTypes>()
                .HasMany(e => e.FlexDucts)
                .WithOptional(e => e.FlexDuctTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FlexPipeTypes>()
                .HasMany(e => e.FlexPipes)
                .WithOptional(e => e.FlexPipeTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Floors>()
                .HasMany(e => e.AreaLoadOnSlab)
                .WithOptional(e => e.Floors)
                .HasForeignKey(e => e.SlabId);

            modelBuilder.Entity<Floors>()
                .HasMany(e => e.OpeningOnFloor)
                .WithOptional(e => e.Floors)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Floors>()
                .HasMany(e => e.RebarOnFloor)
                .WithOptional(e => e.Floors)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<FloorTypes>()
                .HasMany(e => e.Floors)
                .WithOptional(e => e.FloorTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FluidTypes>()
                .HasMany(e => e.Fluids)
                .WithOptional(e => e.FluidTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FurnitureSystemTypes>()
                .HasMany(e => e.FurnitureSystems)
                .WithOptional(e => e.FurnitureSystemTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<FurnitureTypes>()
                .HasMany(e => e.Furniture)
                .WithOptional(e => e.FurnitureTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<GenericModels>()
                .HasOptional(e => e.GenericModelOnRoof)
                .WithRequired(e => e.GenericModels);

            modelBuilder.Entity<GenericModels>()
                .HasOptional(e => e.GenericModelOnWall)
                .WithRequired(e => e.GenericModels);

            modelBuilder.Entity<GenericModelTypes>()
                .HasMany(e => e.GenericModels)
                .WithOptional(e => e.GenericModelTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<GridTypes>()
                .HasMany(e => e.Grids)
                .WithOptional(e => e.GridTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<GutterTypes>()
                .HasMany(e => e.Gutters)
                .WithOptional(e => e.GutterTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<InstanceUsageEnums>()
                .HasMany(e => e.StructuralFraming)
                .WithOptional(e => e.InstanceUsageEnums)
                .HasForeignKey(e => e.Usoestructural);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Areas)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Casework)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Ceilings)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Columns1)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Columns11)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Nivelsuperior);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.CommunicationDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.DataDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Doors)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.ElectricalEquipment)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.ElectricalFixtures)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.ElementLevel)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.LevelId);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.FireAlarmDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Floors)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Furniture)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.FurnitureSystems)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.GenericModels)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.LightingDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.LightingFixtures)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.MechanicalEquipment)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.NurseCallDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Parking)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.PlumbingFixtures)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Railings)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Ramps)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Ramps1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Nivelsuperior);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Ramps2)
                .WithOptional(e => e.Levels2)
                .HasForeignKey(e => e.Nivelsuperiordeedificiomultiplanta);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Roofs)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Roofs1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Niveldellímite);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Rooms)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.SecurityDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.SecurityDevices1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Niveldetabladeplanificación);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Spaces)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.SpecialtyEquipment)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Sprinklers)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Stairs)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Stairs1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Nivelsuperior);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Stairs2)
                .WithOptional(e => e.Levels2)
                .HasForeignKey(e => e.Nivelsuperiordeedificiomultiplanta);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.StructuralColumns)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivelbase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.StructuralColumns1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Nivelsuperior);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.StructuralFraming)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.StructuralFraming1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Niveldereferencia);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.TelephoneDevices)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Walls)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Restriccióndebase);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Walls1)
                .WithOptional(e => e.Levels1)
                .HasForeignKey(e => e.Restricciónsuperior);

            modelBuilder.Entity<Levels>()
                .HasMany(e => e.Windows)
                .WithOptional(e => e.Levels)
                .HasForeignKey(e => e.Nivel);

            modelBuilder.Entity<LevelTypes>()
                .HasMany(e => e.Levels)
                .WithOptional(e => e.LevelTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<LightingDeviceTypes>()
                .HasMany(e => e.LightingDevices)
                .WithOptional(e => e.LightingDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<LightingFixtures>()
                .HasOptional(e => e.LightingFixtureOnCeiling)
                .WithRequired(e => e.LightingFixtures);

            modelBuilder.Entity<LightingFixtures>()
                .HasOptional(e => e.LightingFixtureOnWall)
                .WithRequired(e => e.LightingFixtures);

            modelBuilder.Entity<LightingFixtureTypes>()
                .HasMany(e => e.LightingFixtures)
                .WithOptional(e => e.LightingFixtureTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<LineLoads>()
                .HasOptional(e => e.LineLoadOnBeam)
                .WithRequired(e => e.LineLoads);

            modelBuilder.Entity<LoadClassificationTypeEnums>()
                .HasMany(e => e.DemandFactorTypes)
                .WithOptional(e => e.LoadClassificationTypeEnums)
                .HasForeignKey(e => e.Clasificacióndecarga);

            modelBuilder.Entity<MassTypes>()
                .HasMany(e => e.Mass)
                .WithOptional(e => e.MassTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.Categories)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.MaterialId);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.FasciaTypes)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.GutterTypes)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.MaterialQuantities)
                .WithRequired(e => e.Materials)
                .HasForeignKey(e => e.MaterialId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.PipeSegments)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.SlabEdgeTypes)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.StructuralFabricReinforcementTypes)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<Materials>()
                .HasMany(e => e.WallSweepTypes)
                .WithOptional(e => e.Materials)
                .HasForeignKey(e => e.Material);

            modelBuilder.Entity<MechanicalEquipment>()
                .HasOptional(e => e.MechanicalEquipmentOnWall)
                .WithRequired(e => e.MechanicalEquipment);

            modelBuilder.Entity<MechanicalEquipmentTypes>()
                .HasMany(e => e.MechanicalEquipment)
                .WithOptional(e => e.MechanicalEquipmentTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<NeutralModeEnums>()
                .HasMany(e => e.WireTypes)
                .WithOptional(e => e.NeutralModeEnums)
                .HasForeignKey(e => e.Tamañoneutro);

            modelBuilder.Entity<NurseCallDeviceTypes>()
                .HasMany(e => e.NurseCallDevices)
                .WithOptional(e => e.NurseCallDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Openings>()
                .HasOptional(e => e.OpeningOnFloor)
                .WithRequired(e => e.Openings);

            modelBuilder.Entity<Openings>()
                .HasOptional(e => e.OpeningOnWall)
                .WithRequired(e => e.Openings);

            modelBuilder.Entity<ParkingTypes>()
                .HasMany(e => e.Parking)
                .WithOptional(e => e.ParkingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.AirTerminals)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.AirTerminals1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.AreaLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.AreaLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Assemblies)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Assemblies1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CableTrayFittings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CableTrayFittings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CableTrays)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CableTrays1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Casework)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Casework1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ceilings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ceilings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Columns1)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Columns11)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CommunicationDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CommunicationDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ConduitFittings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ConduitFittings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Conduits)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Conduits1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Constructions)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Constructions1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainPanels)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainPanels1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainSystems)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainSystems1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainWallMullions)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.CurtainWallMullions1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DataDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DataDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DemandFactors)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DemandFactors1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DistributionSystems)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DistributionSystems1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Doors)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Doors1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctAccessories)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctAccessories1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctFittings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctFittings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctInsulations)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctInsulations1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctLinings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctLinings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctPlaceholders)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.DuctPlaceholders1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ducts)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ducts1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ElectricalEquipment)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ElectricalEquipment1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ElectricalFixtures)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ElectricalFixtures1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.ElementPhase)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.PhaseCreatedId);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Fascias)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Fascias1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FireAlarmDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FireAlarmDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FlexDucts)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FlexDucts1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FlexPipes)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FlexPipes1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Floors)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Floors1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Fluids)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Fluids1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Furniture)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Furniture1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FurnitureSystems)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.FurnitureSystems1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.GenericModels)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.GenericModels1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Gutters)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Gutters1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalAreaLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalAreaLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalLineLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalLineLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalPointLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.InternalPointLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LightingDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LightingDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LightingFixtures)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LightingFixtures1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LineLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.LineLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Mass)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Mass1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassExteriorWall)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassExteriorWall1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassFloor)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassFloor1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassGlazing)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassGlazing1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassInteriorWall)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassInteriorWall1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassOpening)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassOpening1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassRoof)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassRoof1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassSkylight)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MassSkylight1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MechanicalEquipment)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.MechanicalEquipment1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.NurseCallDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.NurseCallDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Parking)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Parking1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeAccessories)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeAccessories1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeConnections)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeConnections1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeFittings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeFittings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeInsulations)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeInsulations1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeMaterials)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeMaterials1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipePlaceholders)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipePlaceholders1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Pipes)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Pipes1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeSchedules)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PipeSchedules1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Planting)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Planting1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PlumbingFixtures)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PlumbingFixtures1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PointLoads)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.PointLoads1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Railings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Railings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ramps)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Ramps1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Roofs)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Roofs1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.RoomAssociations)
                .WithRequired(e => e.Phases)
                .HasForeignKey(e => e.PhaseId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.RoomFromToAssociations)
                .WithRequired(e => e.Phases)
                .HasForeignKey(e => e.PhaseId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Rooms)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.IDdefase);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SecurityDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SecurityDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Site)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Site1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SlabEdges)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SlabEdges1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SpaceAssociations)
                .WithRequired(e => e.Phases)
                .HasForeignKey(e => e.PhaseId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Spaces)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.IDdefase);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SpecialtyEquipment)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.SpecialtyEquipment1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Sprinklers)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Sprinklers1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Stairs)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Stairs1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralColumns)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralColumns1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFabricReinforcement)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFabricReinforcement1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFoundations)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFoundations1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFraming)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralFraming1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralRebar1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralStiffeners)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralStiffeners1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralTrusses)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.StructuralTrusses1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.TelephoneDevices)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.TelephoneDevices1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Topography)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Topography1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Views)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fase);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Voltages)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Voltages1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Walls)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Walls1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WallSweeps)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WallSweeps1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Windows)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Windows1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireInsulations)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireInsulations1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireMaterials)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireMaterials1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Wires)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.Wires1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireTemperatureRatings)
                .WithOptional(e => e.Phases)
                .HasForeignKey(e => e.Fasedecreación);

            modelBuilder.Entity<Phases>()
                .HasMany(e => e.WireTemperatureRatings1)
                .WithOptional(e => e.Phases1)
                .HasForeignKey(e => e.Fasedederribo);

            modelBuilder.Entity<PipeAccessoryTypes>()
                .HasMany(e => e.PipeAccessories)
                .WithOptional(e => e.PipeAccessoryTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeConnectionTypes>()
                .HasMany(e => e.PipeConnections)
                .WithOptional(e => e.PipeConnectionTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeFittingTypes>()
                .HasMany(e => e.PipeFittings)
                .WithOptional(e => e.PipeFittingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeFlowStateEnums>()
                .HasMany(e => e.FlexPipes)
                .WithOptional(e => e.PipeFlowStateEnums)
                .HasForeignKey(e => e.Estadodeflujo);

            modelBuilder.Entity<PipeFlowStateEnums>()
                .HasMany(e => e.PipePlaceholders)
                .WithOptional(e => e.PipeFlowStateEnums)
                .HasForeignKey(e => e.Estadodeflujo);

            modelBuilder.Entity<PipeFlowStateEnums>()
                .HasMany(e => e.Pipes)
                .WithOptional(e => e.PipeFlowStateEnums)
                .HasForeignKey(e => e.Estadodeflujo);

            modelBuilder.Entity<PipeInsulationTypes>()
                .HasMany(e => e.PipeInsulations)
                .WithOptional(e => e.PipeInsulationTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeMaterialTypes>()
                .HasMany(e => e.PipeMaterials)
                .WithOptional(e => e.PipeMaterialTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeScheduleTypes>()
                .HasMany(e => e.PipeSchedules)
                .WithOptional(e => e.PipeScheduleTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeTypes>()
                .HasMany(e => e.PipePlaceholders)
                .WithOptional(e => e.PipeTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PipeTypes>()
                .HasMany(e => e.Pipes)
                .WithOptional(e => e.PipeTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PlantingTypes>()
                .HasMany(e => e.Planting)
                .WithOptional(e => e.PlantingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<PlumbingFixtures>()
                .HasOptional(e => e.PlumbingFixtureOnWall)
                .WithRequired(e => e.PlumbingFixtures);

            modelBuilder.Entity<PlumbingFixtureTypes>()
                .HasMany(e => e.PlumbingFixtures)
                .WithOptional(e => e.PlumbingFixtureTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Profiles>()
                .HasMany(e => e.FasciaTypes)
                .WithOptional(e => e.Profiles)
                .HasForeignKey(e => e.Perfil);

            modelBuilder.Entity<Profiles>()
                .HasMany(e => e.GutterTypes)
                .WithOptional(e => e.Profiles)
                .HasForeignKey(e => e.Perfil);

            modelBuilder.Entity<Profiles>()
                .HasMany(e => e.SlabEdgeTypes)
                .WithOptional(e => e.Profiles)
                .HasForeignKey(e => e.Perfil);

            modelBuilder.Entity<Profiles>()
                .HasMany(e => e.WallSweepTypes)
                .WithOptional(e => e.Profiles)
                .HasForeignKey(e => e.Perfil);

            modelBuilder.Entity<PropertyLineTypes>()
                .HasMany(e => e.PropertyLines)
                .WithOptional(e => e.PropertyLineTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<RailingTypes>()
                .HasMany(e => e.Railings)
                .WithOptional(e => e.RailingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<RampTypes>()
                .HasMany(e => e.Ramps)
                .WithOptional(e => e.RampTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<RebarLayoutEnums>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.RebarLayoutEnums)
                .HasForeignKey(e => e.Regladediseño);

            modelBuilder.Entity<RebarStyleEnums>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.RebarStyleEnums)
                .HasForeignKey(e => e.Estilo);

            modelBuilder.Entity<Roofs>()
                .HasMany(e => e.CurtainWallPanelOnRoof)
                .WithOptional(e => e.Roofs)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Roofs>()
                .HasMany(e => e.GenericModelOnRoof)
                .WithOptional(e => e.Roofs)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<RoofTypes>()
                .HasMany(e => e.Roofs)
                .WithOptional(e => e.RoofTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Rooms>()
                .HasMany(e => e.RoomAssociations)
                .WithOptional(e => e.Rooms)
                .HasForeignKey(e => e.RoomId);

            modelBuilder.Entity<Rooms>()
                .HasMany(e => e.RoomFromToAssociations)
                .WithOptional(e => e.Rooms)
                .HasForeignKey(e => e.FromRoom);

            modelBuilder.Entity<Rooms>()
                .HasMany(e => e.RoomFromToAssociations1)
                .WithOptional(e => e.Rooms1)
                .HasForeignKey(e => e.ToRoom);

            modelBuilder.Entity<SecurityDeviceTypes>()
                .HasMany(e => e.SecurityDevices)
                .WithOptional(e => e.SecurityDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<ServiceTypeEnums>()
                .HasMany(e => e.HVACZones)
                .WithOptional(e => e.ServiceTypeEnums)
                .HasForeignKey(e => e.Tipodeservicio);

            modelBuilder.Entity<SiteTypes>()
                .HasMany(e => e.Site)
                .WithOptional(e => e.SiteTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<SlabEdgeTypes>()
                .HasMany(e => e.SlabEdges)
                .WithOptional(e => e.SlabEdgeTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Spaces>()
                .HasMany(e => e.SpaceAssociations)
                .WithOptional(e => e.Spaces)
                .HasForeignKey(e => e.SpaceId);

            modelBuilder.Entity<SpaceTypeEnums>()
                .HasMany(e => e.Spaces)
                .WithOptional(e => e.SpaceTypeEnums)
                .HasForeignKey(e => e.Tipodeespacio);

            modelBuilder.Entity<SpecialtyEquipmentTypes>()
                .HasMany(e => e.SpecialtyEquipment)
                .WithOptional(e => e.SpecialtyEquipmentTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<SprinklerTypes>()
                .HasMany(e => e.Sprinklers)
                .WithOptional(e => e.SprinklerTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StairTypes>()
                .HasMany(e => e.Stairs)
                .WithOptional(e => e.StairTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralColumns>()
                .HasMany(e => e.RebarOnColumn)
                .WithOptional(e => e.StructuralColumns)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<StructuralColumnTypes>()
                .HasMany(e => e.StructuralColumns)
                .WithOptional(e => e.StructuralColumnTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralFabricReinforcementTypes>()
                .HasMany(e => e.StructuralFabricReinforcement)
                .WithOptional(e => e.StructuralFabricReinforcementTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralFoundations>()
                .HasMany(e => e.RebarOnFoundation)
                .WithOptional(e => e.StructuralFoundations)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<StructuralFoundationTypes>()
                .HasMany(e => e.StructuralFoundations)
                .WithOptional(e => e.StructuralFoundationTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralFraming>()
                .HasMany(e => e.LineLoadOnBeam)
                .WithOptional(e => e.StructuralFraming)
                .HasForeignKey(e => e.BeamId);

            modelBuilder.Entity<StructuralFraming>()
                .HasMany(e => e.RebarOnFraming)
                .WithOptional(e => e.StructuralFraming)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<StructuralFramingTypes>()
                .HasMany(e => e.StructuralFraming)
                .WithOptional(e => e.StructuralFramingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralRebar>()
                .HasOptional(e => e.RebarOnColumn)
                .WithRequired(e => e.StructuralRebar);

            modelBuilder.Entity<StructuralRebar>()
                .HasOptional(e => e.RebarOnFloor)
                .WithRequired(e => e.StructuralRebar);

            modelBuilder.Entity<StructuralRebar>()
                .HasOptional(e => e.RebarOnFoundation)
                .WithRequired(e => e.StructuralRebar);

            modelBuilder.Entity<StructuralRebar>()
                .HasOptional(e => e.RebarOnFraming)
                .WithRequired(e => e.StructuralRebar);

            modelBuilder.Entity<StructuralRebar>()
                .HasOptional(e => e.RebarOnWall)
                .WithRequired(e => e.StructuralRebar);

            modelBuilder.Entity<StructuralRebarBarTypes>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.StructuralRebarBarTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralRebarHookTypes>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.StructuralRebarHookTypes)
                .HasForeignKey(e => e.Ganchoalfinal);

            modelBuilder.Entity<StructuralRebarHookTypes>()
                .HasMany(e => e.StructuralRebar1)
                .WithOptional(e => e.StructuralRebarHookTypes1)
                .HasForeignKey(e => e.Ganchoalinicio);

            modelBuilder.Entity<StructuralRebarShapes>()
                .HasMany(e => e.StructuralRebar)
                .WithOptional(e => e.StructuralRebarShapes)
                .HasForeignKey(e => e.Forma);

            modelBuilder.Entity<StructuralStiffenerTypes>()
                .HasMany(e => e.StructuralStiffeners)
                .WithOptional(e => e.StructuralStiffenerTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<StructuralTrussTypes>()
                .HasMany(e => e.StructuralTrusses)
                .WithOptional(e => e.StructuralTrussTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<TelephoneDeviceTypes>()
                .HasMany(e => e.TelephoneDevices)
                .WithOptional(e => e.TelephoneDeviceTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<TopographyTypes>()
                .HasMany(e => e.Topography)
                .WithOptional(e => e.TopographyTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<VoltageTypes>()
                .HasMany(e => e.Voltages)
                .WithOptional(e => e.VoltageTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.CaseworkOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.CurtainWallPanelOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.DoorWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.WallId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.GenericModelOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.LightingFixtureOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.MechanicalEquipmentOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.OpeningOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.PlumbingFixtureOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.RebarOnWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.HostId);

            modelBuilder.Entity<Walls>()
                .HasMany(e => e.WindowWall)
                .WithOptional(e => e.Walls)
                .HasForeignKey(e => e.WallId);

            modelBuilder.Entity<WallSweepTypes>()
                .HasMany(e => e.WallSweeps)
                .WithOptional(e => e.WallSweepTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WallTypes>()
                .HasMany(e => e.Walls)
                .WithOptional(e => e.WallTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WallUsageEnums>()
                .HasMany(e => e.Walls)
                .WithOptional(e => e.WallUsageEnums)
                .HasForeignKey(e => e.Usoestructural);

            modelBuilder.Entity<Windows>()
                .HasOptional(e => e.WindowWall)
                .WithRequired(e => e.Windows);

            modelBuilder.Entity<WindowTypes>()
                .HasMany(e => e.Windows)
                .WithOptional(e => e.WindowTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WireInsulationTypes>()
                .HasMany(e => e.WireInsulations)
                .WithOptional(e => e.WireInsulationTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WireMaterialTypes>()
                .HasMany(e => e.WireMaterials)
                .WithOptional(e => e.WireMaterialTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WireTemperatureRatingTypes>()
                .HasMany(e => e.WireTemperatureRatings)
                .WithOptional(e => e.WireTemperatureRatingTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WireTypes>()
                .HasMany(e => e.ElectricalCircuits)
                .WithOptional(e => e.WireTypes)
                .HasForeignKey(e => e.Tipodecable);

            modelBuilder.Entity<WireTypes>()
                .HasMany(e => e.Wires)
                .WithOptional(e => e.WireTypes)
                .HasForeignKey(e => e.IDdetipo);

            modelBuilder.Entity<WiringTypeEnums>()
                .HasMany(e => e.Wires)
                .WithOptional(e => e.WiringTypeEnums)
                .HasForeignKey(e => e.Tipo);
        }

        
    }
}
