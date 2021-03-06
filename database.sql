USE [master]
GO
/****** Object:  Database [DBRevit]    Script Date: 2/02/2020 12:38:41 ******/
CREATE DATABASE [DBRevit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBRevit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBRevit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBRevit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBRevit_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBRevit] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBRevit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBRevit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBRevit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBRevit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBRevit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBRevit] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBRevit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBRevit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBRevit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBRevit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBRevit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBRevit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBRevit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBRevit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBRevit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBRevit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBRevit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBRevit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBRevit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBRevit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBRevit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBRevit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBRevit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBRevit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBRevit] SET  MULTI_USER 
GO
ALTER DATABASE [DBRevit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBRevit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBRevit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBRevit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBRevit] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBRevit]
GO
/****** Object:  Table [dbo].[AirTerminals]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirTerminals](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Flujo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_AirTerminals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AirTerminalTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirTerminalTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Flujomáx.] [float] NULL,
	[Flujomín.] [float] NULL,
 CONSTRAINT [PK_AirTerminalTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnalyzesAsTypeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalyzesAsTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_AnalyzesAsTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaLoadOnSlab]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaLoadOnSlab](
	[AreaLoadId] [int] NOT NULL,
	[SlabId] [int] NULL,
 CONSTRAINT [PK_AreaLoadOnSlab] PRIMARY KEY CLUSTERED 
(
	[AreaLoadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaLoads]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Área] [float] NULL,
	[Fz3] [float] NULL,
	[Fy3] [float] NULL,
	[Fx3] [float] NULL,
	[Fz2] [float] NULL,
	[Fy2] [float] NULL,
	[Fx2] [float] NULL,
	[Fz1] [float] NULL,
	[Fy1] [float] NULL,
	[Fx1] [float] NULL,
	[Reacción] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_AreaLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Areas]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Id] [int] NOT NULL,
	[IDdeesquemadeárea] [int] NULL,
	[Tipodeárea] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Perímetro] [float] NULL,
	[Nivel] [int] NULL,
	[Área] [float] NULL,
	[Número] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_Areas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaSchemes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaSchemes](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_AreaSchemes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assemblies]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assemblies](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Categoríaasignada] [int] NULL,
 CONSTRAINT [PK_Assemblies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssemblyCodes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssemblyCodes](
	[Códigodemontaje] [nvarchar](255) NOT NULL,
	[Descripcióndemontaje] [nvarchar](255) NULL,
 CONSTRAINT [PK_AssemblyCodes] PRIMARY KEY CLUSTERED 
(
	[Códigodemontaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssemblyTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssemblyTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_AssemblyTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BuildingTypeSettings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingTypeSettings](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_BuildingTypeSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CableTrayFittings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CableTrayFittings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodeservicio] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_CableTrayFittings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CableTrayFittingType]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CableTrayFittingType](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_CableTrayFittingType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CableTrays]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CableTrays](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodeservicio] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Elevacióninferior] [float] NULL,
	[Elevaciónsuperior] [float] NULL,
	[Anchura] [float] NULL,
	[Altura] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
 CONSTRAINT [PK_CableTrays] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CableTrayTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CableTrayTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Multiplicadorderadiodecodo] [float] NULL,
 CONSTRAINT [PK_CableTrayTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Casework]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casework](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Casework] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseworkOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseworkOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_CaseworkOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CaseworkTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseworkTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Profundidad] [float] NULL,
	[Anchura] [float] NULL,
	[Altura] [float] NULL,
	[Acabado] [nvarchar](255) NULL,
	[Tipodeconstrucción] [nvarchar](255) NULL,
 CONSTRAINT [PK_CaseworkTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[MaterialId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ceilings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ceilings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Desfasedealturadesdenivel] [float] NULL,
	[Nivel] [int] NULL,
	[Perímetro] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Ejecutado] [int] NULL,
 CONSTRAINT [PK_Ceilings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CeilingTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CeilingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_CeilingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Columns1]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Columns1](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Desfasesuperior] [float] NULL,
	[Desfasedebase] [float] NULL,
	[Nivelsuperior] [int] NULL,
	[Nivelbase] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_Columns1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColumnTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColumnTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_ColumnTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommunicationDevices]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommunicationDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_CommunicationDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CommunicationDeviceTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommunicationDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_CommunicationDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConditionTypeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConditionTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_ConditionTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConduitFittings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConduitFittings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Tipodeservicio] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_ConduitFittings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConduitFittingType]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConduitFittingType](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_ConduitFittingType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Conduits]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conduits](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[IDdetipo] [int] NULL,
	[Tipodeservicio] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Diámetroexterior] [float] NULL,
	[Diámetrointerior] [float] NULL,
	[Elevacióninferior] [float] NULL,
	[Elevaciónsuperior] [float] NULL,
	[Diámetro(tamañocomercial)] [float] NULL,
	[Longitud] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
 CONSTRAINT [PK_Conduits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConduitTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConduitTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Norma] [int] NULL,
 CONSTRAINT [PK_ConduitTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Constructions]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constructions](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_Constructions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConstructionTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConstructionTypes](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_ConstructionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoverTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoverTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Longitud] [float] NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_CoverTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainPanels]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainPanels](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Área] [float] NULL,
	[IDdeanfitrión] [int] NULL,
	[Anchura] [float] NULL,
	[Altura] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainPanels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainPanelTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainPanelTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Acabado] [nvarchar](255) NULL,
	[Tipodeconstrucción] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainPanelTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainSystems]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSystems](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainSystemTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainSystemTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_CurtainSystemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainWallMullions]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainWallMullions](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainWallMullions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainWallMullionTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainWallMullionTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_CurtainWallMullionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainWallPanelOnRoof]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainWallPanelOnRoof](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainWallPanelOnRoof] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurtainWallPanelOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurtainWallPanelOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_CurtainWallPanelOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataDevices]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_DataDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataDeviceTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DataDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandFactors]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandFactors](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_DemandFactors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DemandFactorTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandFactorTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Clasificacióndecarga] [int] NULL,
	[Cargaconectada] [float] NULL,
	[Cargadedemandaestimada] [float] NULL,
 CONSTRAINT [PK_DemandFactorTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignOptions]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignOptions](
	[Id] [int] NOT NULL,
	[IDdeconjuntodeopcionesdediseño] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_DesignOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignOptionSets]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignOptionSets](
	[Id] [int] NOT NULL,
	[IDdeopciónprimaria] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_DesignOptionSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistributionSystems]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionSystems](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_DistributionSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistributionSystemTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionSystemTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Voltajeentrefases] [int] NULL,
	[Voltajedelíneaatierra] [int] NULL,
	[Fase] [int] NULL,
	[Configuración] [int] NULL,
	[Cables] [int] NULL,
 CONSTRAINT [PK_DistributionSystemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DivisionProfiles]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DivisionProfiles](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DivisionProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doors]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doors](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Alturadeextremoinicial] [float] NULL,
	[Alturadeantepecho] [float] NULL,
	[Materialdemarco] [nvarchar](255) NULL,
	[Tipodemarco] [nvarchar](255) NULL,
	[Acabado] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Doors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoorTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Anchuraaproximada] [float] NULL,
	[Alturaaproximada] [float] NULL,
	[Grosor] [float] NULL,
	[Anchura] [float] NULL,
	[Altura] [float] NULL,
	[Operación] [nvarchar](255) NULL,
	[Tipodeconstrucción] [nvarchar](255) NULL,
	[Clasificaciónparaincendios] [nvarchar](255) NULL,
 CONSTRAINT [PK_DoorTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoorWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorWall](
	[DoorId] [int] NOT NULL,
	[DoorName] [nvarchar](255) NULL,
	[WallId] [int] NULL,
	[WallName] [nvarchar](255) NULL,
 CONSTRAINT [PK_DoorWall] PRIMARY KEY CLUSTERED 
(
	[DoorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctAccessories]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctAccessories](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Tamañolibre] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Grosordeaislamientointerior] [float] NULL,
	[Tipodeaislamientointerior] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctAccessories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctAccessoryTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctAccessoryTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DuctAccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctFittings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctFittings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Tamañolibre] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Grosordeaislamientointerior] [float] NULL,
	[Tipodeaislamientointerior] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctFittings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctFittingTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctFittingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DuctFittingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctInsulations]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctInsulations](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctInsulations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctInsulationTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctInsulationTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DuctInsulationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctLinings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctLinings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctLinings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctLiningTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctLiningTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DuctLiningTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctPlaceholders]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctPlaceholders](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Elevacióninferior] [float] NULL,
	[Elevaciónsuperior] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Bloqueodetamaño] [int] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetrohidráulico] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Diámetroequivalente] [float] NULL,
	[Tramo] [int] NULL,
	[Coeficientedepérdida] [float] NULL,
	[Presióndevelocidad] [float] NULL,
	[Área] [float] NULL,
	[Grosorderevestimiento] [float] NULL,
	[Grosordeaislamiento] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Velocidad] [float] NULL,
	[Diámetro] [float] NULL,
	[Altura] [float] NULL,
	[Anchura] [float] NULL,
	[Flujo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Tamañolibre] [nvarchar](255) NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tipodeaislamientointerior] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctPlaceholders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ducts]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ducts](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Elevacióninferior] [float] NULL,
	[Elevaciónsuperior] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Bloqueodetamaño] [int] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetrohidráulico] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Diámetroequivalente] [float] NULL,
	[Tramo] [int] NULL,
	[Coeficientedepérdida] [float] NULL,
	[Presióndevelocidad] [float] NULL,
	[Área] [float] NULL,
	[Grosorderevestimiento] [float] NULL,
	[Grosordeaislamiento] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Velocidad] [float] NULL,
	[Diámetro] [float] NULL,
	[Altura] [float] NULL,
	[Anchura] [float] NULL,
	[Flujo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Tamañolibre] [nvarchar](255) NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tipodeaislamientointerior] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctSystems]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctSystems](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[IDdetipo] [int] NULL,
	[Númerodeelementos] [int] NULL,
	[Equiposdesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Flujo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctSystemTypeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctSystemTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctSystemTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctSystemTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctSystemTypes](
	[Id] [int] NOT NULL,
	[Símbolodesubida/bajada] [int] NULL,
	[Abreviatura] [nvarchar](255) NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
 CONSTRAINT [PK_DuctSystemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DuctTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DuctTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_DuctTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EaveCutterTypeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EaveCutterTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_EaveCutterTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalCircuits]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalCircuits](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Núm.detramos] [int] NULL,
	[Núm.deconductorescargados] [int] NULL,
	[Núm.deconductoresneutros] [int] NULL,
	[Núm.deconductoresdetierra] [int] NULL,
	[Nombredecarga] [nvarchar](255) NULL,
	[FaseCdecargaaparente] [float] NULL,
	[FaseBdecargaaparente] [float] NULL,
	[FaseAdecargaaparente] [float] NULL,
	[FaseCdecargaactiva] [float] NULL,
	[FaseBdecargaactiva] [float] NULL,
	[FaseAdecargaactiva] [float] NULL,
	[Corrienteverdadera] [float] NULL,
	[FaseAdecorrienteverdadera] [float] NULL,
	[FaseBdecorrienteverdadera] [float] NULL,
	[FaseCdecorrienteverdadera] [float] NULL,
	[Corrienteaparente] [float] NULL,
	[FaseAdecorrienteaparente] [float] NULL,
	[FaseBdecorrienteaparente] [float] NULL,
	[FaseCdecorrienteaparente] [float] NULL,
	[Caídadevoltaje] [float] NULL,
	[Longitud] [float] NULL,
	[Corrientenominal] [float] NULL,
	[Tamañodecable] [nvarchar](255) NULL,
	[Tipodecable] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndecarga] [nvarchar](255) NULL,
	[Cargaactiva] [float] NULL,
	[Estadodelfactordepotencia] [int] NULL,
	[Factordepotencia] [float] NULL,
	[Cargaaparente] [float] NULL,
	[Cargaequilibrada] [int] NULL,
	[Voltaje] [float] NULL,
	[Númerodepolos] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Fotograma] [float] NULL,
	[Númerodeelementos] [int] NULL,
 CONSTRAINT [PK_ElectricalCircuits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalDemandFactorDefinitions]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalDemandFactorDefinitions](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_ElectricalDemandFactorDefinitions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalEquipment]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalEquipment](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Modificaciones] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Redeléctrica] [float] NULL,
	[Instalación] [nvarchar](255) NULL,
	[Corrientedecortocircuito] [nvarchar](255) NULL,
	[Máx.deinterruptoresunipolares] [int] NULL,
	[Nombredepanel] [nvarchar](255) NULL,
	[Demandatotalestimada] [float] NULL,
	[Totalconectado] [float] NULL,
	[FaseAdecargaaparente] [float] NULL,
	[FaseBdecargaaparente] [float] NULL,
	[FaseCdecargaaparente] [float] NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[FaseAdecorriente] [float] NULL,
	[FaseBdecorriente] [float] NULL,
	[FaseCdecorriente] [float] NULL,
	[Alimentación] [nvarchar](255) NULL,
	[Ubicación] [nvarchar](255) NULL,
	[Númerodecables] [int] NULL,
	[Númerodefases] [int] NULL,
	[Suministrode] [nvarchar](255) NULL,
	[Totaldecorrienteconectada] [float] NULL,
	[Totaldefactordedemanda] [float] NULL,
	[Totaldedemandadecorrienteestimada] [float] NULL,
 CONSTRAINT [PK_ElectricalEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalEquipmentTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalEquipmentTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Voltaje] [nvarchar](255) NULL,
	[Vataje] [nvarchar](255) NULL,
	[Bus] [nvarchar](255) NULL,
	[Barradepuestaatierra] [int] NULL,
	[Tipodesuministro] [nvarchar](255) NULL,
	[Potenciadedisyuntorprincipal] [float] NULL,
	[Busneutro] [int] NULL,
	[Potencianeutra] [float] NULL,
	[Terminalesdesubalimentación] [int] NULL,
 CONSTRAINT [PK_ElectricalEquipmentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalFixtures]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalFixtures](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElectricalFixtures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalFixtureTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalFixtureTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_ElectricalFixtureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalLoadClassificationParameterElement]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalLoadClassificationParameterElement](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_ElectricalLoadClassificationParameterElement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalLoadClassifications]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalLoadClassifications](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_ElectricalLoadClassifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalPhaseConfigurationEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalPhaseConfigurationEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElectricalPhaseConfigurationEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalPhaseEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalPhaseEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElectricalPhaseEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElectricalSystemEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElectricalSystemEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElectricalSystemEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElementLevel]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementLevel](
	[ElementId] [int] NOT NULL,
	[ElementName] [nvarchar](255) NULL,
	[LevelId] [int] NULL,
	[LevelName] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElementLevel] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ElementPhase]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementPhase](
	[ElementId] [int] NOT NULL,
	[ElementName] [nvarchar](255) NULL,
	[PhaseCreatedId] [int] NULL,
	[PhaseName] [nvarchar](255) NULL,
 CONSTRAINT [PK_ElementPhase] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FabricLocationEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabricLocationEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_FabricLocationEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fascias]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fascias](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Fascias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FasciaTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FasciaTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Perfil] [int] NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_FasciaTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FireAlarmDevices]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FireAlarmDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_FireAlarmDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FireAlarmDeviceTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FireAlarmDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FireAlarmDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlexDucts]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlexDucts](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Bloqueodetamaño] [int] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetrohidráulico] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Diámetroequivalente] [float] NULL,
	[Tramo] [int] NULL,
	[Coeficientedepérdida] [float] NULL,
	[Presióndevelocidad] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Velocidad] [float] NULL,
	[Diámetro] [float] NULL,
	[Altura] [float] NULL,
	[Anchura] [float] NULL,
	[Flujo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Tamañolibre] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Grosordeaislamientointerior] [float] NULL,
	[Tipodeaislamientointerior] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_FlexDucts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlexDuctTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlexDuctTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FlexDuctTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlexPipes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlexPipes](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Unidadesdeaparatos] [float] NULL,
	[Diámetroexterior] [float] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetro] [float] NULL,
	[Flujo] [float] NULL,
	[Diámetrointerno] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Asperezarelativa] [float] NULL,
	[Estadodeflujo] [int] NULL,
	[Factordefricción] [float] NULL,
	[Velocidad] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Tramo] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
 CONSTRAINT [PK_FlexPipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlexPipeTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlexPipeTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FlexPipeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Floors]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floors](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Estructura] [int] NULL,
	[Perímetro] [float] NULL,
	[Desfasedealturadesdenivel] [float] NULL,
	[Analizarcomo] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[Descuento a Capitel] [float] NULL,
	[Factor de Losa] [float] NULL,
	[Sector op02] [nvarchar](255) NULL,
	[H/V] [nvarchar](255) NULL,
	[Secuencia] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Lote] [nvarchar](255) NULL,
	[Fecha Incio] [nvarchar](255) NULL,
	[HV] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Partida] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Ejecutado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
 CONSTRAINT [PK_Floors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FloorTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FloorTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fluids]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fluids](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Fluids] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FluidTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FluidTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FluidTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furniture](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FurnitureSystems]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureSystems](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_FurnitureSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FurnitureSystemTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureSystemTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FurnitureSystemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FurnitureTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_FurnitureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenericModelOnRoof]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericModelOnRoof](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_GenericModelOnRoof] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenericModelOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericModelOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_GenericModelOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenericModels]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericModels](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[IfcTag] [nvarchar](255) NULL,
	[Width(BaseQuantities)] [float] NULL,
	[IfcPropertySetList] [nvarchar](255) NULL,
	[IfcSpatialContainer] [nvarchar](255) NULL,
	[IfcPredefinedType] [nvarchar](255) NULL,
	[IfcAssemblyPlace] [nvarchar](255) NULL,
	[Assembly/Cast unit weight(Tekla Assembly)] [nvarchar](255) NULL,
	[Assembly/Cast unit bottom elevation(Tekla Assembly)] [nvarchar](255) NULL,
	[Assembly/Cast unit top elevation(Tekla Assembly)] [nvarchar](255) NULL,
	[Assembly/Cast unit position code(Tekla Assembly)] [nvarchar](255) NULL,
	[Assembly/Cast unit Mark(Tekla Assembly)] [nvarchar](255) NULL,
	[PLANS_STATUS(WorkflowAssembly)] [nvarchar](255) NULL,
	[Cast unit type(Tekla Assembly)] [nvarchar](255) NULL,
	[Cast unit rebar weight(Tekla Assembly)] [nvarchar](255) NULL,
 CONSTRAINT [PK_GenericModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GenericModelTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenericModelTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_GenericModelTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Grids]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grids](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Cajadereferencia] [int] NULL,
 CONSTRAINT [PK_Grids] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GridTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridTypes](
	[Id] [int] NOT NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Símbolo] [int] NULL,
	[Segmentocentral] [int] NULL,
	[Patróndesegmentocentral] [int] NULL,
	[Colordesegmentocentral] [int] NULL,
	[Grosordesegmentocentral] [int] NULL,
	[Longituddesegmentosdeextremo] [float] NULL,
	[Patróndesegmentodeextremo] [int] NULL,
	[Colordesegmentodeextremo] [int] NULL,
	[Grosordesegmentodeextremo] [int] NULL,
	[Extremo1Símbolosdevistadeplano(pordefecto)] [int] NULL,
	[Extremo2Símbolosdevistadeplano(pordefecto)] [int] NULL,
	[Símbolosdevistanodeplano(pordefecto)] [int] NULL,
 CONSTRAINT [PK_GridTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gutters]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gutters](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Gutters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GutterTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GutterTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Perfil] [int] NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_GutterTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HVACLoadSchedules]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HVACLoadSchedules](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_HVACLoadSchedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HVACZones]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HVACZones](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Áreacalculadaporcargaderefrigeración] [float] NULL,
	[Áreacalculadaporcargadecalefacción] [float] NULL,
	[UsarRenovacionesdeaireporhora] [int] NULL,
	[Usaraireexteriorporárea] [int] NULL,
	[Usaraireexteriorporpersona] [int] NULL,
	[Posicióndeajustededeshumidificación] [int] NULL,
	[Usarposicióndeajustedehumidificación] [int] NULL,
	[Áreabruta] [float] NULL,
	[Volumenbruto] [float] NULL,
	[IDdefase] [int] NULL,
	[Suministrodeflujodeairecalculadoporárea] [float] NULL,
	[Cargaderefrigeracióncalculadaporárea] [float] NULL,
	[Cargadecalefaccióncalculadaporárea] [float] NULL,
	[Nivel] [int] NULL,
	[Tasadeaireexterior/Renovacionesdeaireporhora] [float] NULL,
	[Aireexteriorporárea] [float] NULL,
	[Aireexteriorporpersona] [float] NULL,
	[Posicióndeajustedehumidificación] [float] NULL,
	[Temperaturadeairederefrigeración] [float] NULL,
	[Temperaturadeairedecalefacción] [float] NULL,
	[Posicióndeajustederefrigeración] [float] NULL,
	[Posicióndeajustedecalefacción] [float] NULL,
	[Suministrodeflujodeairecalculado] [float] NULL,
	[Cargaderefrigeracióncalculada] [float] NULL,
	[Cargadecalefaccióncalculada] [float] NULL,
	[Tipodeservicio] [int] NULL,
	[Volumenocupado] [float] NULL,
	[Perímetro] [float] NULL,
	[Áreaocupada] [float] NULL,
	[Derivacióndeserpentín] [float] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
 CONSTRAINT [PK_HVACZones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InstanceUsageEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstanceUsageEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_InstanceUsageEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalAreaLoads]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalAreaLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Área] [float] NULL,
	[Fz3] [float] NULL,
	[Fy3] [float] NULL,
	[Fx3] [float] NULL,
	[Fz2] [float] NULL,
	[Fy2] [float] NULL,
	[Fx2] [float] NULL,
	[Fz1] [float] NULL,
	[Fy1] [float] NULL,
	[Fx1] [float] NULL,
	[Reacción] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_InternalAreaLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalLineLoads]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalLineLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Mz2] [float] NULL,
	[My2] [float] NULL,
	[Mx2] [float] NULL,
	[Mz1] [float] NULL,
	[My1] [float] NULL,
	[Mx1] [float] NULL,
	[Fz2] [float] NULL,
	[Fy2] [float] NULL,
	[Fx2] [float] NULL,
	[Fz1] [float] NULL,
	[Fy1] [float] NULL,
	[Fx1] [float] NULL,
	[Reacción] [int] NULL,
	[Cargauniforme] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_InternalLineLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalPointLoads]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalPointLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Mz] [float] NULL,
	[My] [float] NULL,
	[Mx] [float] NULL,
	[Fz] [float] NULL,
	[Fy] [float] NULL,
	[Fx] [float] NULL,
	[Reacción] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_InternalPointLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Levels]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Alzado] [float] NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[IfcPropertySetList] [nvarchar](255) NULL,
	[IfcElevation] [float] NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LevelTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LevelTypes](
	[Id] [int] NOT NULL,
	[Level_Function] [nvarchar](255) NULL,
 CONSTRAINT [PK_LevelTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingDevices]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[IDdeinterruptor] [nvarchar](255) NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_LightingDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingDeviceTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_LightingDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingFixtureOnCeiling]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingFixtureOnCeiling](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_LightingFixtureOnCeiling] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingFixtureOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingFixtureOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_LightingFixtureOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingFixtures]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingFixtures](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[IDdeinterruptor] [nvarchar](255) NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Coeficientedeutilización] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_LightingFixtures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LightingFixtureTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightingFixtureTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Longituddesímbolodeorigendeluz] [float] NULL,
	[Tamañodesímbolodeorigendeluz] [float] NULL,
	[Diámetrodecírculodeemisión] [float] NULL,
	[Longitudderectángulodeemisión] [float] NULL,
	[Anchurarectángulodeemisión] [float] NULL,
	[Longituddelíneadeemisión] [float] NULL,
	[Formavisibleenrenderización] [int] NULL,
	[Cambiodetemperaturadecolordeluzatenuada] [int] NULL,
	[Depreciacióndelámparaporsuciedad] [float] NULL,
	[Depreciacióndelumendelámpara] [float] NULL,
	[Pérdidadedepreciacióndesuperficie] [float] NULL,
	[Pérdidadeinclinacióndelámpara] [float] NULL,
	[Pérdidadevoltaje] [float] NULL,
	[Pérdidadetemperatura] [float] NULL,
	[Temperaturadecolorinicial] [float] NULL,
	[Iluminancia] [float] NULL,
	[Intensidadluminosa] [float] NULL,
	[Eficacia] [float] NULL,
	[Vataje] [float] NULL,
	[Archivoderedfotométrica] [nvarchar](255) NULL,
	[Cargaaparente] [float] NULL,
	[Pérdidadebalasto] [float] NULL,
	[Factordepérdidadeluminosidadtotal] [float] NULL,
	[Ángulodecampodefoco] [float] NULL,
	[Ángulodeenfoque] [float] NULL,
	[Ángulodeinclinación] [float] NULL,
	[Flujoluminoso] [float] NULL,
	[Lámpara] [nvarchar](255) NULL,
	[Comentariosdevataje] [nvarchar](255) NULL,
 CONSTRAINT [PK_LightingFixtureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LineLoadOnBeam]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineLoadOnBeam](
	[LineLoadId] [int] NOT NULL,
	[BeamId] [int] NULL,
 CONSTRAINT [PK_LineLoadOnBeam] PRIMARY KEY CLUSTERED 
(
	[LineLoadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LineLoads]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Mz2] [float] NULL,
	[My2] [float] NULL,
	[Mx2] [float] NULL,
	[Mz1] [float] NULL,
	[My1] [float] NULL,
	[Mx1] [float] NULL,
	[Fz2] [float] NULL,
	[Fy2] [float] NULL,
	[Fx2] [float] NULL,
	[Fz1] [float] NULL,
	[Fy1] [float] NULL,
	[Fx1] [float] NULL,
	[Reacción] [int] NULL,
	[Cargauniforme] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_LineLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoadClassificationTypeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoadClassificationTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoadClassificationTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mass]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mass](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenbruto] [float] NULL,
	[Áreadesuperficiebruta] [float] NULL,
	[Áreadesuelobruta] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivelbase] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_Mass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassExteriorWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassExteriorWall](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Valores] [int] NULL,
	[Alturadeantepechodedestino] [float] NULL,
	[Profundidaddesombreado] [float] NULL,
	[Lacristaleraestásombreada] [int] NULL,
	[Porcentajedecristaleradedestino] [float] NULL,
	[Subterráneo] [int] NULL,
	[Áreademurosexterioresdemasa] [float] NULL,
	[Subcategoría] [int] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassExteriorWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassFloor]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassFloor](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Losa] [int] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Descripción] [nvarchar](255) NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
	[Uso] [nvarchar](255) NULL,
	[Nivel] [nvarchar](255) NULL,
	[Volumendesuelo] [float] NULL,
	[Áreadesuperficieexterior] [float] NULL,
	[Áreacomúndelpiso] [float] NULL,
	[Perímetrodesuelo] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassFloor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassGlazing]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassGlazing](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Áreadeventanasdemasa] [float] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassGlazing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassInteriorWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassInteriorWall](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Áreademurosinterioresdemasa] [float] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassInteriorWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassOpening]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassOpening](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Áreadehuecosdemasa] [float] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassOpening] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassRoof]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassRoof](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Valores] [int] NULL,
	[Anchurayprofundidaddeclaraboya] [float] NULL,
	[Porcentajedeclaraboyasdedestino] [float] NULL,
	[Subterráneo] [int] NULL,
	[Áreadecubiertademasa] [float] NULL,
	[Subcategoría] [int] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassRoof] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassSkylight]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassSkylight](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Áreadeobjetodemasaparaclaraboya] [float] NULL,
	[Tiposconceptuales] [int] NULL,
	[Aparienciagráfica] [int] NULL,
	[Masa:Comentarios] [nvarchar](255) NULL,
	[Masa:Comentariosdetipo] [nvarchar](255) NULL,
	[Masa:Familiaytipo] [nvarchar](255) NULL,
	[Masa:Familia] [nvarchar](255) NULL,
	[Masa:Tipo] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_MassSkylight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MassTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MassTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_MassTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MaterialQuantities]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialQuantities](
	[ElementId] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[AsPaint] [int] NOT NULL,
	[Area] [float] NULL,
	[Volume] [float] NULL,
 CONSTRAINT [PK_MaterialQuantities] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC,
	[MaterialId] ASC,
	[AsPaint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Materials]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Cimentación] [nvarchar](255) NULL,
	[Especie] [nvarchar](255) NULL,
	[Coeficientededilatacióntérmica] [float] NULL,
	[Flexión] [float] NULL,
	[Módulodeelasticidadtransversal] [float] NULL,
	[CoeficientedePoisson] [float] NULL,
	[Tracciónperpendicularalaveta] [float] NULL,
	[Cortanteparaleloalaveta] [float] NULL,
	[Compresiónperpendicularalaveta] [float] NULL,
	[Compresiónparalelaalaveta] [float] NULL,
	[MódulodeYoung] [float] NULL,
	[Tipodematerial] [int] NULL,
	[Ligero] [int] NULL,
	[Comportamiento] [int] NULL,
	[Fuerzadecálculoderesistencia] [float] NULL,
	[Factordereducciónparacorte] [float] NULL,
	[Resistenciaatracciónmínima] [float] NULL,
	[Límitedeelasticidadmínima] [float] NULL,
	[Modificacióndeesfuerzocortante] [float] NULL,
	[Límitedeelasticidadderefuerzocortante] [float] NULL,
	[Refuerzoflector] [float] NULL,
	[Resistenciaacompresión] [float] NULL,
	[Coeficientedeamortiguación] [float] NULL,
	[CoeficienteXdedilatacióntérmica] [float] NULL,
	[CoeficienteYdedilatacióntérmica] [float] NULL,
	[CoeficienteZdedilatacióntérmica] [float] NULL,
	[Pesounitario] [float] NULL,
	[MódulodeelasticidadtransversalX] [float] NULL,
	[MódulodeelasticidadtransversalY] [float] NULL,
	[MódulodeelasticidadtransversalZ] [float] NULL,
	[CoeficienteXdePoisson] [float] NULL,
	[CoeficienteYdePoisson] [float] NULL,
	[CoeficienteZdePoisson] [float] NULL,
	[MódulodeYoungX] [float] NULL,
	[MódulodeYoungY] [float] NULL,
	[MódulodeYoungZ] [float] NULL,
	[Brillo] [int] NULL,
	[Suavidad] [int] NULL,
	[Transparencia] [int] NULL,
	[Color] [int] NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MechanicalEquipment]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MechanicalEquipment](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Panel] [nvarchar](255) NULL,
 CONSTRAINT [PK_MechanicalEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MechanicalEquipmentOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MechanicalEquipmentOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_MechanicalEquipmentOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MechanicalEquipmentTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MechanicalEquipmentTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_MechanicalEquipmentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NeutralModeEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeutralModeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_NeutralModeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NurseCallDevices]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseCallDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_NurseCallDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NurseCallDeviceTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseCallDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_NurseCallDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OmniClassNumbers]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OmniClassNumbers](
	[NúmeroOmniClass] [nvarchar](255) NOT NULL,
	[TítuloOmniClass] [nvarchar](255) NULL,
 CONSTRAINT [PK_OmniClassNumbers] PRIMARY KEY CLUSTERED 
(
	[NúmeroOmniClass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpeningOnFloor]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningOnFloor](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_OpeningOnFloor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OpeningOnWall]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_OpeningOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Openings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Openings](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[LevelId] [int] NULL,
	[HostId] [int] NULL,
 CONSTRAINT [PK_Openings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PanelScheduleTemplatesBranchPanel]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PanelScheduleTemplatesBranchPanel](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_PanelScheduleTemplatesBranchPanel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PanelScheduleTemplatesDataPanel]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PanelScheduleTemplatesDataPanel](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_PanelScheduleTemplatesDataPanel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PanelScheduleTemplatesSwitchboard]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PanelScheduleTemplatesSwitchboard](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_PanelScheduleTemplatesSwitchboard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parking]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parking](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Parking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParkingTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParkingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_ParkingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phases]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phases](
	[Id] [int] NOT NULL,
	[Númerodesecuencia] [int] NULL,
	[Nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_Phases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeAccessories]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeAccessories](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeAccessories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeAccessoryTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeAccessoryTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PipeAccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeConnections]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeConnections](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeConnections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeConnectionTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeConnectionTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PipeConnectionTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeFittings]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeFittings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeFittings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeFittingTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeFittingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PipeFittingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeFlowStateEnums]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeFlowStateEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeFlowStateEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeInsulations]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeInsulations](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeInsulations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeInsulationTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeInsulationTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PipeInsulationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeMaterials]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeMaterials](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeMaterialTypes]    Script Date: 2/02/2020 12:38:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeMaterialTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Aspereza] [float] NULL,
 CONSTRAINT [PK_PipeMaterialTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipePlaceholders]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipePlaceholders](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Unidadesdeaparatos] [float] NULL,
	[Diámetroexterior] [float] NULL,
	[Elevacióninvertida] [float] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetro] [float] NULL,
	[Flujo] [float] NULL,
	[Diámetrointerno] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Asperezarelativa] [float] NULL,
	[Estadodeflujo] [int] NULL,
	[Factordefricción] [float] NULL,
	[Velocidad] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Tramo] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipePlaceholders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pipes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pipes](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Tipodesistema] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Grosordeaislamiento] [float] NULL,
	[Tipodeaislamiento] [nvarchar](255) NULL,
	[Tamañototal] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Unidadesdeaparatos] [float] NULL,
	[Diámetroexterior] [float] NULL,
	[Elevacióninvertida] [float] NULL,
	[Flujoadicional] [float] NULL,
	[Diámetro] [float] NULL,
	[Flujo] [float] NULL,
	[Diámetrointerno] [float] NULL,
	[NúmerodeReynolds] [float] NULL,
	[Asperezarelativa] [float] NULL,
	[Estadodeflujo] [int] NULL,
	[Factordefricción] [float] NULL,
	[Velocidad] [float] NULL,
	[Fricción] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Tamaño] [nvarchar](255) NULL,
	[Tramo] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Pipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeSchedules]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeSchedules](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeSchedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeScheduleTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeScheduleTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PipeScheduleTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeSegments]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeSegments](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Descripcióndesegmento] [nvarchar](255) NULL,
	[Tipodeconexión] [nvarchar](255) NULL,
	[Aspereza] [float] NULL,
	[Serie/Tipo] [int] NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_PipeSegments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeSystemTypeEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeSystemTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipeSystemTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipeTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipeTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Aspereza] [float] NULL,
	[Material] [int] NULL,
	[Tipodeconexión] [int] NULL,
	[Serie/Tipo] [int] NULL,
 CONSTRAINT [PK_PipeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipingSystems]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipingSystems](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Númerodeelementos] [int] NULL,
	[Equiposdesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Unidadesdeaparatos] [float] NULL,
	[Volumen] [float] NULL,
	[Flujo] [float] NULL,
	[IDdetipo] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipingSystems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PipingSystemTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PipingSystemTypes](
	[Id] [int] NOT NULL,
	[Abreviatura] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[Densidaddefluido] [float] NULL,
	[Temperaturadefluido] [float] NULL,
	[Tipodefluido] [int] NULL,
	[Viscosidaddinámicadefluido] [float] NULL,
	[Símbolodebajadadelíneaúnica] [int] NULL,
	[Símbolodesubidadelíneaúnica] [int] NULL,
	[Símbolodetehaciaabajodelíneaúnica] [int] NULL,
	[Símbolodetehaciaarribadelíneaúnica] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Símbolodebajadadedoslíneas] [int] NULL,
	[Símbolodesubidadedoslíneas] [int] NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
 CONSTRAINT [PK_PipingSystemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planting]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planting](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Planting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlantingTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PlantingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlumbingFixtureOnWall]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlumbingFixtureOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_PlumbingFixtureOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlumbingFixtures]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlumbingFixtures](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Sifón] [nvarchar](255) NULL,
	[Desagüe] [nvarchar](255) NULL,
	[Tuberíadesuministro] [nvarchar](255) NULL,
	[Unióndesuministro] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PlumbingFixtures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlumbingFixtureTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlumbingFixtureTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[WFU] [float] NULL,
	[HWFU] [float] NULL,
	[CWFU] [float] NULL,
	[Conexióndeventilación] [int] NULL,
	[Conexiónderesiduos] [int] NULL,
	[ConexiónAF] [int] NULL,
	[ConexiónAC] [int] NULL,
 CONSTRAINT [PK_PlumbingFixtureTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PointLoads]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointLoads](
	[Id] [int] NOT NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripción] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Naturaleza] [int] NULL,
	[Todaslascargasno0] [nvarchar](255) NULL,
	[Mz] [float] NULL,
	[My] [float] NULL,
	[Mx] [float] NULL,
	[Fz] [float] NULL,
	[Fy] [float] NULL,
	[Fx] [float] NULL,
	[Reacción] [int] NULL,
	[Casodecarga] [int] NULL,
 CONSTRAINT [PK_PointLoads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PowerFactorStateTypeEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PowerFactorStateTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_PowerFactorStateTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProjectInformation]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectInformation](
	[Id] [int] NOT NULL,
	[Fechadeemisióndeproyecto] [nvarchar](255) NULL,
	[Estadodeproyecto] [nvarchar](255) NULL,
	[Nombredecliente] [nvarchar](255) NULL,
	[Direccióndeproyecto] [nvarchar](255) NULL,
	[Nombredeproyecto] [nvarchar](255) NULL,
	[Númerodeproyecto] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[IfcPropertySetList] [nvarchar](255) NULL,
 CONSTRAINT [PK_ProjectInformation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropertyLines]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyLines](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_PropertyLines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PropertyLineTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyLineTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_PropertyLineTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Railings]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Railings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Desfasedebase] [float] NULL,
	[Nivelbase] [int] NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Railings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RailingTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RailingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_RailingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ramps]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ramps](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivelsuperiordeedificiomultiplanta] [int] NULL,
	[Desfasesuperior] [float] NULL,
	[Desfasedebase] [float] NULL,
	[Anchura] [float] NULL,
	[Nivelsuperior] [int] NULL,
	[Nivelbase] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ramps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RampTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RampTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_RampTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarLayoutEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarLayoutEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarLayoutEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarOnColumn]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarOnColumn](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarOnColumn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarOnFloor]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarOnFloor](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarOnFloor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarOnFoundation]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarOnFoundation](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarOnFoundation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarOnFraming]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarOnFraming](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarOnFraming] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarOnWall]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarOnWall](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostId] [int] NULL,
	[HostName] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarOnWall] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RebarStyleEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebarStyleEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_RebarStyleEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RevitDBLinkInfo]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevitDBLinkInfo](
	[Name] [nvarchar](255) NOT NULL,
	[Value] [nvarchar](255) NULL,
 CONSTRAINT [PK_RevitDBLinkInfo] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roofs]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roofs](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Aleroovigadecelosía] [int] NULL,
	[Profundidaddeimposta] [float] NULL,
	[Cortedealero] [int] NULL,
	[Nivelbase] [int] NULL,
	[Desfasedellímite] [float] NULL,
	[Niveldellímite] [int] NULL,
	[Desfasebasedesdenivel] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_Roofs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoofTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoofTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_RoofTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomAssociations]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomAssociations](
	[Id] [int] NOT NULL,
	[PhaseId] [int] NOT NULL,
	[DesignOptionId] [int] NOT NULL,
	[RoomId] [int] NULL,
 CONSTRAINT [PK_RoomAssociations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[PhaseId] ASC,
	[DesignOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomFromToAssociations]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomFromToAssociations](
	[Id] [int] NOT NULL,
	[PhaseId] [int] NOT NULL,
	[DesignOptionId] [int] NOT NULL,
	[FromRoom] [int] NULL,
	[ToRoom] [int] NULL,
 CONSTRAINT [PK_RoomFromToAssociations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[PhaseId] ASC,
	[DesignOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[IDdefase] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Volumen] [float] NULL,
	[Perímetro] [float] NULL,
	[Nivel] [int] NULL,
	[Ocupación] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Acabadodelabase] [nvarchar](255) NULL,
	[Acabadodeltecho] [nvarchar](255) NULL,
	[Acabadodemuro] [nvarchar](255) NULL,
	[Acabadodelsuelo] [nvarchar](255) NULL,
	[Área] [float] NULL,
	[Número] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Alturasinlímites] [float] NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomTags]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTags](
	[Id] [int] NOT NULL,
	[RoomTagType] [nvarchar](255) NULL,
	[RoomId] [int] NULL,
	[ViewId] [int] NULL,
 CONSTRAINT [PK_RoomTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SecurityDevices]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Niveldetabladeplanificación] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_SecurityDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SecurityDeviceTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_SecurityDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceTypeEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_ServiceTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sheets]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sheets](
	[Id] [int] NOT NULL,
	[Montaje:Notaclave] [nvarchar](255) NULL,
	[Montaje:Descripcióndemontaje] [nvarchar](255) NULL,
	[Montaje:Costo] [float] NULL,
	[Montaje:Marcadetipo] [nvarchar](255) NULL,
	[Montaje:Códigodemontaje] [nvarchar](255) NULL,
	[Montaje:Descripción] [nvarchar](255) NULL,
	[Montaje:URL] [nvarchar](255) NULL,
	[Montaje:Comentariosdetipo] [nvarchar](255) NULL,
	[Montaje:Fabricante] [nvarchar](255) NULL,
	[Montaje:Modelo] [nvarchar](255) NULL,
	[Montaje:Nombre] [nvarchar](255) NULL,
	[Rejillaguía] [int] NULL,
	[Revisiónactualemitida] [int] NULL,
	[Revisiónactualemitidapor] [nvarchar](255) NULL,
	[Revisiónactualemitidapara] [nvarchar](255) NULL,
	[Fechaderevisiónactual] [nvarchar](255) NULL,
	[Descripciónderevisiónactual] [nvarchar](255) NULL,
	[Revisiónactual] [nvarchar](255) NULL,
	[Rutadearchivo] [nvarchar](255) NULL,
	[Aprobadopor] [nvarchar](255) NULL,
	[Diseñadopor] [nvarchar](255) NULL,
	[Apareceenlalistadeplanos] [int] NULL,
	[Comprobadopor] [nvarchar](255) NULL,
	[Dibujadopor] [nvarchar](255) NULL,
	[Escala] [nvarchar](255) NULL,
	[Númerodeplano] [nvarchar](255) NULL,
	[Nombredeplano] [nvarchar](255) NULL,
	[Fechadeemisióndelplano] [nvarchar](255) NULL,
	[Dependencia] [nvarchar](255) NULL,
	[Detalledereferencia] [nvarchar](255) NULL,
	[Planodereferencia] [nvarchar](255) NULL,
	[Delimitaciónizquierdaactiva] [int] NULL,
	[COSAPI - Clasificación de Vistas] [nvarchar](255) NULL,
	[FECHA DE DISEÑO] [nvarchar](255) NULL,
	[Revision] [nvarchar](255) NULL,
	[APROBADO POR] [nvarchar](255) NULL,
	[DIBUJADO POR] [nvarchar](255) NULL,
	[FECHA DE DIBUJADO] [nvarchar](255) NULL,
	[REVISADO POR] [nvarchar](255) NULL,
	[FECHA DE REVISADO] [nvarchar](255) NULL,
	[FECHA DE APROBADO] [nvarchar](255) NULL,
	[GERENTE DE PROYECTO] [nvarchar](255) NULL,
	[FECHA DE APRO.GERENTE] [nvarchar](255) NULL,
	[DISEÑADO POR] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sheets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Site]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
 CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_SiteTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SlabEdges]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlabEdges](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumen] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_SlabEdges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SlabEdgeTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlabEdgeTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Perfil] [int] NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_SlabEdgeTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpaceAssociations]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpaceAssociations](
	[Id] [int] NOT NULL,
	[PhaseId] [int] NOT NULL,
	[DesignOptionId] [int] NOT NULL,
	[SpaceId] [int] NULL,
 CONSTRAINT [PK_SpaceAssociations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[PhaseId] ASC,
	[DesignOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Spaces]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spaces](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[Proporcióndecavidaddehabitación] [float] NULL,
	[Iluminaciónmediaestimada] [float] NULL,
	[Reflectanciadesuelo] [float] NULL,
	[Reflectanciademuro] [float] NULL,
	[Reflectanciadetecho] [float] NULL,
	[Planodetrabajodecálculodeiluminación] [float] NULL,
	[Plénum] [int] NULL,
	[Ocupable] [int] NULL,
	[Númerodehabitación] [nvarchar](255) NULL,
	[Nombredehabitación] [nvarchar](255) NULL,
	[Suministrodeflujodeairecalculadoporárea] [float] NULL,
	[Cargaderefrigeracióncalculadaporárea] [float] NULL,
	[Cargadecalefaccióncalculadaporárea] [float] NULL,
	[Cargadeiluminaciónrealporárea] [float] NULL,
	[Cargadepotenciarealporárea] [float] NULL,
	[Valoresdecargadecalor] [int] NULL,
	[Cargaderefrigeracióndediseño] [float] NULL,
	[Cargaderefrigeracióncalculada] [float] NULL,
	[Cargadecalefaccióndediseño] [float] NULL,
	[Cargadecalefaccióncalculada] [float] NULL,
	[Tipodeconstrucción] [int] NULL,
	[Incrementodecalorsensibleporpersona] [float] NULL,
	[Cargadeiluminaciónespecificada] [float] NULL,
	[Cargadepotenciaespecificada] [float] NULL,
	[Cargadeiluminaciónreal] [float] NULL,
	[Cargadepotenciareal] [float] NULL,
	[Otrascargasdediseñoporárea] [float] NULL,
	[Cargadeclimatizacióndediseñoporárea] [float] NULL,
	[Cargadeiluminaciónespecificadaporárea] [float] NULL,
	[Cargadepotenciaespecificadaporárea] [float] NULL,
	[Salidadeflujodeaireviciadoreal] [float] NULL,
	[Retornodeflujodeairereal] [float] NULL,
	[Suministrodeflujodeairereal] [float] NULL,
	[Incrementodecalorlatenteporpersona] [float] NULL,
	[Incrementodecalortotalporpersona] [float] NULL,
	[Suministrodeflujodeairecalculado] [float] NULL,
	[Flujodeaireviciadoespecificado] [float] NULL,
	[Retornodeflujodeaireespecificado] [float] NULL,
	[Suministrodeflujodeaireespecificado] [float] NULL,
	[Áreaporpersona] [float] NULL,
	[Númerodepersonas] [float] NULL,
	[Tipodeespacio] [int] NULL,
	[Tipodeacondicionamiento] [int] NULL,
	[IDdefase] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Volumen] [float] NULL,
	[Perímetro] [float] NULL,
	[Nivel] [int] NULL,
	[Área] [float] NULL,
	[Número] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Alturasinlímites] [float] NULL,
 CONSTRAINT [PK_Spaces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpaceTypeEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpaceTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_SpaceTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpaceTypeSettings]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpaceTypeSettings](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
 CONSTRAINT [PK_SpaceTypeSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialtyEquipment]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialtyEquipment](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_SpecialtyEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialtyEquipmentTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialtyEquipmentTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_SpecialtyEquipmentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sprinklers]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sprinklers](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Clasificacióndesistema] [nvarchar](255) NULL,
	[Nombredesistema] [nvarchar](255) NULL,
	[Flujo] [float] NULL,
	[Pérdidadecarga] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sprinklers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SprinklerTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SprinklerTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Tamañodeorificio] [float] NULL,
	[Estimacióndetemperatura] [float] NULL,
	[FactorK] [float] NULL,
	[Clasedepresión] [int] NULL,
	[Orificio] [int] NULL,
	[Cobertura] [int] NULL,
	[Respuesta] [int] NULL,
	[Diámetro] [float] NULL,
 CONSTRAINT [PK_SprinklerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stairs]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stairs](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Númerodecontrahuellasreal] [int] NULL,
	[Nivelsuperiordeedificiomultiplanta] [int] NULL,
	[Desfasesuperior] [float] NULL,
	[Desfasedebase] [float] NULL,
	[Alturadecontrahuellareal] [float] NULL,
	[Anchura] [float] NULL,
	[Nivelsuperior] [int] NULL,
	[Nivelbase] [int] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[Sector op02] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Partida] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
 CONSTRAINT [PK_Stairs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StairTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StairTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Grosordehuella] [float] NULL,
 CONSTRAINT [PK_StairTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralColumns]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralColumns](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Volumen] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Desfasesuperior] [float] NULL,
	[Desfasedebase] [float] NULL,
	[Nivelsuperior] [int] NULL,
	[Nivelbase] [int] NULL,
	[Analizarcomo] [int] NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[IfcMaterial] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[IfcElementAssembly] [nvarchar](255) NULL,
	[ObjectTypeOverride] [nvarchar](255) NULL,
	[IfcPresentationLayer] [nvarchar](255) NULL,
	[IfcTag] [nvarchar](255) NULL,
	[Finish(Tekla Common)] [nvarchar](255) NULL,
	[Bottom elevation(Tekla Common)] [nvarchar](255) NULL,
	[Top elevation(Tekla Common)] [nvarchar](255) NULL,
	[Preliminary mark(Tekla Common)] [nvarchar](255) NULL,
	[Phase(Tekla Common)] [int] NULL,
	[Class(Tekla Common)] [nvarchar](255) NULL,
	[Weight(Tekla Quantity)] [nvarchar](255) NULL,
	[Volume(Tekla Quantity)] [float] NULL,
	[Gross footprint area(Tekla Quantity)] [float] NULL,
	[Area per tons(Tekla Quantity)] [float] NULL,
	[Net surface area(Tekla Quantity)] [float] NULL,
	[Height(Tekla Quantity)] [float] NULL,
	[Width(Tekla Quantity)] [float] NULL,
	[Length(Tekla Quantity)] [float] NULL,
	[NetVolume(BaseQuantities)] [float] NULL,
	[IfcPropertySetList] [nvarchar](255) NULL,
	[Length(BaseQuantities)] [float] NULL,
	[OuterSurfaceArea(BaseQuantities)] [float] NULL,
	[NetWeight(BaseQuantities)] [nvarchar](255) NULL,
	[LoadBearing(Pset_ColumnCommon)] [int] NULL,
	[Reference(Pset_ColumnCommon)] [nvarchar](255) NULL,
	[Sector op02] [nvarchar](255) NULL,
	[H/V] [nvarchar](255) NULL,
	[Secuencia] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Lote] [nvarchar](255) NULL,
	[Fecha Incio] [nvarchar](255) NULL,
	[HV] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Ejecutado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
	[Plataformado] [float] NULL,
 CONSTRAINT [PK_StructuralColumns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralColumnTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralColumnTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[Type IfcPropertySetList] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralColumnTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFabricReinforcement]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFabricReinforcement](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Númerodemallazo] [nvarchar](255) NULL,
	[Partición] [nvarchar](255) NULL,
	[Masadeláminacortada] [float] NULL,
	[Longitudtotaldecorte] [float] NULL,
	[Anchuratotaldecorte] [float] NULL,
	[Longituddelempalmesolapadosecundario] [float] NULL,
	[Longituddelempalmesolapadoprincipal] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Ubicación] [int] NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralFabricReinforcement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFabricReinforcementTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFabricReinforcementTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Masadeláminaporunidaddesuperficie] [float] NULL,
	[Áreaderefuerzosecundaria] [float] NULL,
	[Áreaderefuerzoprincipal] [float] NULL,
	[Masadelámina] [float] NULL,
	[Espaciadosecundario] [float] NULL,
	[Númerodealambresendirecciónsecundaria] [float] NULL,
	[Voladizofinalsecundario] [float] NULL,
	[Voladizoinicialsecundario] [float] NULL,
	[Anchura] [float] NULL,
	[Espaciadoprincipal] [float] NULL,
	[Númerodealambresendirecciónprincipal] [float] NULL,
	[Voladizofinalprincipal] [float] NULL,
	[Longitud] [float] NULL,
	[Longitudglobal] [float] NULL,
	[Tipodealambrededirecciónsecundaria] [float] NULL,
	[Tipodealambrededirecciónprincipal] [float] NULL,
	[Materialesfísicos] [nvarchar](255) NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_StructuralFabricReinforcementTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFoundations]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFoundations](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Volumen] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Elevaciónenparteinferior] [float] NULL,
	[Anchura] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[Solado] [int] NULL,
	[Mejoramiento de Terreno] [float] NULL,
	[Sector op02] [nvarchar](255) NULL,
	[H/V] [nvarchar](255) NULL,
	[Secuencia] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Lote] [nvarchar](255) NULL,
	[Fecha Incio] [nvarchar](255) NULL,
	[HV] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Partida] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Ejecutado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
	[Plataformado] [float] NULL,
 CONSTRAINT [PK_StructuralFoundations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFoundationTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFoundationTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_StructuralFoundationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFraming]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFraming](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Volumen] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nivel] [int] NULL,
	[Longituddecorte] [float] NULL,
	[Niveldereferencia] [int] NULL,
	[Usoestructural] [int] NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[IfcMaterial] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
	[ObjectTypeOverride] [nvarchar](255) NULL,
	[IfcPresentationLayer] [nvarchar](255) NULL,
	[IfcSpatialContainer] [nvarchar](255) NULL,
	[IfcTag] [nvarchar](255) NULL,
	[Bottom elevation(Tekla Common)] [nvarchar](255) NULL,
	[Top elevation(Tekla Common)] [nvarchar](255) NULL,
	[Preliminary mark(Tekla Common)] [nvarchar](255) NULL,
	[Phase(Tekla Common)] [int] NULL,
	[Class(Tekla Common)] [nvarchar](255) NULL,
	[Width(BaseQuantities)] [float] NULL,
	[NetArea(BaseQuantities)] [float] NULL,
	[GrossArea(BaseQuantities)] [float] NULL,
	[CrossSectionArea(BaseQuantities)] [float] NULL,
	[NetVolume(BaseQuantities)] [float] NULL,
	[GrossVolume(BaseQuantities)] [float] NULL,
	[IfcPropertySetList] [nvarchar](255) NULL,
	[Length(BaseQuantities)] [float] NULL,
	[OuterSurfaceArea(BaseQuantities)] [float] NULL,
	[NetWeight(BaseQuantities)] [nvarchar](255) NULL,
	[IfcElementAssembly] [nvarchar](255) NULL,
	[LoadBearing(Pset_PlateCommon)] [int] NULL,
	[Reference(Pset_PlateCommon)] [nvarchar](255) NULL,
	[Finish(Tekla Common)] [nvarchar](255) NULL,
	[Weight(Tekla Quantity)] [nvarchar](255) NULL,
	[Volume(Tekla Quantity)] [float] NULL,
	[Gross footprint area(Tekla Quantity)] [float] NULL,
	[Area per tons(Tekla Quantity)] [float] NULL,
	[Net surface area(Tekla Quantity)] [float] NULL,
	[Height(Tekla Quantity)] [float] NULL,
	[Width(Tekla Quantity)] [float] NULL,
	[Length(Tekla Quantity)] [float] NULL,
	[LoadBearing(Pset_BeamCommon)] [int] NULL,
	[Reference(Pset_BeamCommon)] [nvarchar](255) NULL,
	[LoadBearing(Pset_MemberCommon)] [int] NULL,
	[Reference(Pset_MemberCommon)] [nvarchar](255) NULL,
	[GrossSurfaceArea(BaseQuantities)] [float] NULL,
	[GrossWeight(BaseQuantities)] [nvarchar](255) NULL,
	[Sector op02] [nvarchar](255) NULL,
	[H/V] [nvarchar](255) NULL,
	[Secuencia] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Lote] [nvarchar](255) NULL,
	[Fecha Incio] [nvarchar](255) NULL,
	[HV] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Partida] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Ejecutado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
	[Plataformado] [float] NULL,
 CONSTRAINT [PK_StructuralFraming] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralFramingTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralFramingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[IfcDescription] [nvarchar](255) NULL,
	[Type IfcPropertySetList] [nvarchar](255) NULL,
	[IfcName] [nvarchar](255) NULL,
	[IfcExportAs] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralFramingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralRebar]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralRebar](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Diámetrodecurvaturaestándar] [float] NULL,
	[Marcadetabladeplanificación] [nvarchar](255) NULL,
	[Estilo] [int] NULL,
	[Longituddebarra] [float] NULL,
	[Forma] [int] NULL,
	[Espaciado] [float] NULL,
	[Cantidad] [int] NULL,
	[Regladediseño] [int] NULL,
	[Ganchoalfinal] [int] NULL,
	[Ganchoalinicio] [int] NULL,
	[Longitudtotaldebarra] [float] NULL,
	[Diámetrodebarra] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[Codigo del Elemento] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralRebar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralRebarBarTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralRebarBarTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Material] [int] NULL,
	[Diámetrodecurvaturadeganchoestándar] [float] NULL,
	[Radiomáximodecurvatura] [float] NULL,
	[Diámetrodecurvaturadeestribo/tirante] [float] NULL,
	[Diámetrodecurvaturaestándar] [float] NULL,
	[Subcategoría] [int] NULL,
	[Diámetrodebarra] [float] NULL,
 CONSTRAINT [PK_StructuralRebarBarTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralRebarHookTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralRebarHookTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Material] [int] NULL,
	[Estilo] [int] NULL,
	[Coeficientedelongituddeanclaje] [float] NULL,
	[Ángulodegancho] [float] NULL,
 CONSTRAINT [PK_StructuralRebarHookTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralRebarShapes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralRebarShapes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Material] [int] NULL,
	[Ganchoalfinal] [int] NULL,
	[Ganchoalinicio] [int] NULL,
	[Estilo] [int] NULL,
	[Orientacióndeganchoalfinal] [int] NULL,
	[Orientacióndeganchoalinicio] [int] NULL,
	[Girosdeacabadodebase] [int] NULL,
	[Girosdeacabadodepartesuperior] [int] NULL,
	[Altura] [float] NULL,
	[Inclinacióntransversal] [float] NULL,
 CONSTRAINT [PK_StructuralRebarShapes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralStiffeners]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralStiffeners](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralStiffeners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralStiffenerTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralStiffenerTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_StructuralStiffenerTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralTrusses]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralTrusses](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
 CONSTRAINT [PK_StructuralTrusses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StructuralTrussTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StructuralTrussTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_StructuralTrussTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SwitchSystem]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SwitchSystem](
	[Id] [int] NOT NULL,
	[Opcióndediseño] [int] NULL,
	[IDdeinterruptor] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
 CONSTRAINT [PK_SwitchSystem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelephoneDevices]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelephoneDevices](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Númerodecircuito] [nvarchar](255) NULL,
	[Datoseléctricos] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_TelephoneDevices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TelephoneDeviceTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TelephoneDeviceTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_TelephoneDeviceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topography]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topography](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Corte/rellenoneto] [float] NULL,
	[Áreaproyectada] [float] NULL,
	[Relleno] [float] NULL,
	[Corte] [float] NULL,
	[Áreadesuperficie] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Topography] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TopographyTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopographyTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_TopographyTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Email] [varchar](200) NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[Password] [varbinary](500) NULL,
	[Roles] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Views]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Views](
	[Id] [int] NOT NULL,
	[Familia] [nvarchar](255) NULL,
	[Familiaytipo] [nvarchar](255) NULL,
	[Filtrodefases] [int] NULL,
	[Visibilidaddepiezas] [int] NULL,
	[Niveldedetalle] [int] NULL,
	[Caminodesol] [int] NULL,
	[Mostrarnombre] [nvarchar](255) NULL,
	[Nombredeplano] [nvarchar](255) NULL,
	[Númerodeplano] [nvarchar](255) NULL,
	[Orientación] [int] NULL,
	[Nivelasociado] [nvarchar](255) NULL,
	[Disciplina] [int] NULL,
	[Visualizarmodelo] [int] NULL,
	[Escaladevista] [int] NULL,
	[Valordeescala1:] [int] NULL,
	[Títuloenplano] [nvarchar](255) NULL,
	[Nombredevista] [nvarchar](255) NULL,
	[Fase] [int] NULL,
	[COSAPI - Clasificación de Vistas] [nvarchar](255) NULL,
	[Vista - Usuario] [nvarchar](255) NULL,
 CONSTRAINT [PK_Views] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Voltages]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voltages](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Voltages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VoltageTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoltageTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Voltajereal] [float] NULL,
	[Voltajemínimo] [float] NULL,
	[Voltajemáximo] [float] NULL,
 CONSTRAINT [PK_VoltageTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Walls]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Walls](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Volumenreforzadoestimado] [float] NULL,
	[Volumen] [float] NULL,
	[Área] [float] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
	[Usoestructural] [int] NULL,
	[Desfasesuperior] [float] NULL,
	[Desfasedebase] [float] NULL,
	[Restriccióndebase] [int] NULL,
	[Alturadesconectada] [float] NULL,
	[Restricciónsuperior] [int] NULL,
	[Delimitacióndehabitación] [int] NULL,
	[Fase Constructiva] [nvarchar](255) NULL,
	[Nivel del Elemento] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Elemento] [nvarchar](255) NULL,
	[Descripción de Partida] [nvarchar](255) NULL,
	[Tipo de Altura] [nvarchar](255) NULL,
	[Sector op02] [nvarchar](255) NULL,
	[H/V] [nvarchar](255) NULL,
	[Secuencia] [nvarchar](255) NULL,
	[Frente] [nvarchar](255) NULL,
	[Recinto] [nvarchar](255) NULL,
	[Lote] [nvarchar](255) NULL,
	[Fecha Incio] [nvarchar](255) NULL,
	[HV] [nvarchar](255) NULL,
	[%liberación] [nvarchar](255) NULL,
	[Ecompresion28] [nvarchar](255) NULL,
	[Ecompresion7] [nvarchar](255) NULL,
	[f´c] [nvarchar](255) NULL,
	[fvaciado] [nvarchar](255) NULL,
	[NC] [nvarchar](255) NULL,
	[OBS] [nvarchar](255) NULL,
	[Ad01] [nvarchar](255) NULL,
	[Ad02] [nvarchar](255) NULL,
	[Ad03] [nvarchar](255) NULL,
	[Ad04] [nvarchar](255) NULL,
	[Ad05] [float] NULL,
	[Ad06] [nvarchar](255) NULL,
	[Ad07] [nvarchar](255) NULL,
	[Ad08] [nvarchar](255) NULL,
	[Ad09] [nvarchar](255) NULL,
	[Ad10] [nvarchar](255) NULL,
	[Ded01] [nvarchar](255) NULL,
	[Ded02] [nvarchar](255) NULL,
	[Ded03] [nvarchar](255) NULL,
	[Ded04] [nvarchar](255) NULL,
	[Ded05] [nvarchar](255) NULL,
	[ETACliente] [nvarchar](255) NULL,
	[MatCliente] [nvarchar](255) NULL,
	[Metrados] [nvarchar](255) NULL,
	[Partida] [nvarchar](255) NULL,
	[Subcontratista] [nvarchar](255) NULL,
	[CodAct] [nvarchar](255) NULL,
	[CodCuadrilla] [nvarchar](255) NULL,
	[CodFrente] [nvarchar](255) NULL,
	[CodLote] [nvarchar](255) NULL,
	[CodPiso] [nvarchar](255) NULL,
	[CodPrioridad] [nvarchar](255) NULL,
	[CodWBS] [nvarchar](255) NULL,
	[CtrlCambios] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Ratio 1] [nvarchar](255) NULL,
	[Ratio 2] [float] NULL,
	[Ratio 3] [nvarchar](255) NULL,
	[Responsable] [nvarchar](255) NULL,
	[Restricciones] [nvarchar](255) NULL,
	[FactProductividad] [nvarchar](255) NULL,
	[FactProductividad01] [nvarchar](255) NULL,
	[FactProductividad02] [nvarchar](255) NULL,
	[FactProductividad03] [nvarchar](255) NULL,
	[FactProductividad04] [nvarchar](255) NULL,
	[FactProductividad05] [nvarchar](255) NULL,
	[FactProductividad06] [nvarchar](255) NULL,
	[RatPpto] [nvarchar](255) NULL,
	[RatPrev] [nvarchar](255) NULL,
	[RatReal] [nvarchar](255) NULL,
	[Estado de Avance] [nvarchar](255) NULL,
	[Planificado_Concreto] [int] NULL,
	[Planificado_Acero] [int] NULL,
	[Planificado_Encofrado] [int] NULL,
	[Real_Concreto] [int] NULL,
	[Real_Acero] [int] NULL,
	[Real_Encofrado] [int] NULL,
	[Ejecutado] [int] NULL,
	[Maestro_Concreto] [int] NULL,
	[Maestro_Incio_Concreto] [int] NULL,
 CONSTRAINT [PK_Walls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WallSweeps]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallSweeps](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Longitud] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_WallSweeps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WallSweepTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallSweepTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Subcategoríademuros] [int] NULL,
	[Perfil] [int] NULL,
	[Material] [int] NULL,
 CONSTRAINT [PK_WallSweepTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WallTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Clasificaciónparaincendios] [nvarchar](255) NULL,
	[Anchura] [float] NULL,
 CONSTRAINT [PK_WallTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WallUsageEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallUsageEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_WallUsageEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Windows]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Windows](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[IDdeanfitrión] [int] NULL,
	[Nivel] [int] NULL,
	[Alturadeextremoinicial] [float] NULL,
	[Alturadeantepecho] [float] NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Windows] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WindowTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WindowTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Anchuraaproximada] [float] NULL,
	[Alturaaproximada] [float] NULL,
	[Anchura] [float] NULL,
	[Altura] [float] NULL,
	[Operación] [nvarchar](255) NULL,
	[Tipodeconstrucción] [nvarchar](255) NULL,
 CONSTRAINT [PK_WindowTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WindowWall]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WindowWall](
	[WindowId] [int] NOT NULL,
	[WindowName] [nvarchar](255) NULL,
	[WallId] [int] NULL,
	[WallName] [nvarchar](255) NULL,
 CONSTRAINT [PK_WindowWall] PRIMARY KEY CLUSTERED 
(
	[WindowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireInsulations]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireInsulations](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_WireInsulations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireInsulationTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireInsulationTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_WireInsulationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireMaterials]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireMaterials](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_WireMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireMaterialTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireMaterialTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_WireMaterialTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wires]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wires](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Descripcióndecircuito] [nvarchar](255) NULL,
	[Nombredecargadecircuito] [nvarchar](255) NULL,
	[Númerodeconductores] [int] NULL,
	[Marcas] [int] NULL,
	[Panel] [nvarchar](255) NULL,
	[Circuitos] [nvarchar](255) NULL,
	[Tipo] [int] NULL,
	[Conductorescargados] [int] NULL,
	[Conductoresneutros] [int] NULL,
	[Conductoresdetierra] [int] NULL,
	[Tamañodecable] [nvarchar](255) NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_Wires] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireTemperatureRatings]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireTemperatureRatings](
	[Id] [int] NOT NULL,
	[IDdetipo] [int] NULL,
	[Fasedecreación] [int] NULL,
	[Fasedederribo] [int] NULL,
	[Opcióndediseño] [int] NULL,
	[Comentarios] [nvarchar](255) NULL,
	[Marca] [nvarchar](255) NULL,
 CONSTRAINT [PK_WireTemperatureRatings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireTemperatureRatingTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireTemperatureRatingTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_WireTemperatureRatingTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WireTypes]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WireTypes](
	[Id] [int] NOT NULL,
	[Notaclave] [nvarchar](255) NULL,
	[Modelo] [nvarchar](255) NULL,
	[Fabricante] [nvarchar](255) NULL,
	[Comentariosdetipo] [nvarchar](255) NULL,
	[URL] [nvarchar](255) NULL,
	[Descripción] [nvarchar](255) NULL,
	[NúmeroOmniClass] [nvarchar](255) NULL,
	[Códigodemontaje] [nvarchar](255) NULL,
	[Nombredefamilia] [nvarchar](255) NULL,
	[Nombredetipo] [nvarchar](255) NULL,
	[Marcadetipo] [nvarchar](255) NULL,
	[Costo] [float] NULL,
	[Compartirconductorneutro] [int] NULL,
	[Compartirconductordetierra] [int] NULL,
	[Material] [int] NULL,
	[Estimacióndetemperatura] [int] NULL,
	[Aislamiento] [int] NULL,
	[Tamañomáx.] [nvarchar](255) NULL,
	[Multiplicadorneutro] [float] NULL,
	[Neutroincluidoencargaequilibrada] [int] NULL,
	[Tamañoneutro] [int] NULL,
	[Tipodetubo] [nvarchar](255) NULL,
 CONSTRAINT [PK_WireTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WiringTypeEnums]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WiringTypeEnums](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_WiringTypeEnums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AirTerminals]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminals_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[AirTerminals] CHECK CONSTRAINT [FK_AirTerminals_Fasedecreación]
GO
ALTER TABLE [dbo].[AirTerminals]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminals_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[AirTerminals] CHECK CONSTRAINT [FK_AirTerminals_Fasedederribo]
GO
ALTER TABLE [dbo].[AirTerminals]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminals_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[AirTerminalTypes] ([Id])
GO
ALTER TABLE [dbo].[AirTerminals] CHECK CONSTRAINT [FK_AirTerminals_IDdetipo]
GO
ALTER TABLE [dbo].[AirTerminals]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminals_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[AirTerminals] CHECK CONSTRAINT [FK_AirTerminals_Opcióndediseño]
GO
ALTER TABLE [dbo].[AirTerminalTypes]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminalTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[AirTerminalTypes] CHECK CONSTRAINT [FK_AirTerminalTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[AirTerminalTypes]  WITH CHECK ADD  CONSTRAINT [FK_AirTerminalTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[AirTerminalTypes] CHECK CONSTRAINT [FK_AirTerminalTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[AreaLoadOnSlab]  WITH CHECK ADD  CONSTRAINT [FK_AreaLoadOnSlab_AreaLoadId] FOREIGN KEY([AreaLoadId])
REFERENCES [dbo].[AreaLoads] ([Id])
GO
ALTER TABLE [dbo].[AreaLoadOnSlab] CHECK CONSTRAINT [FK_AreaLoadOnSlab_AreaLoadId]
GO
ALTER TABLE [dbo].[AreaLoadOnSlab]  WITH CHECK ADD  CONSTRAINT [FK_AreaLoadOnSlab_SlabId] FOREIGN KEY([SlabId])
REFERENCES [dbo].[Floors] ([Id])
GO
ALTER TABLE [dbo].[AreaLoadOnSlab] CHECK CONSTRAINT [FK_AreaLoadOnSlab_SlabId]
GO
ALTER TABLE [dbo].[AreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_AreaLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[AreaLoads] CHECK CONSTRAINT [FK_AreaLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[AreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_AreaLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[AreaLoads] CHECK CONSTRAINT [FK_AreaLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[AreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_AreaLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[AreaLoads] CHECK CONSTRAINT [FK_AreaLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_IDdeesquemadeárea] FOREIGN KEY([IDdeesquemadeárea])
REFERENCES [dbo].[AreaSchemes] ([Id])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_IDdeesquemadeárea]
GO
ALTER TABLE [dbo].[Areas]  WITH CHECK ADD  CONSTRAINT [FK_Areas_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Areas] CHECK CONSTRAINT [FK_Areas_Nivel]
GO
ALTER TABLE [dbo].[Assemblies]  WITH CHECK ADD  CONSTRAINT [FK_Assemblies_Categoríaasignada] FOREIGN KEY([Categoríaasignada])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Assemblies] CHECK CONSTRAINT [FK_Assemblies_Categoríaasignada]
GO
ALTER TABLE [dbo].[Assemblies]  WITH CHECK ADD  CONSTRAINT [FK_Assemblies_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Assemblies] CHECK CONSTRAINT [FK_Assemblies_Fasedecreación]
GO
ALTER TABLE [dbo].[Assemblies]  WITH CHECK ADD  CONSTRAINT [FK_Assemblies_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Assemblies] CHECK CONSTRAINT [FK_Assemblies_Fasedederribo]
GO
ALTER TABLE [dbo].[Assemblies]  WITH CHECK ADD  CONSTRAINT [FK_Assemblies_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[AssemblyTypes] ([Id])
GO
ALTER TABLE [dbo].[Assemblies] CHECK CONSTRAINT [FK_Assemblies_IDdetipo]
GO
ALTER TABLE [dbo].[Assemblies]  WITH CHECK ADD  CONSTRAINT [FK_Assemblies_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Assemblies] CHECK CONSTRAINT [FK_Assemblies_Opcióndediseño]
GO
ALTER TABLE [dbo].[AssemblyTypes]  WITH CHECK ADD  CONSTRAINT [FK_AssemblyTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[AssemblyTypes] CHECK CONSTRAINT [FK_AssemblyTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[AssemblyTypes]  WITH CHECK ADD  CONSTRAINT [FK_AssemblyTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[AssemblyTypes] CHECK CONSTRAINT [FK_AssemblyTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[BuildingTypeSettings]  WITH CHECK ADD  CONSTRAINT [FK_BuildingTypeSettings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[BuildingTypeSettings] CHECK CONSTRAINT [FK_BuildingTypeSettings_Opcióndediseño]
GO
ALTER TABLE [dbo].[CableTrayFittings]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CableTrayFittings] CHECK CONSTRAINT [FK_CableTrayFittings_Fasedecreación]
GO
ALTER TABLE [dbo].[CableTrayFittings]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CableTrayFittings] CHECK CONSTRAINT [FK_CableTrayFittings_Fasedederribo]
GO
ALTER TABLE [dbo].[CableTrayFittings]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CableTrayFittingType] ([Id])
GO
ALTER TABLE [dbo].[CableTrayFittings] CHECK CONSTRAINT [FK_CableTrayFittings_IDdetipo]
GO
ALTER TABLE [dbo].[CableTrayFittings]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CableTrayFittings] CHECK CONSTRAINT [FK_CableTrayFittings_Opcióndediseño]
GO
ALTER TABLE [dbo].[CableTrayFittingType]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittingType_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CableTrayFittingType] CHECK CONSTRAINT [FK_CableTrayFittingType_Códigodemontaje]
GO
ALTER TABLE [dbo].[CableTrayFittingType]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayFittingType_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CableTrayFittingType] CHECK CONSTRAINT [FK_CableTrayFittingType_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CableTrays]  WITH CHECK ADD  CONSTRAINT [FK_CableTrays_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CableTrays] CHECK CONSTRAINT [FK_CableTrays_Fasedecreación]
GO
ALTER TABLE [dbo].[CableTrays]  WITH CHECK ADD  CONSTRAINT [FK_CableTrays_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CableTrays] CHECK CONSTRAINT [FK_CableTrays_Fasedederribo]
GO
ALTER TABLE [dbo].[CableTrays]  WITH CHECK ADD  CONSTRAINT [FK_CableTrays_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CableTrayTypes] ([Id])
GO
ALTER TABLE [dbo].[CableTrays] CHECK CONSTRAINT [FK_CableTrays_IDdetipo]
GO
ALTER TABLE [dbo].[CableTrays]  WITH CHECK ADD  CONSTRAINT [FK_CableTrays_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CableTrays] CHECK CONSTRAINT [FK_CableTrays_Opcióndediseño]
GO
ALTER TABLE [dbo].[CableTrayTypes]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CableTrayTypes] CHECK CONSTRAINT [FK_CableTrayTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CableTrayTypes]  WITH CHECK ADD  CONSTRAINT [FK_CableTrayTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CableTrayTypes] CHECK CONSTRAINT [FK_CableTrayTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Casework]  WITH CHECK ADD  CONSTRAINT [FK_Casework_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Casework] CHECK CONSTRAINT [FK_Casework_Fasedecreación]
GO
ALTER TABLE [dbo].[Casework]  WITH CHECK ADD  CONSTRAINT [FK_Casework_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Casework] CHECK CONSTRAINT [FK_Casework_Fasedederribo]
GO
ALTER TABLE [dbo].[Casework]  WITH CHECK ADD  CONSTRAINT [FK_Casework_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CaseworkTypes] ([Id])
GO
ALTER TABLE [dbo].[Casework] CHECK CONSTRAINT [FK_Casework_IDdetipo]
GO
ALTER TABLE [dbo].[Casework]  WITH CHECK ADD  CONSTRAINT [FK_Casework_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Casework] CHECK CONSTRAINT [FK_Casework_Nivel]
GO
ALTER TABLE [dbo].[Casework]  WITH CHECK ADD  CONSTRAINT [FK_Casework_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Casework] CHECK CONSTRAINT [FK_Casework_Opcióndediseño]
GO
ALTER TABLE [dbo].[CaseworkOnWall]  WITH CHECK ADD  CONSTRAINT [FK_CaseworkOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[CaseworkOnWall] CHECK CONSTRAINT [FK_CaseworkOnWall_HostId]
GO
ALTER TABLE [dbo].[CaseworkOnWall]  WITH CHECK ADD  CONSTRAINT [FK_CaseworkOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Casework] ([Id])
GO
ALTER TABLE [dbo].[CaseworkOnWall] CHECK CONSTRAINT [FK_CaseworkOnWall_Id]
GO
ALTER TABLE [dbo].[CaseworkTypes]  WITH CHECK ADD  CONSTRAINT [FK_CaseworkTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CaseworkTypes] CHECK CONSTRAINT [FK_CaseworkTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CaseworkTypes]  WITH CHECK ADD  CONSTRAINT [FK_CaseworkTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CaseworkTypes] CHECK CONSTRAINT [FK_CaseworkTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_MaterialId]
GO
ALTER TABLE [dbo].[Ceilings]  WITH CHECK ADD  CONSTRAINT [FK_Ceilings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ceilings] CHECK CONSTRAINT [FK_Ceilings_Fasedecreación]
GO
ALTER TABLE [dbo].[Ceilings]  WITH CHECK ADD  CONSTRAINT [FK_Ceilings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ceilings] CHECK CONSTRAINT [FK_Ceilings_Fasedederribo]
GO
ALTER TABLE [dbo].[Ceilings]  WITH CHECK ADD  CONSTRAINT [FK_Ceilings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CeilingTypes] ([Id])
GO
ALTER TABLE [dbo].[Ceilings] CHECK CONSTRAINT [FK_Ceilings_IDdetipo]
GO
ALTER TABLE [dbo].[Ceilings]  WITH CHECK ADD  CONSTRAINT [FK_Ceilings_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Ceilings] CHECK CONSTRAINT [FK_Ceilings_Nivel]
GO
ALTER TABLE [dbo].[Ceilings]  WITH CHECK ADD  CONSTRAINT [FK_Ceilings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Ceilings] CHECK CONSTRAINT [FK_Ceilings_Opcióndediseño]
GO
ALTER TABLE [dbo].[CeilingTypes]  WITH CHECK ADD  CONSTRAINT [FK_CeilingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CeilingTypes] CHECK CONSTRAINT [FK_CeilingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CeilingTypes]  WITH CHECK ADD  CONSTRAINT [FK_CeilingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CeilingTypes] CHECK CONSTRAINT [FK_CeilingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_Fasedecreación]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_Fasedederribo]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ColumnTypes] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_IDdetipo]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_Nivelbase]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_Nivelsuperior] FOREIGN KEY([Nivelsuperior])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_Nivelsuperior]
GO
ALTER TABLE [dbo].[Columns1]  WITH CHECK ADD  CONSTRAINT [FK_Columns1_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Columns1] CHECK CONSTRAINT [FK_Columns1_Opcióndediseño]
GO
ALTER TABLE [dbo].[ColumnTypes]  WITH CHECK ADD  CONSTRAINT [FK_ColumnTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ColumnTypes] CHECK CONSTRAINT [FK_ColumnTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[ColumnTypes]  WITH CHECK ADD  CONSTRAINT [FK_ColumnTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ColumnTypes] CHECK CONSTRAINT [FK_ColumnTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CommunicationDevices]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CommunicationDevices] CHECK CONSTRAINT [FK_CommunicationDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[CommunicationDevices]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CommunicationDevices] CHECK CONSTRAINT [FK_CommunicationDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[CommunicationDevices]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CommunicationDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[CommunicationDevices] CHECK CONSTRAINT [FK_CommunicationDevices_IDdetipo]
GO
ALTER TABLE [dbo].[CommunicationDevices]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[CommunicationDevices] CHECK CONSTRAINT [FK_CommunicationDevices_Nivel]
GO
ALTER TABLE [dbo].[CommunicationDevices]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CommunicationDevices] CHECK CONSTRAINT [FK_CommunicationDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[CommunicationDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CommunicationDeviceTypes] CHECK CONSTRAINT [FK_CommunicationDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CommunicationDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_CommunicationDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CommunicationDeviceTypes] CHECK CONSTRAINT [FK_CommunicationDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[ConduitFittings]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ConduitFittings] CHECK CONSTRAINT [FK_ConduitFittings_Fasedecreación]
GO
ALTER TABLE [dbo].[ConduitFittings]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ConduitFittings] CHECK CONSTRAINT [FK_ConduitFittings_Fasedederribo]
GO
ALTER TABLE [dbo].[ConduitFittings]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ConduitFittingType] ([Id])
GO
ALTER TABLE [dbo].[ConduitFittings] CHECK CONSTRAINT [FK_ConduitFittings_IDdetipo]
GO
ALTER TABLE [dbo].[ConduitFittings]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ConduitFittings] CHECK CONSTRAINT [FK_ConduitFittings_Opcióndediseño]
GO
ALTER TABLE [dbo].[ConduitFittingType]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittingType_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ConduitFittingType] CHECK CONSTRAINT [FK_ConduitFittingType_Códigodemontaje]
GO
ALTER TABLE [dbo].[ConduitFittingType]  WITH CHECK ADD  CONSTRAINT [FK_ConduitFittingType_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ConduitFittingType] CHECK CONSTRAINT [FK_ConduitFittingType_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Conduits]  WITH CHECK ADD  CONSTRAINT [FK_Conduits_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Conduits] CHECK CONSTRAINT [FK_Conduits_Fasedecreación]
GO
ALTER TABLE [dbo].[Conduits]  WITH CHECK ADD  CONSTRAINT [FK_Conduits_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Conduits] CHECK CONSTRAINT [FK_Conduits_Fasedederribo]
GO
ALTER TABLE [dbo].[Conduits]  WITH CHECK ADD  CONSTRAINT [FK_Conduits_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ConduitTypes] ([Id])
GO
ALTER TABLE [dbo].[Conduits] CHECK CONSTRAINT [FK_Conduits_IDdetipo]
GO
ALTER TABLE [dbo].[Conduits]  WITH CHECK ADD  CONSTRAINT [FK_Conduits_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Conduits] CHECK CONSTRAINT [FK_Conduits_Opcióndediseño]
GO
ALTER TABLE [dbo].[ConduitTypes]  WITH CHECK ADD  CONSTRAINT [FK_ConduitTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ConduitTypes] CHECK CONSTRAINT [FK_ConduitTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[ConduitTypes]  WITH CHECK ADD  CONSTRAINT [FK_ConduitTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ConduitTypes] CHECK CONSTRAINT [FK_ConduitTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Constructions]  WITH CHECK ADD  CONSTRAINT [FK_Constructions_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Constructions] CHECK CONSTRAINT [FK_Constructions_Fasedecreación]
GO
ALTER TABLE [dbo].[Constructions]  WITH CHECK ADD  CONSTRAINT [FK_Constructions_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Constructions] CHECK CONSTRAINT [FK_Constructions_Fasedederribo]
GO
ALTER TABLE [dbo].[Constructions]  WITH CHECK ADD  CONSTRAINT [FK_Constructions_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ConstructionTypes] ([Id])
GO
ALTER TABLE [dbo].[Constructions] CHECK CONSTRAINT [FK_Constructions_IDdetipo]
GO
ALTER TABLE [dbo].[Constructions]  WITH CHECK ADD  CONSTRAINT [FK_Constructions_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Constructions] CHECK CONSTRAINT [FK_Constructions_Opcióndediseño]
GO
ALTER TABLE [dbo].[CoverTypes]  WITH CHECK ADD  CONSTRAINT [FK_CoverTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CoverTypes] CHECK CONSTRAINT [FK_CoverTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CoverTypes]  WITH CHECK ADD  CONSTRAINT [FK_CoverTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CoverTypes] CHECK CONSTRAINT [FK_CoverTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CurtainPanels]  WITH CHECK ADD  CONSTRAINT [FK_CurtainPanels_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainPanels] CHECK CONSTRAINT [FK_CurtainPanels_Fasedecreación]
GO
ALTER TABLE [dbo].[CurtainPanels]  WITH CHECK ADD  CONSTRAINT [FK_CurtainPanels_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainPanels] CHECK CONSTRAINT [FK_CurtainPanels_Fasedederribo]
GO
ALTER TABLE [dbo].[CurtainPanels]  WITH CHECK ADD  CONSTRAINT [FK_CurtainPanels_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CurtainPanels] CHECK CONSTRAINT [FK_CurtainPanels_Opcióndediseño]
GO
ALTER TABLE [dbo].[CurtainPanelTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainPanelTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CurtainPanelTypes] CHECK CONSTRAINT [FK_CurtainPanelTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CurtainPanelTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainPanelTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CurtainPanelTypes] CHECK CONSTRAINT [FK_CurtainPanelTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CurtainSystems]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystems_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainSystems] CHECK CONSTRAINT [FK_CurtainSystems_Fasedecreación]
GO
ALTER TABLE [dbo].[CurtainSystems]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystems_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainSystems] CHECK CONSTRAINT [FK_CurtainSystems_Fasedederribo]
GO
ALTER TABLE [dbo].[CurtainSystems]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystems_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CurtainSystemTypes] ([Id])
GO
ALTER TABLE [dbo].[CurtainSystems] CHECK CONSTRAINT [FK_CurtainSystems_IDdetipo]
GO
ALTER TABLE [dbo].[CurtainSystems]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystems_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CurtainSystems] CHECK CONSTRAINT [FK_CurtainSystems_Opcióndediseño]
GO
ALTER TABLE [dbo].[CurtainSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystemTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CurtainSystemTypes] CHECK CONSTRAINT [FK_CurtainSystemTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CurtainSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainSystemTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CurtainSystemTypes] CHECK CONSTRAINT [FK_CurtainSystemTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CurtainWallMullions]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullions_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallMullions] CHECK CONSTRAINT [FK_CurtainWallMullions_Fasedecreación]
GO
ALTER TABLE [dbo].[CurtainWallMullions]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullions_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallMullions] CHECK CONSTRAINT [FK_CurtainWallMullions_Fasedederribo]
GO
ALTER TABLE [dbo].[CurtainWallMullions]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullions_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[CurtainWallMullionTypes] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallMullions] CHECK CONSTRAINT [FK_CurtainWallMullions_IDdetipo]
GO
ALTER TABLE [dbo].[CurtainWallMullions]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullions_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallMullions] CHECK CONSTRAINT [FK_CurtainWallMullions_Opcióndediseño]
GO
ALTER TABLE [dbo].[CurtainWallMullionTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullionTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[CurtainWallMullionTypes] CHECK CONSTRAINT [FK_CurtainWallMullionTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[CurtainWallMullionTypes]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallMullionTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[CurtainWallMullionTypes] CHECK CONSTRAINT [FK_CurtainWallMullionTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[CurtainWallPanelOnRoof]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallPanelOnRoof_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Roofs] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallPanelOnRoof] CHECK CONSTRAINT [FK_CurtainWallPanelOnRoof_HostId]
GO
ALTER TABLE [dbo].[CurtainWallPanelOnRoof]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallPanelOnRoof_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CurtainPanels] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallPanelOnRoof] CHECK CONSTRAINT [FK_CurtainWallPanelOnRoof_Id]
GO
ALTER TABLE [dbo].[CurtainWallPanelOnWall]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallPanelOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallPanelOnWall] CHECK CONSTRAINT [FK_CurtainWallPanelOnWall_HostId]
GO
ALTER TABLE [dbo].[CurtainWallPanelOnWall]  WITH CHECK ADD  CONSTRAINT [FK_CurtainWallPanelOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[CurtainPanels] ([Id])
GO
ALTER TABLE [dbo].[CurtainWallPanelOnWall] CHECK CONSTRAINT [FK_CurtainWallPanelOnWall_Id]
GO
ALTER TABLE [dbo].[DataDevices]  WITH CHECK ADD  CONSTRAINT [FK_DataDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DataDevices] CHECK CONSTRAINT [FK_DataDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[DataDevices]  WITH CHECK ADD  CONSTRAINT [FK_DataDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DataDevices] CHECK CONSTRAINT [FK_DataDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[DataDevices]  WITH CHECK ADD  CONSTRAINT [FK_DataDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DataDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[DataDevices] CHECK CONSTRAINT [FK_DataDevices_IDdetipo]
GO
ALTER TABLE [dbo].[DataDevices]  WITH CHECK ADD  CONSTRAINT [FK_DataDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[DataDevices] CHECK CONSTRAINT [FK_DataDevices_Nivel]
GO
ALTER TABLE [dbo].[DataDevices]  WITH CHECK ADD  CONSTRAINT [FK_DataDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DataDevices] CHECK CONSTRAINT [FK_DataDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[DataDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_DataDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DataDeviceTypes] CHECK CONSTRAINT [FK_DataDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DataDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_DataDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DataDeviceTypes] CHECK CONSTRAINT [FK_DataDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DemandFactors]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactors_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DemandFactors] CHECK CONSTRAINT [FK_DemandFactors_Fasedecreación]
GO
ALTER TABLE [dbo].[DemandFactors]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactors_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DemandFactors] CHECK CONSTRAINT [FK_DemandFactors_Fasedederribo]
GO
ALTER TABLE [dbo].[DemandFactors]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactors_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DemandFactorTypes] ([Id])
GO
ALTER TABLE [dbo].[DemandFactors] CHECK CONSTRAINT [FK_DemandFactors_IDdetipo]
GO
ALTER TABLE [dbo].[DemandFactors]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactors_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DemandFactors] CHECK CONSTRAINT [FK_DemandFactors_Opcióndediseño]
GO
ALTER TABLE [dbo].[DemandFactorTypes]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactorTypes_Clasificacióndecarga] FOREIGN KEY([Clasificacióndecarga])
REFERENCES [dbo].[LoadClassificationTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[DemandFactorTypes] CHECK CONSTRAINT [FK_DemandFactorTypes_Clasificacióndecarga]
GO
ALTER TABLE [dbo].[DemandFactorTypes]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactorTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DemandFactorTypes] CHECK CONSTRAINT [FK_DemandFactorTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DemandFactorTypes]  WITH CHECK ADD  CONSTRAINT [FK_DemandFactorTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DemandFactorTypes] CHECK CONSTRAINT [FK_DemandFactorTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DesignOptionSets]  WITH CHECK ADD  CONSTRAINT [FK_DesignOptionSets_IDdeopciónprimaria] FOREIGN KEY([IDdeopciónprimaria])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DesignOptionSets] CHECK CONSTRAINT [FK_DesignOptionSets_IDdeopciónprimaria]
GO
ALTER TABLE [dbo].[DistributionSystems]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystems_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystems] CHECK CONSTRAINT [FK_DistributionSystems_Fasedecreación]
GO
ALTER TABLE [dbo].[DistributionSystems]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystems_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystems] CHECK CONSTRAINT [FK_DistributionSystems_Fasedederribo]
GO
ALTER TABLE [dbo].[DistributionSystems]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystems_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DistributionSystemTypes] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystems] CHECK CONSTRAINT [FK_DistributionSystems_IDdetipo]
GO
ALTER TABLE [dbo].[DistributionSystems]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystems_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystems] CHECK CONSTRAINT [FK_DistributionSystems_Opcióndediseño]
GO
ALTER TABLE [dbo].[DistributionSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystemTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DistributionSystemTypes] CHECK CONSTRAINT [FK_DistributionSystemTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DistributionSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystemTypes_Configuración] FOREIGN KEY([Configuración])
REFERENCES [dbo].[ElectricalPhaseConfigurationEnums] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystemTypes] CHECK CONSTRAINT [FK_DistributionSystemTypes_Configuración]
GO
ALTER TABLE [dbo].[DistributionSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystemTypes_Fase] FOREIGN KEY([Fase])
REFERENCES [dbo].[ElectricalPhaseEnums] ([Id])
GO
ALTER TABLE [dbo].[DistributionSystemTypes] CHECK CONSTRAINT [FK_DistributionSystemTypes_Fase]
GO
ALTER TABLE [dbo].[DistributionSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_DistributionSystemTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DistributionSystemTypes] CHECK CONSTRAINT [FK_DistributionSystemTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DivisionProfiles]  WITH CHECK ADD  CONSTRAINT [FK_DivisionProfiles_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DivisionProfiles] CHECK CONSTRAINT [FK_DivisionProfiles_Códigodemontaje]
GO
ALTER TABLE [dbo].[DivisionProfiles]  WITH CHECK ADD  CONSTRAINT [FK_DivisionProfiles_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DivisionProfiles] CHECK CONSTRAINT [FK_DivisionProfiles_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Doors]  WITH CHECK ADD  CONSTRAINT [FK_Doors_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Doors] CHECK CONSTRAINT [FK_Doors_Fasedecreación]
GO
ALTER TABLE [dbo].[Doors]  WITH CHECK ADD  CONSTRAINT [FK_Doors_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Doors] CHECK CONSTRAINT [FK_Doors_Fasedederribo]
GO
ALTER TABLE [dbo].[Doors]  WITH CHECK ADD  CONSTRAINT [FK_Doors_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DoorTypes] ([Id])
GO
ALTER TABLE [dbo].[Doors] CHECK CONSTRAINT [FK_Doors_IDdetipo]
GO
ALTER TABLE [dbo].[Doors]  WITH CHECK ADD  CONSTRAINT [FK_Doors_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Doors] CHECK CONSTRAINT [FK_Doors_Nivel]
GO
ALTER TABLE [dbo].[Doors]  WITH CHECK ADD  CONSTRAINT [FK_Doors_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Doors] CHECK CONSTRAINT [FK_Doors_Opcióndediseño]
GO
ALTER TABLE [dbo].[DoorTypes]  WITH CHECK ADD  CONSTRAINT [FK_DoorTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DoorTypes] CHECK CONSTRAINT [FK_DoorTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DoorTypes]  WITH CHECK ADD  CONSTRAINT [FK_DoorTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DoorTypes] CHECK CONSTRAINT [FK_DoorTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DoorWall]  WITH CHECK ADD  CONSTRAINT [FK_DoorWall_DoorId] FOREIGN KEY([DoorId])
REFERENCES [dbo].[Doors] ([Id])
GO
ALTER TABLE [dbo].[DoorWall] CHECK CONSTRAINT [FK_DoorWall_DoorId]
GO
ALTER TABLE [dbo].[DoorWall]  WITH CHECK ADD  CONSTRAINT [FK_DoorWall_WallId] FOREIGN KEY([WallId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[DoorWall] CHECK CONSTRAINT [FK_DoorWall_WallId]
GO
ALTER TABLE [dbo].[DuctAccessories]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessories_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctAccessories] CHECK CONSTRAINT [FK_DuctAccessories_Fasedecreación]
GO
ALTER TABLE [dbo].[DuctAccessories]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessories_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctAccessories] CHECK CONSTRAINT [FK_DuctAccessories_Fasedederribo]
GO
ALTER TABLE [dbo].[DuctAccessories]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessories_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctAccessoryTypes] ([Id])
GO
ALTER TABLE [dbo].[DuctAccessories] CHECK CONSTRAINT [FK_DuctAccessories_IDdetipo]
GO
ALTER TABLE [dbo].[DuctAccessories]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessories_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctAccessories] CHECK CONSTRAINT [FK_DuctAccessories_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctAccessoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessoryTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DuctAccessoryTypes] CHECK CONSTRAINT [FK_DuctAccessoryTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DuctAccessoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctAccessoryTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DuctAccessoryTypes] CHECK CONSTRAINT [FK_DuctAccessoryTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DuctFittings]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctFittings] CHECK CONSTRAINT [FK_DuctFittings_Fasedecreación]
GO
ALTER TABLE [dbo].[DuctFittings]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctFittings] CHECK CONSTRAINT [FK_DuctFittings_Fasedederribo]
GO
ALTER TABLE [dbo].[DuctFittings]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctFittingTypes] ([Id])
GO
ALTER TABLE [dbo].[DuctFittings] CHECK CONSTRAINT [FK_DuctFittings_IDdetipo]
GO
ALTER TABLE [dbo].[DuctFittings]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctFittings] CHECK CONSTRAINT [FK_DuctFittings_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctFittingTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DuctFittingTypes] CHECK CONSTRAINT [FK_DuctFittingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DuctFittingTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctFittingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DuctFittingTypes] CHECK CONSTRAINT [FK_DuctFittingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DuctInsulations]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulations_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctInsulations] CHECK CONSTRAINT [FK_DuctInsulations_Fasedecreación]
GO
ALTER TABLE [dbo].[DuctInsulations]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulations_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctInsulations] CHECK CONSTRAINT [FK_DuctInsulations_Fasedederribo]
GO
ALTER TABLE [dbo].[DuctInsulations]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulations_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctInsulationTypes] ([Id])
GO
ALTER TABLE [dbo].[DuctInsulations] CHECK CONSTRAINT [FK_DuctInsulations_IDdetipo]
GO
ALTER TABLE [dbo].[DuctInsulations]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulations_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctInsulations] CHECK CONSTRAINT [FK_DuctInsulations_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulationTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DuctInsulationTypes] CHECK CONSTRAINT [FK_DuctInsulationTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DuctInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctInsulationTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DuctInsulationTypes] CHECK CONSTRAINT [FK_DuctInsulationTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DuctLinings]  WITH CHECK ADD  CONSTRAINT [FK_DuctLinings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctLinings] CHECK CONSTRAINT [FK_DuctLinings_Fasedecreación]
GO
ALTER TABLE [dbo].[DuctLinings]  WITH CHECK ADD  CONSTRAINT [FK_DuctLinings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctLinings] CHECK CONSTRAINT [FK_DuctLinings_Fasedederribo]
GO
ALTER TABLE [dbo].[DuctLinings]  WITH CHECK ADD  CONSTRAINT [FK_DuctLinings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctLiningTypes] ([Id])
GO
ALTER TABLE [dbo].[DuctLinings] CHECK CONSTRAINT [FK_DuctLinings_IDdetipo]
GO
ALTER TABLE [dbo].[DuctLinings]  WITH CHECK ADD  CONSTRAINT [FK_DuctLinings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctLinings] CHECK CONSTRAINT [FK_DuctLinings_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctLiningTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctLiningTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DuctLiningTypes] CHECK CONSTRAINT [FK_DuctLiningTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DuctLiningTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctLiningTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DuctLiningTypes] CHECK CONSTRAINT [FK_DuctLiningTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[DuctPlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_DuctPlaceholders_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctPlaceholders] CHECK CONSTRAINT [FK_DuctPlaceholders_Fasedecreación]
GO
ALTER TABLE [dbo].[DuctPlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_DuctPlaceholders_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[DuctPlaceholders] CHECK CONSTRAINT [FK_DuctPlaceholders_Fasedederribo]
GO
ALTER TABLE [dbo].[DuctPlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_DuctPlaceholders_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctTypes] ([Id])
GO
ALTER TABLE [dbo].[DuctPlaceholders] CHECK CONSTRAINT [FK_DuctPlaceholders_IDdetipo]
GO
ALTER TABLE [dbo].[DuctPlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_DuctPlaceholders_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctPlaceholders] CHECK CONSTRAINT [FK_DuctPlaceholders_Opcióndediseño]
GO
ALTER TABLE [dbo].[Ducts]  WITH CHECK ADD  CONSTRAINT [FK_Ducts_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ducts] CHECK CONSTRAINT [FK_Ducts_Fasedecreación]
GO
ALTER TABLE [dbo].[Ducts]  WITH CHECK ADD  CONSTRAINT [FK_Ducts_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ducts] CHECK CONSTRAINT [FK_Ducts_Fasedederribo]
GO
ALTER TABLE [dbo].[Ducts]  WITH CHECK ADD  CONSTRAINT [FK_Ducts_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[DuctTypes] ([Id])
GO
ALTER TABLE [dbo].[Ducts] CHECK CONSTRAINT [FK_Ducts_IDdetipo]
GO
ALTER TABLE [dbo].[Ducts]  WITH CHECK ADD  CONSTRAINT [FK_Ducts_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Ducts] CHECK CONSTRAINT [FK_Ducts_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctSystems]  WITH CHECK ADD  CONSTRAINT [FK_DuctSystems_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[DuctSystems] CHECK CONSTRAINT [FK_DuctSystems_Opcióndediseño]
GO
ALTER TABLE [dbo].[DuctTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[DuctTypes] CHECK CONSTRAINT [FK_DuctTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[DuctTypes]  WITH CHECK ADD  CONSTRAINT [FK_DuctTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[DuctTypes] CHECK CONSTRAINT [FK_DuctTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[ElectricalCircuits]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalCircuits_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalCircuits] CHECK CONSTRAINT [FK_ElectricalCircuits_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElectricalCircuits]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalCircuits_Tipodecable] FOREIGN KEY([Tipodecable])
REFERENCES [dbo].[WireTypes] ([Id])
GO
ALTER TABLE [dbo].[ElectricalCircuits] CHECK CONSTRAINT [FK_ElectricalCircuits_Tipodecable]
GO
ALTER TABLE [dbo].[ElectricalCircuits]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalCircuits_Tipodesistema] FOREIGN KEY([Tipodesistema])
REFERENCES [dbo].[ElectricalSystemEnums] ([Id])
GO
ALTER TABLE [dbo].[ElectricalCircuits] CHECK CONSTRAINT [FK_ElectricalCircuits_Tipodesistema]
GO
ALTER TABLE [dbo].[ElectricalDemandFactorDefinitions]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalDemandFactorDefinitions_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalDemandFactorDefinitions] CHECK CONSTRAINT [FK_ElectricalDemandFactorDefinitions_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElectricalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipment_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ElectricalEquipment] CHECK CONSTRAINT [FK_ElectricalEquipment_Fasedecreación]
GO
ALTER TABLE [dbo].[ElectricalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipment_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ElectricalEquipment] CHECK CONSTRAINT [FK_ElectricalEquipment_Fasedederribo]
GO
ALTER TABLE [dbo].[ElectricalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipment_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ElectricalEquipmentTypes] ([Id])
GO
ALTER TABLE [dbo].[ElectricalEquipment] CHECK CONSTRAINT [FK_ElectricalEquipment_IDdetipo]
GO
ALTER TABLE [dbo].[ElectricalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipment_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[ElectricalEquipment] CHECK CONSTRAINT [FK_ElectricalEquipment_Nivel]
GO
ALTER TABLE [dbo].[ElectricalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipment_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalEquipment] CHECK CONSTRAINT [FK_ElectricalEquipment_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElectricalEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipmentTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ElectricalEquipmentTypes] CHECK CONSTRAINT [FK_ElectricalEquipmentTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[ElectricalEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalEquipmentTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ElectricalEquipmentTypes] CHECK CONSTRAINT [FK_ElectricalEquipmentTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[ElectricalFixtures]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtures_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ElectricalFixtures] CHECK CONSTRAINT [FK_ElectricalFixtures_Fasedecreación]
GO
ALTER TABLE [dbo].[ElectricalFixtures]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtures_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ElectricalFixtures] CHECK CONSTRAINT [FK_ElectricalFixtures_Fasedederribo]
GO
ALTER TABLE [dbo].[ElectricalFixtures]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtures_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ElectricalFixtureTypes] ([Id])
GO
ALTER TABLE [dbo].[ElectricalFixtures] CHECK CONSTRAINT [FK_ElectricalFixtures_IDdetipo]
GO
ALTER TABLE [dbo].[ElectricalFixtures]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtures_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[ElectricalFixtures] CHECK CONSTRAINT [FK_ElectricalFixtures_Nivel]
GO
ALTER TABLE [dbo].[ElectricalFixtures]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtures_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalFixtures] CHECK CONSTRAINT [FK_ElectricalFixtures_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElectricalFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtureTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ElectricalFixtureTypes] CHECK CONSTRAINT [FK_ElectricalFixtureTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[ElectricalFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalFixtureTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ElectricalFixtureTypes] CHECK CONSTRAINT [FK_ElectricalFixtureTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[ElectricalLoadClassificationParameterElement]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalLoadClassificationParameterElement_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalLoadClassificationParameterElement] CHECK CONSTRAINT [FK_ElectricalLoadClassificationParameterElement_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElectricalLoadClassifications]  WITH CHECK ADD  CONSTRAINT [FK_ElectricalLoadClassifications_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[ElectricalLoadClassifications] CHECK CONSTRAINT [FK_ElectricalLoadClassifications_Opcióndediseño]
GO
ALTER TABLE [dbo].[ElementLevel]  WITH CHECK ADD  CONSTRAINT [FK_ElementLevel_LevelId] FOREIGN KEY([LevelId])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[ElementLevel] CHECK CONSTRAINT [FK_ElementLevel_LevelId]
GO
ALTER TABLE [dbo].[ElementPhase]  WITH CHECK ADD  CONSTRAINT [FK_ElementPhase_PhaseCreatedId] FOREIGN KEY([PhaseCreatedId])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[ElementPhase] CHECK CONSTRAINT [FK_ElementPhase_PhaseCreatedId]
GO
ALTER TABLE [dbo].[Fascias]  WITH CHECK ADD  CONSTRAINT [FK_Fascias_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Fascias] CHECK CONSTRAINT [FK_Fascias_Fasedecreación]
GO
ALTER TABLE [dbo].[Fascias]  WITH CHECK ADD  CONSTRAINT [FK_Fascias_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Fascias] CHECK CONSTRAINT [FK_Fascias_Fasedederribo]
GO
ALTER TABLE [dbo].[Fascias]  WITH CHECK ADD  CONSTRAINT [FK_Fascias_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FasciaTypes] ([Id])
GO
ALTER TABLE [dbo].[Fascias] CHECK CONSTRAINT [FK_Fascias_IDdetipo]
GO
ALTER TABLE [dbo].[Fascias]  WITH CHECK ADD  CONSTRAINT [FK_Fascias_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Fascias] CHECK CONSTRAINT [FK_Fascias_Opcióndediseño]
GO
ALTER TABLE [dbo].[FasciaTypes]  WITH CHECK ADD  CONSTRAINT [FK_FasciaTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FasciaTypes] CHECK CONSTRAINT [FK_FasciaTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FasciaTypes]  WITH CHECK ADD  CONSTRAINT [FK_FasciaTypes_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[FasciaTypes] CHECK CONSTRAINT [FK_FasciaTypes_Material]
GO
ALTER TABLE [dbo].[FasciaTypes]  WITH CHECK ADD  CONSTRAINT [FK_FasciaTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FasciaTypes] CHECK CONSTRAINT [FK_FasciaTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[FasciaTypes]  WITH CHECK ADD  CONSTRAINT [FK_FasciaTypes_Perfil] FOREIGN KEY([Perfil])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[FasciaTypes] CHECK CONSTRAINT [FK_FasciaTypes_Perfil]
GO
ALTER TABLE [dbo].[FireAlarmDevices]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FireAlarmDevices] CHECK CONSTRAINT [FK_FireAlarmDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[FireAlarmDevices]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FireAlarmDevices] CHECK CONSTRAINT [FK_FireAlarmDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[FireAlarmDevices]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FireAlarmDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[FireAlarmDevices] CHECK CONSTRAINT [FK_FireAlarmDevices_IDdetipo]
GO
ALTER TABLE [dbo].[FireAlarmDevices]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[FireAlarmDevices] CHECK CONSTRAINT [FK_FireAlarmDevices_Nivel]
GO
ALTER TABLE [dbo].[FireAlarmDevices]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[FireAlarmDevices] CHECK CONSTRAINT [FK_FireAlarmDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[FireAlarmDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FireAlarmDeviceTypes] CHECK CONSTRAINT [FK_FireAlarmDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FireAlarmDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_FireAlarmDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FireAlarmDeviceTypes] CHECK CONSTRAINT [FK_FireAlarmDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[FlexDucts]  WITH CHECK ADD  CONSTRAINT [FK_FlexDucts_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FlexDucts] CHECK CONSTRAINT [FK_FlexDucts_Fasedecreación]
GO
ALTER TABLE [dbo].[FlexDucts]  WITH CHECK ADD  CONSTRAINT [FK_FlexDucts_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FlexDucts] CHECK CONSTRAINT [FK_FlexDucts_Fasedederribo]
GO
ALTER TABLE [dbo].[FlexDucts]  WITH CHECK ADD  CONSTRAINT [FK_FlexDucts_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FlexDuctTypes] ([Id])
GO
ALTER TABLE [dbo].[FlexDucts] CHECK CONSTRAINT [FK_FlexDucts_IDdetipo]
GO
ALTER TABLE [dbo].[FlexDucts]  WITH CHECK ADD  CONSTRAINT [FK_FlexDucts_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[FlexDucts] CHECK CONSTRAINT [FK_FlexDucts_Opcióndediseño]
GO
ALTER TABLE [dbo].[FlexDuctTypes]  WITH CHECK ADD  CONSTRAINT [FK_FlexDuctTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FlexDuctTypes] CHECK CONSTRAINT [FK_FlexDuctTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FlexDuctTypes]  WITH CHECK ADD  CONSTRAINT [FK_FlexDuctTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FlexDuctTypes] CHECK CONSTRAINT [FK_FlexDuctTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[FlexPipes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipes_Estadodeflujo] FOREIGN KEY([Estadodeflujo])
REFERENCES [dbo].[PipeFlowStateEnums] ([Id])
GO
ALTER TABLE [dbo].[FlexPipes] CHECK CONSTRAINT [FK_FlexPipes_Estadodeflujo]
GO
ALTER TABLE [dbo].[FlexPipes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipes_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FlexPipes] CHECK CONSTRAINT [FK_FlexPipes_Fasedecreación]
GO
ALTER TABLE [dbo].[FlexPipes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipes_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FlexPipes] CHECK CONSTRAINT [FK_FlexPipes_Fasedederribo]
GO
ALTER TABLE [dbo].[FlexPipes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipes_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FlexPipeTypes] ([Id])
GO
ALTER TABLE [dbo].[FlexPipes] CHECK CONSTRAINT [FK_FlexPipes_IDdetipo]
GO
ALTER TABLE [dbo].[FlexPipes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipes_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[FlexPipes] CHECK CONSTRAINT [FK_FlexPipes_Opcióndediseño]
GO
ALTER TABLE [dbo].[FlexPipeTypes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipeTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FlexPipeTypes] CHECK CONSTRAINT [FK_FlexPipeTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FlexPipeTypes]  WITH CHECK ADD  CONSTRAINT [FK_FlexPipeTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FlexPipeTypes] CHECK CONSTRAINT [FK_FlexPipeTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_Analizarcomo] FOREIGN KEY([Analizarcomo])
REFERENCES [dbo].[AnalyzesAsTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_Analizarcomo]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_Fasedecreación]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_Fasedederribo]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FloorTypes] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_IDdetipo]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_Nivel]
GO
ALTER TABLE [dbo].[Floors]  WITH CHECK ADD  CONSTRAINT [FK_Floors_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Floors] CHECK CONSTRAINT [FK_Floors_Opcióndediseño]
GO
ALTER TABLE [dbo].[FloorTypes]  WITH CHECK ADD  CONSTRAINT [FK_FloorTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FloorTypes] CHECK CONSTRAINT [FK_FloorTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FloorTypes]  WITH CHECK ADD  CONSTRAINT [FK_FloorTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FloorTypes] CHECK CONSTRAINT [FK_FloorTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Fluids]  WITH CHECK ADD  CONSTRAINT [FK_Fluids_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Fluids] CHECK CONSTRAINT [FK_Fluids_Fasedecreación]
GO
ALTER TABLE [dbo].[Fluids]  WITH CHECK ADD  CONSTRAINT [FK_Fluids_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Fluids] CHECK CONSTRAINT [FK_Fluids_Fasedederribo]
GO
ALTER TABLE [dbo].[Fluids]  WITH CHECK ADD  CONSTRAINT [FK_Fluids_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FluidTypes] ([Id])
GO
ALTER TABLE [dbo].[Fluids] CHECK CONSTRAINT [FK_Fluids_IDdetipo]
GO
ALTER TABLE [dbo].[Fluids]  WITH CHECK ADD  CONSTRAINT [FK_Fluids_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Fluids] CHECK CONSTRAINT [FK_Fluids_Opcióndediseño]
GO
ALTER TABLE [dbo].[FluidTypes]  WITH CHECK ADD  CONSTRAINT [FK_FluidTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FluidTypes] CHECK CONSTRAINT [FK_FluidTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FluidTypes]  WITH CHECK ADD  CONSTRAINT [FK_FluidTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FluidTypes] CHECK CONSTRAINT [FK_FluidTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Fasedecreación]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Fasedederribo]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FurnitureTypes] ([Id])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_IDdetipo]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Nivel]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Opcióndediseño]
GO
ALTER TABLE [dbo].[FurnitureSystems]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystems_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FurnitureSystems] CHECK CONSTRAINT [FK_FurnitureSystems_Fasedecreación]
GO
ALTER TABLE [dbo].[FurnitureSystems]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystems_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[FurnitureSystems] CHECK CONSTRAINT [FK_FurnitureSystems_Fasedederribo]
GO
ALTER TABLE [dbo].[FurnitureSystems]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystems_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[FurnitureSystemTypes] ([Id])
GO
ALTER TABLE [dbo].[FurnitureSystems] CHECK CONSTRAINT [FK_FurnitureSystems_IDdetipo]
GO
ALTER TABLE [dbo].[FurnitureSystems]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystems_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[FurnitureSystems] CHECK CONSTRAINT [FK_FurnitureSystems_Nivel]
GO
ALTER TABLE [dbo].[FurnitureSystems]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystems_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[FurnitureSystems] CHECK CONSTRAINT [FK_FurnitureSystems_Opcióndediseño]
GO
ALTER TABLE [dbo].[FurnitureSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystemTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FurnitureSystemTypes] CHECK CONSTRAINT [FK_FurnitureSystemTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FurnitureSystemTypes]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureSystemTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FurnitureSystemTypes] CHECK CONSTRAINT [FK_FurnitureSystemTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[FurnitureTypes]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[FurnitureTypes] CHECK CONSTRAINT [FK_FurnitureTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[FurnitureTypes]  WITH CHECK ADD  CONSTRAINT [FK_FurnitureTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[FurnitureTypes] CHECK CONSTRAINT [FK_FurnitureTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[GenericModelOnRoof]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelOnRoof_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Roofs] ([Id])
GO
ALTER TABLE [dbo].[GenericModelOnRoof] CHECK CONSTRAINT [FK_GenericModelOnRoof_HostId]
GO
ALTER TABLE [dbo].[GenericModelOnRoof]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelOnRoof_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[GenericModels] ([Id])
GO
ALTER TABLE [dbo].[GenericModelOnRoof] CHECK CONSTRAINT [FK_GenericModelOnRoof_Id]
GO
ALTER TABLE [dbo].[GenericModelOnWall]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[GenericModelOnWall] CHECK CONSTRAINT [FK_GenericModelOnWall_HostId]
GO
ALTER TABLE [dbo].[GenericModelOnWall]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[GenericModels] ([Id])
GO
ALTER TABLE [dbo].[GenericModelOnWall] CHECK CONSTRAINT [FK_GenericModelOnWall_Id]
GO
ALTER TABLE [dbo].[GenericModels]  WITH CHECK ADD  CONSTRAINT [FK_GenericModels_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[GenericModels] CHECK CONSTRAINT [FK_GenericModels_Fasedecreación]
GO
ALTER TABLE [dbo].[GenericModels]  WITH CHECK ADD  CONSTRAINT [FK_GenericModels_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[GenericModels] CHECK CONSTRAINT [FK_GenericModels_Fasedederribo]
GO
ALTER TABLE [dbo].[GenericModels]  WITH CHECK ADD  CONSTRAINT [FK_GenericModels_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[GenericModelTypes] ([Id])
GO
ALTER TABLE [dbo].[GenericModels] CHECK CONSTRAINT [FK_GenericModels_IDdetipo]
GO
ALTER TABLE [dbo].[GenericModels]  WITH CHECK ADD  CONSTRAINT [FK_GenericModels_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[GenericModels] CHECK CONSTRAINT [FK_GenericModels_Nivel]
GO
ALTER TABLE [dbo].[GenericModels]  WITH CHECK ADD  CONSTRAINT [FK_GenericModels_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[GenericModels] CHECK CONSTRAINT [FK_GenericModels_Opcióndediseño]
GO
ALTER TABLE [dbo].[GenericModelTypes]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[GenericModelTypes] CHECK CONSTRAINT [FK_GenericModelTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[GenericModelTypes]  WITH CHECK ADD  CONSTRAINT [FK_GenericModelTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[GenericModelTypes] CHECK CONSTRAINT [FK_GenericModelTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Grids]  WITH CHECK ADD  CONSTRAINT [FK_Grids_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[GridTypes] ([Id])
GO
ALTER TABLE [dbo].[Grids] CHECK CONSTRAINT [FK_Grids_IDdetipo]
GO
ALTER TABLE [dbo].[Gutters]  WITH CHECK ADD  CONSTRAINT [FK_Gutters_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Gutters] CHECK CONSTRAINT [FK_Gutters_Fasedecreación]
GO
ALTER TABLE [dbo].[Gutters]  WITH CHECK ADD  CONSTRAINT [FK_Gutters_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Gutters] CHECK CONSTRAINT [FK_Gutters_Fasedederribo]
GO
ALTER TABLE [dbo].[Gutters]  WITH CHECK ADD  CONSTRAINT [FK_Gutters_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[GutterTypes] ([Id])
GO
ALTER TABLE [dbo].[Gutters] CHECK CONSTRAINT [FK_Gutters_IDdetipo]
GO
ALTER TABLE [dbo].[Gutters]  WITH CHECK ADD  CONSTRAINT [FK_Gutters_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Gutters] CHECK CONSTRAINT [FK_Gutters_Opcióndediseño]
GO
ALTER TABLE [dbo].[GutterTypes]  WITH CHECK ADD  CONSTRAINT [FK_GutterTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[GutterTypes] CHECK CONSTRAINT [FK_GutterTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[GutterTypes]  WITH CHECK ADD  CONSTRAINT [FK_GutterTypes_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[GutterTypes] CHECK CONSTRAINT [FK_GutterTypes_Material]
GO
ALTER TABLE [dbo].[GutterTypes]  WITH CHECK ADD  CONSTRAINT [FK_GutterTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[GutterTypes] CHECK CONSTRAINT [FK_GutterTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[GutterTypes]  WITH CHECK ADD  CONSTRAINT [FK_GutterTypes_Perfil] FOREIGN KEY([Perfil])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[GutterTypes] CHECK CONSTRAINT [FK_GutterTypes_Perfil]
GO
ALTER TABLE [dbo].[HVACLoadSchedules]  WITH CHECK ADD  CONSTRAINT [FK_HVACLoadSchedules_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[HVACLoadSchedules] CHECK CONSTRAINT [FK_HVACLoadSchedules_Opcióndediseño]
GO
ALTER TABLE [dbo].[HVACZones]  WITH CHECK ADD  CONSTRAINT [FK_HVACZones_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[HVACZones] CHECK CONSTRAINT [FK_HVACZones_Opcióndediseño]
GO
ALTER TABLE [dbo].[HVACZones]  WITH CHECK ADD  CONSTRAINT [FK_HVACZones_Tipodeservicio] FOREIGN KEY([Tipodeservicio])
REFERENCES [dbo].[ServiceTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[HVACZones] CHECK CONSTRAINT [FK_HVACZones_Tipodeservicio]
GO
ALTER TABLE [dbo].[InternalAreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalAreaLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalAreaLoads] CHECK CONSTRAINT [FK_InternalAreaLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[InternalAreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalAreaLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalAreaLoads] CHECK CONSTRAINT [FK_InternalAreaLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[InternalAreaLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalAreaLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[InternalAreaLoads] CHECK CONSTRAINT [FK_InternalAreaLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[InternalLineLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalLineLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalLineLoads] CHECK CONSTRAINT [FK_InternalLineLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[InternalLineLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalLineLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalLineLoads] CHECK CONSTRAINT [FK_InternalLineLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[InternalLineLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalLineLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[InternalLineLoads] CHECK CONSTRAINT [FK_InternalLineLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[InternalPointLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalPointLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalPointLoads] CHECK CONSTRAINT [FK_InternalPointLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[InternalPointLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalPointLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[InternalPointLoads] CHECK CONSTRAINT [FK_InternalPointLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[InternalPointLoads]  WITH CHECK ADD  CONSTRAINT [FK_InternalPointLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[InternalPointLoads] CHECK CONSTRAINT [FK_InternalPointLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[Levels]  WITH CHECK ADD  CONSTRAINT [FK_Levels_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[LevelTypes] ([Id])
GO
ALTER TABLE [dbo].[Levels] CHECK CONSTRAINT [FK_Levels_IDdetipo]
GO
ALTER TABLE [dbo].[Levels]  WITH CHECK ADD  CONSTRAINT [FK_Levels_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Levels] CHECK CONSTRAINT [FK_Levels_Opcióndediseño]
GO
ALTER TABLE [dbo].[LightingDevices]  WITH CHECK ADD  CONSTRAINT [FK_LightingDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LightingDevices] CHECK CONSTRAINT [FK_LightingDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[LightingDevices]  WITH CHECK ADD  CONSTRAINT [FK_LightingDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LightingDevices] CHECK CONSTRAINT [FK_LightingDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[LightingDevices]  WITH CHECK ADD  CONSTRAINT [FK_LightingDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[LightingDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[LightingDevices] CHECK CONSTRAINT [FK_LightingDevices_IDdetipo]
GO
ALTER TABLE [dbo].[LightingDevices]  WITH CHECK ADD  CONSTRAINT [FK_LightingDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[LightingDevices] CHECK CONSTRAINT [FK_LightingDevices_Nivel]
GO
ALTER TABLE [dbo].[LightingDevices]  WITH CHECK ADD  CONSTRAINT [FK_LightingDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[LightingDevices] CHECK CONSTRAINT [FK_LightingDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[LightingDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_LightingDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[LightingDeviceTypes] CHECK CONSTRAINT [FK_LightingDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[LightingDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_LightingDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[LightingDeviceTypes] CHECK CONSTRAINT [FK_LightingDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[LightingFixtureOnCeiling]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureOnCeiling_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Ceilings] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtureOnCeiling] CHECK CONSTRAINT [FK_LightingFixtureOnCeiling_HostId]
GO
ALTER TABLE [dbo].[LightingFixtureOnCeiling]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureOnCeiling_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[LightingFixtures] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtureOnCeiling] CHECK CONSTRAINT [FK_LightingFixtureOnCeiling_Id]
GO
ALTER TABLE [dbo].[LightingFixtureOnWall]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtureOnWall] CHECK CONSTRAINT [FK_LightingFixtureOnWall_HostId]
GO
ALTER TABLE [dbo].[LightingFixtureOnWall]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[LightingFixtures] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtureOnWall] CHECK CONSTRAINT [FK_LightingFixtureOnWall_Id]
GO
ALTER TABLE [dbo].[LightingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtures_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtures] CHECK CONSTRAINT [FK_LightingFixtures_Fasedecreación]
GO
ALTER TABLE [dbo].[LightingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtures_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtures] CHECK CONSTRAINT [FK_LightingFixtures_Fasedederribo]
GO
ALTER TABLE [dbo].[LightingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtures_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[LightingFixtureTypes] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtures] CHECK CONSTRAINT [FK_LightingFixtures_IDdetipo]
GO
ALTER TABLE [dbo].[LightingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtures_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtures] CHECK CONSTRAINT [FK_LightingFixtures_Nivel]
GO
ALTER TABLE [dbo].[LightingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtures_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[LightingFixtures] CHECK CONSTRAINT [FK_LightingFixtures_Opcióndediseño]
GO
ALTER TABLE [dbo].[LightingFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[LightingFixtureTypes] CHECK CONSTRAINT [FK_LightingFixtureTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[LightingFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_LightingFixtureTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[LightingFixtureTypes] CHECK CONSTRAINT [FK_LightingFixtureTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[LineLoadOnBeam]  WITH CHECK ADD  CONSTRAINT [FK_LineLoadOnBeam_BeamId] FOREIGN KEY([BeamId])
REFERENCES [dbo].[StructuralFraming] ([Id])
GO
ALTER TABLE [dbo].[LineLoadOnBeam] CHECK CONSTRAINT [FK_LineLoadOnBeam_BeamId]
GO
ALTER TABLE [dbo].[LineLoadOnBeam]  WITH CHECK ADD  CONSTRAINT [FK_LineLoadOnBeam_LineLoadId] FOREIGN KEY([LineLoadId])
REFERENCES [dbo].[LineLoads] ([Id])
GO
ALTER TABLE [dbo].[LineLoadOnBeam] CHECK CONSTRAINT [FK_LineLoadOnBeam_LineLoadId]
GO
ALTER TABLE [dbo].[LineLoads]  WITH CHECK ADD  CONSTRAINT [FK_LineLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LineLoads] CHECK CONSTRAINT [FK_LineLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[LineLoads]  WITH CHECK ADD  CONSTRAINT [FK_LineLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[LineLoads] CHECK CONSTRAINT [FK_LineLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[LineLoads]  WITH CHECK ADD  CONSTRAINT [FK_LineLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[LineLoads] CHECK CONSTRAINT [FK_LineLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[Mass]  WITH CHECK ADD  CONSTRAINT [FK_Mass_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Mass] CHECK CONSTRAINT [FK_Mass_Fasedecreación]
GO
ALTER TABLE [dbo].[Mass]  WITH CHECK ADD  CONSTRAINT [FK_Mass_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Mass] CHECK CONSTRAINT [FK_Mass_Fasedederribo]
GO
ALTER TABLE [dbo].[Mass]  WITH CHECK ADD  CONSTRAINT [FK_Mass_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[MassTypes] ([Id])
GO
ALTER TABLE [dbo].[Mass] CHECK CONSTRAINT [FK_Mass_IDdetipo]
GO
ALTER TABLE [dbo].[Mass]  WITH CHECK ADD  CONSTRAINT [FK_Mass_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Mass] CHECK CONSTRAINT [FK_Mass_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassExteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassExteriorWall_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassExteriorWall] CHECK CONSTRAINT [FK_MassExteriorWall_Fasedecreación]
GO
ALTER TABLE [dbo].[MassExteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassExteriorWall_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassExteriorWall] CHECK CONSTRAINT [FK_MassExteriorWall_Fasedederribo]
GO
ALTER TABLE [dbo].[MassExteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassExteriorWall_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassExteriorWall] CHECK CONSTRAINT [FK_MassExteriorWall_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassFloor]  WITH CHECK ADD  CONSTRAINT [FK_MassFloor_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassFloor] CHECK CONSTRAINT [FK_MassFloor_Fasedecreación]
GO
ALTER TABLE [dbo].[MassFloor]  WITH CHECK ADD  CONSTRAINT [FK_MassFloor_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassFloor] CHECK CONSTRAINT [FK_MassFloor_Fasedederribo]
GO
ALTER TABLE [dbo].[MassFloor]  WITH CHECK ADD  CONSTRAINT [FK_MassFloor_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassFloor] CHECK CONSTRAINT [FK_MassFloor_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassGlazing]  WITH CHECK ADD  CONSTRAINT [FK_MassGlazing_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassGlazing] CHECK CONSTRAINT [FK_MassGlazing_Fasedecreación]
GO
ALTER TABLE [dbo].[MassGlazing]  WITH CHECK ADD  CONSTRAINT [FK_MassGlazing_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassGlazing] CHECK CONSTRAINT [FK_MassGlazing_Fasedederribo]
GO
ALTER TABLE [dbo].[MassGlazing]  WITH CHECK ADD  CONSTRAINT [FK_MassGlazing_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassGlazing] CHECK CONSTRAINT [FK_MassGlazing_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassInteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassInteriorWall_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassInteriorWall] CHECK CONSTRAINT [FK_MassInteriorWall_Fasedecreación]
GO
ALTER TABLE [dbo].[MassInteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassInteriorWall_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassInteriorWall] CHECK CONSTRAINT [FK_MassInteriorWall_Fasedederribo]
GO
ALTER TABLE [dbo].[MassInteriorWall]  WITH CHECK ADD  CONSTRAINT [FK_MassInteriorWall_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassInteriorWall] CHECK CONSTRAINT [FK_MassInteriorWall_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassOpening]  WITH CHECK ADD  CONSTRAINT [FK_MassOpening_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassOpening] CHECK CONSTRAINT [FK_MassOpening_Fasedecreación]
GO
ALTER TABLE [dbo].[MassOpening]  WITH CHECK ADD  CONSTRAINT [FK_MassOpening_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassOpening] CHECK CONSTRAINT [FK_MassOpening_Fasedederribo]
GO
ALTER TABLE [dbo].[MassOpening]  WITH CHECK ADD  CONSTRAINT [FK_MassOpening_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassOpening] CHECK CONSTRAINT [FK_MassOpening_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassRoof]  WITH CHECK ADD  CONSTRAINT [FK_MassRoof_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassRoof] CHECK CONSTRAINT [FK_MassRoof_Fasedecreación]
GO
ALTER TABLE [dbo].[MassRoof]  WITH CHECK ADD  CONSTRAINT [FK_MassRoof_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassRoof] CHECK CONSTRAINT [FK_MassRoof_Fasedederribo]
GO
ALTER TABLE [dbo].[MassRoof]  WITH CHECK ADD  CONSTRAINT [FK_MassRoof_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassRoof] CHECK CONSTRAINT [FK_MassRoof_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassSkylight]  WITH CHECK ADD  CONSTRAINT [FK_MassSkylight_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassSkylight] CHECK CONSTRAINT [FK_MassSkylight_Fasedecreación]
GO
ALTER TABLE [dbo].[MassSkylight]  WITH CHECK ADD  CONSTRAINT [FK_MassSkylight_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MassSkylight] CHECK CONSTRAINT [FK_MassSkylight_Fasedederribo]
GO
ALTER TABLE [dbo].[MassSkylight]  WITH CHECK ADD  CONSTRAINT [FK_MassSkylight_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MassSkylight] CHECK CONSTRAINT [FK_MassSkylight_Opcióndediseño]
GO
ALTER TABLE [dbo].[MassTypes]  WITH CHECK ADD  CONSTRAINT [FK_MassTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[MassTypes] CHECK CONSTRAINT [FK_MassTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[MassTypes]  WITH CHECK ADD  CONSTRAINT [FK_MassTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[MassTypes] CHECK CONSTRAINT [FK_MassTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[MaterialQuantities]  WITH CHECK ADD  CONSTRAINT [FK_MaterialQuantities_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[MaterialQuantities] CHECK CONSTRAINT [FK_MaterialQuantities_MaterialId]
GO
ALTER TABLE [dbo].[MechanicalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipment_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipment] CHECK CONSTRAINT [FK_MechanicalEquipment_Fasedecreación]
GO
ALTER TABLE [dbo].[MechanicalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipment_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipment] CHECK CONSTRAINT [FK_MechanicalEquipment_Fasedederribo]
GO
ALTER TABLE [dbo].[MechanicalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipment_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[MechanicalEquipmentTypes] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipment] CHECK CONSTRAINT [FK_MechanicalEquipment_IDdetipo]
GO
ALTER TABLE [dbo].[MechanicalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipment_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipment] CHECK CONSTRAINT [FK_MechanicalEquipment_Nivel]
GO
ALTER TABLE [dbo].[MechanicalEquipment]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipment_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipment] CHECK CONSTRAINT [FK_MechanicalEquipment_Opcióndediseño]
GO
ALTER TABLE [dbo].[MechanicalEquipmentOnWall]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipmentOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipmentOnWall] CHECK CONSTRAINT [FK_MechanicalEquipmentOnWall_HostId]
GO
ALTER TABLE [dbo].[MechanicalEquipmentOnWall]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipmentOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[MechanicalEquipment] ([Id])
GO
ALTER TABLE [dbo].[MechanicalEquipmentOnWall] CHECK CONSTRAINT [FK_MechanicalEquipmentOnWall_Id]
GO
ALTER TABLE [dbo].[MechanicalEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipmentTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[MechanicalEquipmentTypes] CHECK CONSTRAINT [FK_MechanicalEquipmentTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[MechanicalEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_MechanicalEquipmentTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[MechanicalEquipmentTypes] CHECK CONSTRAINT [FK_MechanicalEquipmentTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[NurseCallDevices]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[NurseCallDevices] CHECK CONSTRAINT [FK_NurseCallDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[NurseCallDevices]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[NurseCallDevices] CHECK CONSTRAINT [FK_NurseCallDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[NurseCallDevices]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[NurseCallDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[NurseCallDevices] CHECK CONSTRAINT [FK_NurseCallDevices_IDdetipo]
GO
ALTER TABLE [dbo].[NurseCallDevices]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[NurseCallDevices] CHECK CONSTRAINT [FK_NurseCallDevices_Nivel]
GO
ALTER TABLE [dbo].[NurseCallDevices]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[NurseCallDevices] CHECK CONSTRAINT [FK_NurseCallDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[NurseCallDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[NurseCallDeviceTypes] CHECK CONSTRAINT [FK_NurseCallDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[NurseCallDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_NurseCallDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[NurseCallDeviceTypes] CHECK CONSTRAINT [FK_NurseCallDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[OpeningOnFloor]  WITH CHECK ADD  CONSTRAINT [FK_OpeningOnFloor_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Floors] ([Id])
GO
ALTER TABLE [dbo].[OpeningOnFloor] CHECK CONSTRAINT [FK_OpeningOnFloor_HostId]
GO
ALTER TABLE [dbo].[OpeningOnFloor]  WITH CHECK ADD  CONSTRAINT [FK_OpeningOnFloor_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Openings] ([Id])
GO
ALTER TABLE [dbo].[OpeningOnFloor] CHECK CONSTRAINT [FK_OpeningOnFloor_Id]
GO
ALTER TABLE [dbo].[OpeningOnWall]  WITH CHECK ADD  CONSTRAINT [FK_OpeningOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[OpeningOnWall] CHECK CONSTRAINT [FK_OpeningOnWall_HostId]
GO
ALTER TABLE [dbo].[OpeningOnWall]  WITH CHECK ADD  CONSTRAINT [FK_OpeningOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[Openings] ([Id])
GO
ALTER TABLE [dbo].[OpeningOnWall] CHECK CONSTRAINT [FK_OpeningOnWall_Id]
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesBranchPanel]  WITH CHECK ADD  CONSTRAINT [FK_PanelScheduleTemplatesBranchPanel_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesBranchPanel] CHECK CONSTRAINT [FK_PanelScheduleTemplatesBranchPanel_Opcióndediseño]
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesDataPanel]  WITH CHECK ADD  CONSTRAINT [FK_PanelScheduleTemplatesDataPanel_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesDataPanel] CHECK CONSTRAINT [FK_PanelScheduleTemplatesDataPanel_Opcióndediseño]
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesSwitchboard]  WITH CHECK ADD  CONSTRAINT [FK_PanelScheduleTemplatesSwitchboard_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PanelScheduleTemplatesSwitchboard] CHECK CONSTRAINT [FK_PanelScheduleTemplatesSwitchboard_Opcióndediseño]
GO
ALTER TABLE [dbo].[Parking]  WITH CHECK ADD  CONSTRAINT [FK_Parking_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Parking] CHECK CONSTRAINT [FK_Parking_Fasedecreación]
GO
ALTER TABLE [dbo].[Parking]  WITH CHECK ADD  CONSTRAINT [FK_Parking_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Parking] CHECK CONSTRAINT [FK_Parking_Fasedederribo]
GO
ALTER TABLE [dbo].[Parking]  WITH CHECK ADD  CONSTRAINT [FK_Parking_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[ParkingTypes] ([Id])
GO
ALTER TABLE [dbo].[Parking] CHECK CONSTRAINT [FK_Parking_IDdetipo]
GO
ALTER TABLE [dbo].[Parking]  WITH CHECK ADD  CONSTRAINT [FK_Parking_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Parking] CHECK CONSTRAINT [FK_Parking_Nivel]
GO
ALTER TABLE [dbo].[Parking]  WITH CHECK ADD  CONSTRAINT [FK_Parking_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Parking] CHECK CONSTRAINT [FK_Parking_Opcióndediseño]
GO
ALTER TABLE [dbo].[ParkingTypes]  WITH CHECK ADD  CONSTRAINT [FK_ParkingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[ParkingTypes] CHECK CONSTRAINT [FK_ParkingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[ParkingTypes]  WITH CHECK ADD  CONSTRAINT [FK_ParkingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[ParkingTypes] CHECK CONSTRAINT [FK_ParkingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeAccessories]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessories_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeAccessories] CHECK CONSTRAINT [FK_PipeAccessories_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeAccessories]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessories_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeAccessories] CHECK CONSTRAINT [FK_PipeAccessories_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeAccessories]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessories_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeAccessoryTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeAccessories] CHECK CONSTRAINT [FK_PipeAccessories_IDdetipo]
GO
ALTER TABLE [dbo].[PipeAccessories]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessories_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeAccessories] CHECK CONSTRAINT [FK_PipeAccessories_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeAccessoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessoryTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeAccessoryTypes] CHECK CONSTRAINT [FK_PipeAccessoryTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeAccessoryTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeAccessoryTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeAccessoryTypes] CHECK CONSTRAINT [FK_PipeAccessoryTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeConnections]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnections_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeConnections] CHECK CONSTRAINT [FK_PipeConnections_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeConnections]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnections_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeConnections] CHECK CONSTRAINT [FK_PipeConnections_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeConnections]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnections_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeConnectionTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeConnections] CHECK CONSTRAINT [FK_PipeConnections_IDdetipo]
GO
ALTER TABLE [dbo].[PipeConnections]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnections_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeConnections] CHECK CONSTRAINT [FK_PipeConnections_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeConnectionTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnectionTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeConnectionTypes] CHECK CONSTRAINT [FK_PipeConnectionTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeConnectionTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeConnectionTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeConnectionTypes] CHECK CONSTRAINT [FK_PipeConnectionTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeFittings]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeFittings] CHECK CONSTRAINT [FK_PipeFittings_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeFittings]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeFittings] CHECK CONSTRAINT [FK_PipeFittings_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeFittings]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeFittingTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeFittings] CHECK CONSTRAINT [FK_PipeFittings_IDdetipo]
GO
ALTER TABLE [dbo].[PipeFittings]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeFittings] CHECK CONSTRAINT [FK_PipeFittings_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeFittingTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeFittingTypes] CHECK CONSTRAINT [FK_PipeFittingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeFittingTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeFittingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeFittingTypes] CHECK CONSTRAINT [FK_PipeFittingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeInsulations]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulations_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeInsulations] CHECK CONSTRAINT [FK_PipeInsulations_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeInsulations]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulations_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeInsulations] CHECK CONSTRAINT [FK_PipeInsulations_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeInsulations]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulations_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeInsulationTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeInsulations] CHECK CONSTRAINT [FK_PipeInsulations_IDdetipo]
GO
ALTER TABLE [dbo].[PipeInsulations]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulations_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeInsulations] CHECK CONSTRAINT [FK_PipeInsulations_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulationTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeInsulationTypes] CHECK CONSTRAINT [FK_PipeInsulationTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeInsulationTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeInsulationTypes] CHECK CONSTRAINT [FK_PipeInsulationTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeMaterials]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterials_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeMaterials] CHECK CONSTRAINT [FK_PipeMaterials_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeMaterials]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterials_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeMaterials] CHECK CONSTRAINT [FK_PipeMaterials_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeMaterials]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterials_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeMaterialTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeMaterials] CHECK CONSTRAINT [FK_PipeMaterials_IDdetipo]
GO
ALTER TABLE [dbo].[PipeMaterials]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterials_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeMaterials] CHECK CONSTRAINT [FK_PipeMaterials_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeMaterialTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterialTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeMaterialTypes] CHECK CONSTRAINT [FK_PipeMaterialTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeMaterialTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeMaterialTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeMaterialTypes] CHECK CONSTRAINT [FK_PipeMaterialTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipePlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_PipePlaceholders_Estadodeflujo] FOREIGN KEY([Estadodeflujo])
REFERENCES [dbo].[PipeFlowStateEnums] ([Id])
GO
ALTER TABLE [dbo].[PipePlaceholders] CHECK CONSTRAINT [FK_PipePlaceholders_Estadodeflujo]
GO
ALTER TABLE [dbo].[PipePlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_PipePlaceholders_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipePlaceholders] CHECK CONSTRAINT [FK_PipePlaceholders_Fasedecreación]
GO
ALTER TABLE [dbo].[PipePlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_PipePlaceholders_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipePlaceholders] CHECK CONSTRAINT [FK_PipePlaceholders_Fasedederribo]
GO
ALTER TABLE [dbo].[PipePlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_PipePlaceholders_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeTypes] ([Id])
GO
ALTER TABLE [dbo].[PipePlaceholders] CHECK CONSTRAINT [FK_PipePlaceholders_IDdetipo]
GO
ALTER TABLE [dbo].[PipePlaceholders]  WITH CHECK ADD  CONSTRAINT [FK_PipePlaceholders_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipePlaceholders] CHECK CONSTRAINT [FK_PipePlaceholders_Opcióndediseño]
GO
ALTER TABLE [dbo].[Pipes]  WITH CHECK ADD  CONSTRAINT [FK_Pipes_Estadodeflujo] FOREIGN KEY([Estadodeflujo])
REFERENCES [dbo].[PipeFlowStateEnums] ([Id])
GO
ALTER TABLE [dbo].[Pipes] CHECK CONSTRAINT [FK_Pipes_Estadodeflujo]
GO
ALTER TABLE [dbo].[Pipes]  WITH CHECK ADD  CONSTRAINT [FK_Pipes_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Pipes] CHECK CONSTRAINT [FK_Pipes_Fasedecreación]
GO
ALTER TABLE [dbo].[Pipes]  WITH CHECK ADD  CONSTRAINT [FK_Pipes_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Pipes] CHECK CONSTRAINT [FK_Pipes_Fasedederribo]
GO
ALTER TABLE [dbo].[Pipes]  WITH CHECK ADD  CONSTRAINT [FK_Pipes_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeTypes] ([Id])
GO
ALTER TABLE [dbo].[Pipes] CHECK CONSTRAINT [FK_Pipes_IDdetipo]
GO
ALTER TABLE [dbo].[Pipes]  WITH CHECK ADD  CONSTRAINT [FK_Pipes_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Pipes] CHECK CONSTRAINT [FK_Pipes_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeSchedules]  WITH CHECK ADD  CONSTRAINT [FK_PipeSchedules_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeSchedules] CHECK CONSTRAINT [FK_PipeSchedules_Fasedecreación]
GO
ALTER TABLE [dbo].[PipeSchedules]  WITH CHECK ADD  CONSTRAINT [FK_PipeSchedules_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PipeSchedules] CHECK CONSTRAINT [FK_PipeSchedules_Fasedederribo]
GO
ALTER TABLE [dbo].[PipeSchedules]  WITH CHECK ADD  CONSTRAINT [FK_PipeSchedules_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PipeScheduleTypes] ([Id])
GO
ALTER TABLE [dbo].[PipeSchedules] CHECK CONSTRAINT [FK_PipeSchedules_IDdetipo]
GO
ALTER TABLE [dbo].[PipeSchedules]  WITH CHECK ADD  CONSTRAINT [FK_PipeSchedules_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeSchedules] CHECK CONSTRAINT [FK_PipeSchedules_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeScheduleTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeScheduleTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeScheduleTypes] CHECK CONSTRAINT [FK_PipeScheduleTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeScheduleTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeScheduleTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeScheduleTypes] CHECK CONSTRAINT [FK_PipeScheduleTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipeSegments]  WITH CHECK ADD  CONSTRAINT [FK_PipeSegments_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[PipeSegments] CHECK CONSTRAINT [FK_PipeSegments_Material]
GO
ALTER TABLE [dbo].[PipeSegments]  WITH CHECK ADD  CONSTRAINT [FK_PipeSegments_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipeSegments] CHECK CONSTRAINT [FK_PipeSegments_Opcióndediseño]
GO
ALTER TABLE [dbo].[PipeTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PipeTypes] CHECK CONSTRAINT [FK_PipeTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PipeTypes]  WITH CHECK ADD  CONSTRAINT [FK_PipeTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PipeTypes] CHECK CONSTRAINT [FK_PipeTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PipingSystems]  WITH CHECK ADD  CONSTRAINT [FK_PipingSystems_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PipingSystems] CHECK CONSTRAINT [FK_PipingSystems_Opcióndediseño]
GO
ALTER TABLE [dbo].[Planting]  WITH CHECK ADD  CONSTRAINT [FK_Planting_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Planting] CHECK CONSTRAINT [FK_Planting_Fasedecreación]
GO
ALTER TABLE [dbo].[Planting]  WITH CHECK ADD  CONSTRAINT [FK_Planting_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Planting] CHECK CONSTRAINT [FK_Planting_Fasedederribo]
GO
ALTER TABLE [dbo].[Planting]  WITH CHECK ADD  CONSTRAINT [FK_Planting_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PlantingTypes] ([Id])
GO
ALTER TABLE [dbo].[Planting] CHECK CONSTRAINT [FK_Planting_IDdetipo]
GO
ALTER TABLE [dbo].[Planting]  WITH CHECK ADD  CONSTRAINT [FK_Planting_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Planting] CHECK CONSTRAINT [FK_Planting_Opcióndediseño]
GO
ALTER TABLE [dbo].[PlantingTypes]  WITH CHECK ADD  CONSTRAINT [FK_PlantingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PlantingTypes] CHECK CONSTRAINT [FK_PlantingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PlantingTypes]  WITH CHECK ADD  CONSTRAINT [FK_PlantingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PlantingTypes] CHECK CONSTRAINT [FK_PlantingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PlumbingFixtureOnWall]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtureOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtureOnWall] CHECK CONSTRAINT [FK_PlumbingFixtureOnWall_HostId]
GO
ALTER TABLE [dbo].[PlumbingFixtureOnWall]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtureOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[PlumbingFixtures] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtureOnWall] CHECK CONSTRAINT [FK_PlumbingFixtureOnWall_Id]
GO
ALTER TABLE [dbo].[PlumbingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtures_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtures] CHECK CONSTRAINT [FK_PlumbingFixtures_Fasedecreación]
GO
ALTER TABLE [dbo].[PlumbingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtures_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtures] CHECK CONSTRAINT [FK_PlumbingFixtures_Fasedederribo]
GO
ALTER TABLE [dbo].[PlumbingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtures_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PlumbingFixtureTypes] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtures] CHECK CONSTRAINT [FK_PlumbingFixtures_IDdetipo]
GO
ALTER TABLE [dbo].[PlumbingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtures_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtures] CHECK CONSTRAINT [FK_PlumbingFixtures_Nivel]
GO
ALTER TABLE [dbo].[PlumbingFixtures]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtures_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PlumbingFixtures] CHECK CONSTRAINT [FK_PlumbingFixtures_Opcióndediseño]
GO
ALTER TABLE [dbo].[PlumbingFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtureTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PlumbingFixtureTypes] CHECK CONSTRAINT [FK_PlumbingFixtureTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PlumbingFixtureTypes]  WITH CHECK ADD  CONSTRAINT [FK_PlumbingFixtureTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PlumbingFixtureTypes] CHECK CONSTRAINT [FK_PlumbingFixtureTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PointLoads]  WITH CHECK ADD  CONSTRAINT [FK_PointLoads_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PointLoads] CHECK CONSTRAINT [FK_PointLoads_Fasedecreación]
GO
ALTER TABLE [dbo].[PointLoads]  WITH CHECK ADD  CONSTRAINT [FK_PointLoads_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[PointLoads] CHECK CONSTRAINT [FK_PointLoads_Fasedederribo]
GO
ALTER TABLE [dbo].[PointLoads]  WITH CHECK ADD  CONSTRAINT [FK_PointLoads_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PointLoads] CHECK CONSTRAINT [FK_PointLoads_Opcióndediseño]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Códigodemontaje]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[PropertyLines]  WITH CHECK ADD  CONSTRAINT [FK_PropertyLines_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[PropertyLineTypes] ([Id])
GO
ALTER TABLE [dbo].[PropertyLines] CHECK CONSTRAINT [FK_PropertyLines_IDdetipo]
GO
ALTER TABLE [dbo].[PropertyLines]  WITH CHECK ADD  CONSTRAINT [FK_PropertyLines_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[PropertyLines] CHECK CONSTRAINT [FK_PropertyLines_Opcióndediseño]
GO
ALTER TABLE [dbo].[PropertyLineTypes]  WITH CHECK ADD  CONSTRAINT [FK_PropertyLineTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[PropertyLineTypes] CHECK CONSTRAINT [FK_PropertyLineTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[PropertyLineTypes]  WITH CHECK ADD  CONSTRAINT [FK_PropertyLineTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[PropertyLineTypes] CHECK CONSTRAINT [FK_PropertyLineTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Railings]  WITH CHECK ADD  CONSTRAINT [FK_Railings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Railings] CHECK CONSTRAINT [FK_Railings_Fasedecreación]
GO
ALTER TABLE [dbo].[Railings]  WITH CHECK ADD  CONSTRAINT [FK_Railings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Railings] CHECK CONSTRAINT [FK_Railings_Fasedederribo]
GO
ALTER TABLE [dbo].[Railings]  WITH CHECK ADD  CONSTRAINT [FK_Railings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[RailingTypes] ([Id])
GO
ALTER TABLE [dbo].[Railings] CHECK CONSTRAINT [FK_Railings_IDdetipo]
GO
ALTER TABLE [dbo].[Railings]  WITH CHECK ADD  CONSTRAINT [FK_Railings_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Railings] CHECK CONSTRAINT [FK_Railings_Nivelbase]
GO
ALTER TABLE [dbo].[Railings]  WITH CHECK ADD  CONSTRAINT [FK_Railings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Railings] CHECK CONSTRAINT [FK_Railings_Opcióndediseño]
GO
ALTER TABLE [dbo].[RailingTypes]  WITH CHECK ADD  CONSTRAINT [FK_RailingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[RailingTypes] CHECK CONSTRAINT [FK_RailingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[RailingTypes]  WITH CHECK ADD  CONSTRAINT [FK_RailingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[RailingTypes] CHECK CONSTRAINT [FK_RailingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Fasedecreación]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Fasedederribo]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[RampTypes] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_IDdetipo]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Nivelbase]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Nivelsuperior] FOREIGN KEY([Nivelsuperior])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Nivelsuperior]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Nivelsuperiordeedificiomultiplanta] FOREIGN KEY([Nivelsuperiordeedificiomultiplanta])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Nivelsuperiordeedificiomultiplanta]
GO
ALTER TABLE [dbo].[Ramps]  WITH CHECK ADD  CONSTRAINT [FK_Ramps_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Ramps] CHECK CONSTRAINT [FK_Ramps_Opcióndediseño]
GO
ALTER TABLE [dbo].[RampTypes]  WITH CHECK ADD  CONSTRAINT [FK_RampTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[RampTypes] CHECK CONSTRAINT [FK_RampTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[RampTypes]  WITH CHECK ADD  CONSTRAINT [FK_RampTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[RampTypes] CHECK CONSTRAINT [FK_RampTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[RebarOnColumn]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnColumn_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[StructuralColumns] ([Id])
GO
ALTER TABLE [dbo].[RebarOnColumn] CHECK CONSTRAINT [FK_RebarOnColumn_HostId]
GO
ALTER TABLE [dbo].[RebarOnColumn]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnColumn_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[StructuralRebar] ([Id])
GO
ALTER TABLE [dbo].[RebarOnColumn] CHECK CONSTRAINT [FK_RebarOnColumn_Id]
GO
ALTER TABLE [dbo].[RebarOnFloor]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFloor_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Floors] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFloor] CHECK CONSTRAINT [FK_RebarOnFloor_HostId]
GO
ALTER TABLE [dbo].[RebarOnFloor]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFloor_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[StructuralRebar] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFloor] CHECK CONSTRAINT [FK_RebarOnFloor_Id]
GO
ALTER TABLE [dbo].[RebarOnFoundation]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFoundation_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[StructuralFoundations] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFoundation] CHECK CONSTRAINT [FK_RebarOnFoundation_HostId]
GO
ALTER TABLE [dbo].[RebarOnFoundation]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFoundation_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[StructuralRebar] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFoundation] CHECK CONSTRAINT [FK_RebarOnFoundation_Id]
GO
ALTER TABLE [dbo].[RebarOnFraming]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFraming_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[StructuralFraming] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFraming] CHECK CONSTRAINT [FK_RebarOnFraming_HostId]
GO
ALTER TABLE [dbo].[RebarOnFraming]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnFraming_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[StructuralRebar] ([Id])
GO
ALTER TABLE [dbo].[RebarOnFraming] CHECK CONSTRAINT [FK_RebarOnFraming_Id]
GO
ALTER TABLE [dbo].[RebarOnWall]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnWall_HostId] FOREIGN KEY([HostId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[RebarOnWall] CHECK CONSTRAINT [FK_RebarOnWall_HostId]
GO
ALTER TABLE [dbo].[RebarOnWall]  WITH CHECK ADD  CONSTRAINT [FK_RebarOnWall_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[StructuralRebar] ([Id])
GO
ALTER TABLE [dbo].[RebarOnWall] CHECK CONSTRAINT [FK_RebarOnWall_Id]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Cortedealero] FOREIGN KEY([Cortedealero])
REFERENCES [dbo].[EaveCutterTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Cortedealero]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Fasedecreación]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Fasedederribo]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[RoofTypes] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_IDdetipo]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Nivelbase]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Niveldellímite] FOREIGN KEY([Niveldellímite])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Niveldellímite]
GO
ALTER TABLE [dbo].[Roofs]  WITH CHECK ADD  CONSTRAINT [FK_Roofs_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Roofs] CHECK CONSTRAINT [FK_Roofs_Opcióndediseño]
GO
ALTER TABLE [dbo].[RoofTypes]  WITH CHECK ADD  CONSTRAINT [FK_RoofTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[RoofTypes] CHECK CONSTRAINT [FK_RoofTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[RoofTypes]  WITH CHECK ADD  CONSTRAINT [FK_RoofTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[RoofTypes] CHECK CONSTRAINT [FK_RoofTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[RoomAssociations]  WITH CHECK ADD  CONSTRAINT [FK_RoomAssociations_PhaseId] FOREIGN KEY([PhaseId])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[RoomAssociations] CHECK CONSTRAINT [FK_RoomAssociations_PhaseId]
GO
ALTER TABLE [dbo].[RoomAssociations]  WITH CHECK ADD  CONSTRAINT [FK_RoomAssociations_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[RoomAssociations] CHECK CONSTRAINT [FK_RoomAssociations_RoomId]
GO
ALTER TABLE [dbo].[RoomFromToAssociations]  WITH CHECK ADD  CONSTRAINT [FK_RoomFromToAssociations_FromRoom] FOREIGN KEY([FromRoom])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[RoomFromToAssociations] CHECK CONSTRAINT [FK_RoomFromToAssociations_FromRoom]
GO
ALTER TABLE [dbo].[RoomFromToAssociations]  WITH CHECK ADD  CONSTRAINT [FK_RoomFromToAssociations_PhaseId] FOREIGN KEY([PhaseId])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[RoomFromToAssociations] CHECK CONSTRAINT [FK_RoomFromToAssociations_PhaseId]
GO
ALTER TABLE [dbo].[RoomFromToAssociations]  WITH CHECK ADD  CONSTRAINT [FK_RoomFromToAssociations_ToRoom] FOREIGN KEY([ToRoom])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[RoomFromToAssociations] CHECK CONSTRAINT [FK_RoomFromToAssociations_ToRoom]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_IDdefase] FOREIGN KEY([IDdefase])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_IDdefase]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Nivel]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Opcióndediseño]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[SecurityDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_IDdetipo]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_Nivel]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_Niveldetabladeplanificación] FOREIGN KEY([Niveldetabladeplanificación])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_Niveldetabladeplanificación]
GO
ALTER TABLE [dbo].[SecurityDevices]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[SecurityDevices] CHECK CONSTRAINT [FK_SecurityDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[SecurityDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[SecurityDeviceTypes] CHECK CONSTRAINT [FK_SecurityDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[SecurityDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_SecurityDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[SecurityDeviceTypes] CHECK CONSTRAINT [FK_SecurityDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_Site_Fasedecreación]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_Site_Fasedederribo]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[SiteTypes] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_Site_IDdetipo]
GO
ALTER TABLE [dbo].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Site] CHECK CONSTRAINT [FK_Site_Opcióndediseño]
GO
ALTER TABLE [dbo].[SiteTypes]  WITH CHECK ADD  CONSTRAINT [FK_SiteTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[SiteTypes] CHECK CONSTRAINT [FK_SiteTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[SiteTypes]  WITH CHECK ADD  CONSTRAINT [FK_SiteTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[SiteTypes] CHECK CONSTRAINT [FK_SiteTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[SlabEdges]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdges_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SlabEdges] CHECK CONSTRAINT [FK_SlabEdges_Fasedecreación]
GO
ALTER TABLE [dbo].[SlabEdges]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdges_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SlabEdges] CHECK CONSTRAINT [FK_SlabEdges_Fasedederribo]
GO
ALTER TABLE [dbo].[SlabEdges]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdges_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[SlabEdgeTypes] ([Id])
GO
ALTER TABLE [dbo].[SlabEdges] CHECK CONSTRAINT [FK_SlabEdges_IDdetipo]
GO
ALTER TABLE [dbo].[SlabEdges]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdges_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[SlabEdges] CHECK CONSTRAINT [FK_SlabEdges_Opcióndediseño]
GO
ALTER TABLE [dbo].[SlabEdgeTypes]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdgeTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[SlabEdgeTypes] CHECK CONSTRAINT [FK_SlabEdgeTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[SlabEdgeTypes]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdgeTypes_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[SlabEdgeTypes] CHECK CONSTRAINT [FK_SlabEdgeTypes_Material]
GO
ALTER TABLE [dbo].[SlabEdgeTypes]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdgeTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[SlabEdgeTypes] CHECK CONSTRAINT [FK_SlabEdgeTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[SlabEdgeTypes]  WITH CHECK ADD  CONSTRAINT [FK_SlabEdgeTypes_Perfil] FOREIGN KEY([Perfil])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[SlabEdgeTypes] CHECK CONSTRAINT [FK_SlabEdgeTypes_Perfil]
GO
ALTER TABLE [dbo].[SpaceAssociations]  WITH CHECK ADD  CONSTRAINT [FK_SpaceAssociations_PhaseId] FOREIGN KEY([PhaseId])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SpaceAssociations] CHECK CONSTRAINT [FK_SpaceAssociations_PhaseId]
GO
ALTER TABLE [dbo].[SpaceAssociations]  WITH CHECK ADD  CONSTRAINT [FK_SpaceAssociations_SpaceId] FOREIGN KEY([SpaceId])
REFERENCES [dbo].[Spaces] ([Id])
GO
ALTER TABLE [dbo].[SpaceAssociations] CHECK CONSTRAINT [FK_SpaceAssociations_SpaceId]
GO
ALTER TABLE [dbo].[Spaces]  WITH CHECK ADD  CONSTRAINT [FK_Spaces_IDdefase] FOREIGN KEY([IDdefase])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Spaces] CHECK CONSTRAINT [FK_Spaces_IDdefase]
GO
ALTER TABLE [dbo].[Spaces]  WITH CHECK ADD  CONSTRAINT [FK_Spaces_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Spaces] CHECK CONSTRAINT [FK_Spaces_Nivel]
GO
ALTER TABLE [dbo].[Spaces]  WITH CHECK ADD  CONSTRAINT [FK_Spaces_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Spaces] CHECK CONSTRAINT [FK_Spaces_Opcióndediseño]
GO
ALTER TABLE [dbo].[Spaces]  WITH CHECK ADD  CONSTRAINT [FK_Spaces_Tipodeacondicionamiento] FOREIGN KEY([Tipodeacondicionamiento])
REFERENCES [dbo].[ConditionTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[Spaces] CHECK CONSTRAINT [FK_Spaces_Tipodeacondicionamiento]
GO
ALTER TABLE [dbo].[Spaces]  WITH CHECK ADD  CONSTRAINT [FK_Spaces_Tipodeespacio] FOREIGN KEY([Tipodeespacio])
REFERENCES [dbo].[SpaceTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[Spaces] CHECK CONSTRAINT [FK_Spaces_Tipodeespacio]
GO
ALTER TABLE [dbo].[SpaceTypeSettings]  WITH CHECK ADD  CONSTRAINT [FK_SpaceTypeSettings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[SpaceTypeSettings] CHECK CONSTRAINT [FK_SpaceTypeSettings_Opcióndediseño]
GO
ALTER TABLE [dbo].[SpecialtyEquipment]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipment_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SpecialtyEquipment] CHECK CONSTRAINT [FK_SpecialtyEquipment_Fasedecreación]
GO
ALTER TABLE [dbo].[SpecialtyEquipment]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipment_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[SpecialtyEquipment] CHECK CONSTRAINT [FK_SpecialtyEquipment_Fasedederribo]
GO
ALTER TABLE [dbo].[SpecialtyEquipment]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipment_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[SpecialtyEquipmentTypes] ([Id])
GO
ALTER TABLE [dbo].[SpecialtyEquipment] CHECK CONSTRAINT [FK_SpecialtyEquipment_IDdetipo]
GO
ALTER TABLE [dbo].[SpecialtyEquipment]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipment_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[SpecialtyEquipment] CHECK CONSTRAINT [FK_SpecialtyEquipment_Nivel]
GO
ALTER TABLE [dbo].[SpecialtyEquipment]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipment_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[SpecialtyEquipment] CHECK CONSTRAINT [FK_SpecialtyEquipment_Opcióndediseño]
GO
ALTER TABLE [dbo].[SpecialtyEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipmentTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[SpecialtyEquipmentTypes] CHECK CONSTRAINT [FK_SpecialtyEquipmentTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[SpecialtyEquipmentTypes]  WITH CHECK ADD  CONSTRAINT [FK_SpecialtyEquipmentTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[SpecialtyEquipmentTypes] CHECK CONSTRAINT [FK_SpecialtyEquipmentTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Sprinklers]  WITH CHECK ADD  CONSTRAINT [FK_Sprinklers_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Sprinklers] CHECK CONSTRAINT [FK_Sprinklers_Fasedecreación]
GO
ALTER TABLE [dbo].[Sprinklers]  WITH CHECK ADD  CONSTRAINT [FK_Sprinklers_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Sprinklers] CHECK CONSTRAINT [FK_Sprinklers_Fasedederribo]
GO
ALTER TABLE [dbo].[Sprinklers]  WITH CHECK ADD  CONSTRAINT [FK_Sprinklers_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[SprinklerTypes] ([Id])
GO
ALTER TABLE [dbo].[Sprinklers] CHECK CONSTRAINT [FK_Sprinklers_IDdetipo]
GO
ALTER TABLE [dbo].[Sprinklers]  WITH CHECK ADD  CONSTRAINT [FK_Sprinklers_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Sprinklers] CHECK CONSTRAINT [FK_Sprinklers_Nivel]
GO
ALTER TABLE [dbo].[Sprinklers]  WITH CHECK ADD  CONSTRAINT [FK_Sprinklers_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Sprinklers] CHECK CONSTRAINT [FK_Sprinklers_Opcióndediseño]
GO
ALTER TABLE [dbo].[SprinklerTypes]  WITH CHECK ADD  CONSTRAINT [FK_SprinklerTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[SprinklerTypes] CHECK CONSTRAINT [FK_SprinklerTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[SprinklerTypes]  WITH CHECK ADD  CONSTRAINT [FK_SprinklerTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[SprinklerTypes] CHECK CONSTRAINT [FK_SprinklerTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Fasedecreación]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Fasedederribo]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StairTypes] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_IDdetipo]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Nivelbase]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Nivelsuperior] FOREIGN KEY([Nivelsuperior])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Nivelsuperior]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Nivelsuperiordeedificiomultiplanta] FOREIGN KEY([Nivelsuperiordeedificiomultiplanta])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Nivelsuperiordeedificiomultiplanta]
GO
ALTER TABLE [dbo].[Stairs]  WITH CHECK ADD  CONSTRAINT [FK_Stairs_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Stairs] CHECK CONSTRAINT [FK_Stairs_Opcióndediseño]
GO
ALTER TABLE [dbo].[StairTypes]  WITH CHECK ADD  CONSTRAINT [FK_StairTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StairTypes] CHECK CONSTRAINT [FK_StairTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StairTypes]  WITH CHECK ADD  CONSTRAINT [FK_StairTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StairTypes] CHECK CONSTRAINT [FK_StairTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralColumnTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_Nivelbase] FOREIGN KEY([Nivelbase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_Nivelbase]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_Nivelsuperior] FOREIGN KEY([Nivelsuperior])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_Nivelsuperior]
GO
ALTER TABLE [dbo].[StructuralColumns]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumns_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralColumns] CHECK CONSTRAINT [FK_StructuralColumns_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralColumnTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumnTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralColumnTypes] CHECK CONSTRAINT [FK_StructuralColumnTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralColumnTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralColumnTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralColumnTypes] CHECK CONSTRAINT [FK_StructuralColumnTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcement_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement] CHECK CONSTRAINT [FK_StructuralFabricReinforcement_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcement_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement] CHECK CONSTRAINT [FK_StructuralFabricReinforcement_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcement_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralFabricReinforcementTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement] CHECK CONSTRAINT [FK_StructuralFabricReinforcement_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcement_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement] CHECK CONSTRAINT [FK_StructuralFabricReinforcement_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcement_Ubicación] FOREIGN KEY([Ubicación])
REFERENCES [dbo].[FabricLocationEnums] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcement] CHECK CONSTRAINT [FK_StructuralFabricReinforcement_Ubicación]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcementTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes] CHECK CONSTRAINT [FK_StructuralFabricReinforcementTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcementTypes_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes] CHECK CONSTRAINT [FK_StructuralFabricReinforcementTypes_Material]
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFabricReinforcementTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralFabricReinforcementTypes] CHECK CONSTRAINT [FK_StructuralFabricReinforcementTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralFoundations]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundations_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFoundations] CHECK CONSTRAINT [FK_StructuralFoundations_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralFoundations]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundations_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFoundations] CHECK CONSTRAINT [FK_StructuralFoundations_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralFoundations]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundations_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralFoundationTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralFoundations] CHECK CONSTRAINT [FK_StructuralFoundations_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralFoundations]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundations_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralFoundations] CHECK CONSTRAINT [FK_StructuralFoundations_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralFoundationTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundationTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralFoundationTypes] CHECK CONSTRAINT [FK_StructuralFoundationTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralFoundationTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFoundationTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralFoundationTypes] CHECK CONSTRAINT [FK_StructuralFoundationTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralFramingTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Nivel]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Niveldereferencia] FOREIGN KEY([Niveldereferencia])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Niveldereferencia]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralFraming]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFraming_Usoestructural] FOREIGN KEY([Usoestructural])
REFERENCES [dbo].[InstanceUsageEnums] ([Id])
GO
ALTER TABLE [dbo].[StructuralFraming] CHECK CONSTRAINT [FK_StructuralFraming_Usoestructural]
GO
ALTER TABLE [dbo].[StructuralFramingTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFramingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralFramingTypes] CHECK CONSTRAINT [FK_StructuralFramingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralFramingTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralFramingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralFramingTypes] CHECK CONSTRAINT [FK_StructuralFramingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Estilo] FOREIGN KEY([Estilo])
REFERENCES [dbo].[RebarStyleEnums] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Estilo]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Forma] FOREIGN KEY([Forma])
REFERENCES [dbo].[StructuralRebarShapes] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Forma]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Ganchoalfinal] FOREIGN KEY([Ganchoalfinal])
REFERENCES [dbo].[StructuralRebarHookTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Ganchoalfinal]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Ganchoalinicio] FOREIGN KEY([Ganchoalinicio])
REFERENCES [dbo].[StructuralRebarHookTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Ganchoalinicio]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralRebarBarTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralRebar]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebar_Regladediseño] FOREIGN KEY([Regladediseño])
REFERENCES [dbo].[RebarLayoutEnums] ([Id])
GO
ALTER TABLE [dbo].[StructuralRebar] CHECK CONSTRAINT [FK_StructuralRebar_Regladediseño]
GO
ALTER TABLE [dbo].[StructuralRebarBarTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarBarTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralRebarBarTypes] CHECK CONSTRAINT [FK_StructuralRebarBarTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralRebarBarTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarBarTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralRebarBarTypes] CHECK CONSTRAINT [FK_StructuralRebarBarTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralRebarHookTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarHookTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralRebarHookTypes] CHECK CONSTRAINT [FK_StructuralRebarHookTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralRebarHookTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarHookTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralRebarHookTypes] CHECK CONSTRAINT [FK_StructuralRebarHookTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralRebarShapes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarShapes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralRebarShapes] CHECK CONSTRAINT [FK_StructuralRebarShapes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralRebarShapes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralRebarShapes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralRebarShapes] CHECK CONSTRAINT [FK_StructuralRebarShapes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralStiffeners]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffeners_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralStiffeners] CHECK CONSTRAINT [FK_StructuralStiffeners_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralStiffeners]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffeners_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralStiffeners] CHECK CONSTRAINT [FK_StructuralStiffeners_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralStiffeners]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffeners_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralStiffenerTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralStiffeners] CHECK CONSTRAINT [FK_StructuralStiffeners_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralStiffeners]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffeners_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralStiffeners] CHECK CONSTRAINT [FK_StructuralStiffeners_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralStiffenerTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffenerTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralStiffenerTypes] CHECK CONSTRAINT [FK_StructuralStiffenerTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralStiffenerTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralStiffenerTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralStiffenerTypes] CHECK CONSTRAINT [FK_StructuralStiffenerTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[StructuralTrusses]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrusses_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralTrusses] CHECK CONSTRAINT [FK_StructuralTrusses_Fasedecreación]
GO
ALTER TABLE [dbo].[StructuralTrusses]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrusses_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[StructuralTrusses] CHECK CONSTRAINT [FK_StructuralTrusses_Fasedederribo]
GO
ALTER TABLE [dbo].[StructuralTrusses]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrusses_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[StructuralTrussTypes] ([Id])
GO
ALTER TABLE [dbo].[StructuralTrusses] CHECK CONSTRAINT [FK_StructuralTrusses_IDdetipo]
GO
ALTER TABLE [dbo].[StructuralTrusses]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrusses_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[StructuralTrusses] CHECK CONSTRAINT [FK_StructuralTrusses_Opcióndediseño]
GO
ALTER TABLE [dbo].[StructuralTrussTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrussTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[StructuralTrussTypes] CHECK CONSTRAINT [FK_StructuralTrussTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[StructuralTrussTypes]  WITH CHECK ADD  CONSTRAINT [FK_StructuralTrussTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[StructuralTrussTypes] CHECK CONSTRAINT [FK_StructuralTrussTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[SwitchSystem]  WITH CHECK ADD  CONSTRAINT [FK_SwitchSystem_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[SwitchSystem] CHECK CONSTRAINT [FK_SwitchSystem_Opcióndediseño]
GO
ALTER TABLE [dbo].[TelephoneDevices]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDevices_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[TelephoneDevices] CHECK CONSTRAINT [FK_TelephoneDevices_Fasedecreación]
GO
ALTER TABLE [dbo].[TelephoneDevices]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDevices_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[TelephoneDevices] CHECK CONSTRAINT [FK_TelephoneDevices_Fasedederribo]
GO
ALTER TABLE [dbo].[TelephoneDevices]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDevices_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[TelephoneDeviceTypes] ([Id])
GO
ALTER TABLE [dbo].[TelephoneDevices] CHECK CONSTRAINT [FK_TelephoneDevices_IDdetipo]
GO
ALTER TABLE [dbo].[TelephoneDevices]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDevices_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[TelephoneDevices] CHECK CONSTRAINT [FK_TelephoneDevices_Nivel]
GO
ALTER TABLE [dbo].[TelephoneDevices]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDevices_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[TelephoneDevices] CHECK CONSTRAINT [FK_TelephoneDevices_Opcióndediseño]
GO
ALTER TABLE [dbo].[TelephoneDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDeviceTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[TelephoneDeviceTypes] CHECK CONSTRAINT [FK_TelephoneDeviceTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[TelephoneDeviceTypes]  WITH CHECK ADD  CONSTRAINT [FK_TelephoneDeviceTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[TelephoneDeviceTypes] CHECK CONSTRAINT [FK_TelephoneDeviceTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Topography]  WITH CHECK ADD  CONSTRAINT [FK_Topography_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Topography] CHECK CONSTRAINT [FK_Topography_Fasedecreación]
GO
ALTER TABLE [dbo].[Topography]  WITH CHECK ADD  CONSTRAINT [FK_Topography_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Topography] CHECK CONSTRAINT [FK_Topography_Fasedederribo]
GO
ALTER TABLE [dbo].[Topography]  WITH CHECK ADD  CONSTRAINT [FK_Topography_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[TopographyTypes] ([Id])
GO
ALTER TABLE [dbo].[Topography] CHECK CONSTRAINT [FK_Topography_IDdetipo]
GO
ALTER TABLE [dbo].[Topography]  WITH CHECK ADD  CONSTRAINT [FK_Topography_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Topography] CHECK CONSTRAINT [FK_Topography_Opcióndediseño]
GO
ALTER TABLE [dbo].[TopographyTypes]  WITH CHECK ADD  CONSTRAINT [FK_TopographyTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[TopographyTypes] CHECK CONSTRAINT [FK_TopographyTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[TopographyTypes]  WITH CHECK ADD  CONSTRAINT [FK_TopographyTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[TopographyTypes] CHECK CONSTRAINT [FK_TopographyTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Views]  WITH CHECK ADD  CONSTRAINT [FK_Views_Fase] FOREIGN KEY([Fase])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Views] CHECK CONSTRAINT [FK_Views_Fase]
GO
ALTER TABLE [dbo].[Voltages]  WITH CHECK ADD  CONSTRAINT [FK_Voltages_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Voltages] CHECK CONSTRAINT [FK_Voltages_Fasedecreación]
GO
ALTER TABLE [dbo].[Voltages]  WITH CHECK ADD  CONSTRAINT [FK_Voltages_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Voltages] CHECK CONSTRAINT [FK_Voltages_Fasedederribo]
GO
ALTER TABLE [dbo].[Voltages]  WITH CHECK ADD  CONSTRAINT [FK_Voltages_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[VoltageTypes] ([Id])
GO
ALTER TABLE [dbo].[Voltages] CHECK CONSTRAINT [FK_Voltages_IDdetipo]
GO
ALTER TABLE [dbo].[Voltages]  WITH CHECK ADD  CONSTRAINT [FK_Voltages_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Voltages] CHECK CONSTRAINT [FK_Voltages_Opcióndediseño]
GO
ALTER TABLE [dbo].[VoltageTypes]  WITH CHECK ADD  CONSTRAINT [FK_VoltageTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[VoltageTypes] CHECK CONSTRAINT [FK_VoltageTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[VoltageTypes]  WITH CHECK ADD  CONSTRAINT [FK_VoltageTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[VoltageTypes] CHECK CONSTRAINT [FK_VoltageTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Fasedecreación]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Fasedederribo]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WallTypes] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_IDdetipo]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Opcióndediseño]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Restriccióndebase] FOREIGN KEY([Restriccióndebase])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Restriccióndebase]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Restricciónsuperior] FOREIGN KEY([Restricciónsuperior])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Restricciónsuperior]
GO
ALTER TABLE [dbo].[Walls]  WITH CHECK ADD  CONSTRAINT [FK_Walls_Usoestructural] FOREIGN KEY([Usoestructural])
REFERENCES [dbo].[WallUsageEnums] ([Id])
GO
ALTER TABLE [dbo].[Walls] CHECK CONSTRAINT [FK_Walls_Usoestructural]
GO
ALTER TABLE [dbo].[WallSweeps]  WITH CHECK ADD  CONSTRAINT [FK_WallSweeps_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WallSweeps] CHECK CONSTRAINT [FK_WallSweeps_Fasedecreación]
GO
ALTER TABLE [dbo].[WallSweeps]  WITH CHECK ADD  CONSTRAINT [FK_WallSweeps_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WallSweeps] CHECK CONSTRAINT [FK_WallSweeps_Fasedederribo]
GO
ALTER TABLE [dbo].[WallSweeps]  WITH CHECK ADD  CONSTRAINT [FK_WallSweeps_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WallSweepTypes] ([Id])
GO
ALTER TABLE [dbo].[WallSweeps] CHECK CONSTRAINT [FK_WallSweeps_IDdetipo]
GO
ALTER TABLE [dbo].[WallSweeps]  WITH CHECK ADD  CONSTRAINT [FK_WallSweeps_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[WallSweeps] CHECK CONSTRAINT [FK_WallSweeps_Opcióndediseño]
GO
ALTER TABLE [dbo].[WallSweepTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallSweepTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WallSweepTypes] CHECK CONSTRAINT [FK_WallSweepTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WallSweepTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallSweepTypes_Material] FOREIGN KEY([Material])
REFERENCES [dbo].[Materials] ([Id])
GO
ALTER TABLE [dbo].[WallSweepTypes] CHECK CONSTRAINT [FK_WallSweepTypes_Material]
GO
ALTER TABLE [dbo].[WallSweepTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallSweepTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WallSweepTypes] CHECK CONSTRAINT [FK_WallSweepTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[WallSweepTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallSweepTypes_Perfil] FOREIGN KEY([Perfil])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[WallSweepTypes] CHECK CONSTRAINT [FK_WallSweepTypes_Perfil]
GO
ALTER TABLE [dbo].[WallTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WallTypes] CHECK CONSTRAINT [FK_WallTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WallTypes]  WITH CHECK ADD  CONSTRAINT [FK_WallTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WallTypes] CHECK CONSTRAINT [FK_WallTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Fasedecreación]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Fasedederribo]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WindowTypes] ([Id])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_IDdetipo]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Nivel] FOREIGN KEY([Nivel])
REFERENCES [dbo].[Levels] ([Id])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Nivel]
GO
ALTER TABLE [dbo].[Windows]  WITH CHECK ADD  CONSTRAINT [FK_Windows_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Windows] CHECK CONSTRAINT [FK_Windows_Opcióndediseño]
GO
ALTER TABLE [dbo].[WindowTypes]  WITH CHECK ADD  CONSTRAINT [FK_WindowTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WindowTypes] CHECK CONSTRAINT [FK_WindowTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WindowTypes]  WITH CHECK ADD  CONSTRAINT [FK_WindowTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WindowTypes] CHECK CONSTRAINT [FK_WindowTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[WindowWall]  WITH CHECK ADD  CONSTRAINT [FK_WindowWall_WallId] FOREIGN KEY([WallId])
REFERENCES [dbo].[Walls] ([Id])
GO
ALTER TABLE [dbo].[WindowWall] CHECK CONSTRAINT [FK_WindowWall_WallId]
GO
ALTER TABLE [dbo].[WindowWall]  WITH CHECK ADD  CONSTRAINT [FK_WindowWall_WindowId] FOREIGN KEY([WindowId])
REFERENCES [dbo].[Windows] ([Id])
GO
ALTER TABLE [dbo].[WindowWall] CHECK CONSTRAINT [FK_WindowWall_WindowId]
GO
ALTER TABLE [dbo].[WireInsulations]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulations_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireInsulations] CHECK CONSTRAINT [FK_WireInsulations_Fasedecreación]
GO
ALTER TABLE [dbo].[WireInsulations]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulations_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireInsulations] CHECK CONSTRAINT [FK_WireInsulations_Fasedederribo]
GO
ALTER TABLE [dbo].[WireInsulations]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulations_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WireInsulationTypes] ([Id])
GO
ALTER TABLE [dbo].[WireInsulations] CHECK CONSTRAINT [FK_WireInsulations_IDdetipo]
GO
ALTER TABLE [dbo].[WireInsulations]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulations_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[WireInsulations] CHECK CONSTRAINT [FK_WireInsulations_Opcióndediseño]
GO
ALTER TABLE [dbo].[WireInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulationTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WireInsulationTypes] CHECK CONSTRAINT [FK_WireInsulationTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WireInsulationTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireInsulationTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WireInsulationTypes] CHECK CONSTRAINT [FK_WireInsulationTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[WireMaterials]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterials_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireMaterials] CHECK CONSTRAINT [FK_WireMaterials_Fasedecreación]
GO
ALTER TABLE [dbo].[WireMaterials]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterials_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireMaterials] CHECK CONSTRAINT [FK_WireMaterials_Fasedederribo]
GO
ALTER TABLE [dbo].[WireMaterials]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterials_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WireMaterialTypes] ([Id])
GO
ALTER TABLE [dbo].[WireMaterials] CHECK CONSTRAINT [FK_WireMaterials_IDdetipo]
GO
ALTER TABLE [dbo].[WireMaterials]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterials_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[WireMaterials] CHECK CONSTRAINT [FK_WireMaterials_Opcióndediseño]
GO
ALTER TABLE [dbo].[WireMaterialTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterialTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WireMaterialTypes] CHECK CONSTRAINT [FK_WireMaterialTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WireMaterialTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireMaterialTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WireMaterialTypes] CHECK CONSTRAINT [FK_WireMaterialTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[Wires]  WITH CHECK ADD  CONSTRAINT [FK_Wires_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Wires] CHECK CONSTRAINT [FK_Wires_Fasedecreación]
GO
ALTER TABLE [dbo].[Wires]  WITH CHECK ADD  CONSTRAINT [FK_Wires_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[Wires] CHECK CONSTRAINT [FK_Wires_Fasedederribo]
GO
ALTER TABLE [dbo].[Wires]  WITH CHECK ADD  CONSTRAINT [FK_Wires_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WireTypes] ([Id])
GO
ALTER TABLE [dbo].[Wires] CHECK CONSTRAINT [FK_Wires_IDdetipo]
GO
ALTER TABLE [dbo].[Wires]  WITH CHECK ADD  CONSTRAINT [FK_Wires_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[Wires] CHECK CONSTRAINT [FK_Wires_Opcióndediseño]
GO
ALTER TABLE [dbo].[Wires]  WITH CHECK ADD  CONSTRAINT [FK_Wires_Tipo] FOREIGN KEY([Tipo])
REFERENCES [dbo].[WiringTypeEnums] ([Id])
GO
ALTER TABLE [dbo].[Wires] CHECK CONSTRAINT [FK_Wires_Tipo]
GO
ALTER TABLE [dbo].[WireTemperatureRatings]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatings_Fasedecreación] FOREIGN KEY([Fasedecreación])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireTemperatureRatings] CHECK CONSTRAINT [FK_WireTemperatureRatings_Fasedecreación]
GO
ALTER TABLE [dbo].[WireTemperatureRatings]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatings_Fasedederribo] FOREIGN KEY([Fasedederribo])
REFERENCES [dbo].[Phases] ([Id])
GO
ALTER TABLE [dbo].[WireTemperatureRatings] CHECK CONSTRAINT [FK_WireTemperatureRatings_Fasedederribo]
GO
ALTER TABLE [dbo].[WireTemperatureRatings]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatings_IDdetipo] FOREIGN KEY([IDdetipo])
REFERENCES [dbo].[WireTemperatureRatingTypes] ([Id])
GO
ALTER TABLE [dbo].[WireTemperatureRatings] CHECK CONSTRAINT [FK_WireTemperatureRatings_IDdetipo]
GO
ALTER TABLE [dbo].[WireTemperatureRatings]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatings_Opcióndediseño] FOREIGN KEY([Opcióndediseño])
REFERENCES [dbo].[DesignOptions] ([Id])
GO
ALTER TABLE [dbo].[WireTemperatureRatings] CHECK CONSTRAINT [FK_WireTemperatureRatings_Opcióndediseño]
GO
ALTER TABLE [dbo].[WireTemperatureRatingTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatingTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WireTemperatureRatingTypes] CHECK CONSTRAINT [FK_WireTemperatureRatingTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WireTemperatureRatingTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireTemperatureRatingTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WireTemperatureRatingTypes] CHECK CONSTRAINT [FK_WireTemperatureRatingTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[WireTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireTypes_Códigodemontaje] FOREIGN KEY([Códigodemontaje])
REFERENCES [dbo].[AssemblyCodes] ([Códigodemontaje])
GO
ALTER TABLE [dbo].[WireTypes] CHECK CONSTRAINT [FK_WireTypes_Códigodemontaje]
GO
ALTER TABLE [dbo].[WireTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireTypes_NúmeroOmniClass] FOREIGN KEY([NúmeroOmniClass])
REFERENCES [dbo].[OmniClassNumbers] ([NúmeroOmniClass])
GO
ALTER TABLE [dbo].[WireTypes] CHECK CONSTRAINT [FK_WireTypes_NúmeroOmniClass]
GO
ALTER TABLE [dbo].[WireTypes]  WITH CHECK ADD  CONSTRAINT [FK_WireTypes_Tamañoneutro] FOREIGN KEY([Tamañoneutro])
REFERENCES [dbo].[NeutralModeEnums] ([Id])
GO
ALTER TABLE [dbo].[WireTypes] CHECK CONSTRAINT [FK_WireTypes_Tamañoneutro]
GO
/****** Object:  StoredProcedure [dbo].[usp_CreateUser]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_CreateUser]
(
@EMAIL varchar(200),
@PASSWORD varchar(200),
@FIRSTNAME varchar(200),
@LASTNAME VARCHAR(200)
)
as
BEGIN TRY    
   
 BEGIN TRAN 
 
 Insert into [dbo].[User](EMAIL, FIRSTNAME, LASTNAME, [PASSWORD])
 values(@EMAIL,@FIRSTNAME,@LASTNAME,PwdEncrypt(@PASSWORD))
  
 COMMIT TRAN
   
 --SELECT @OV_MESSAGE_ERROR = ''    
   
 SELECT /*[Id]*,*/ [Email]       
	,[FirstName]       
	,[LastName]             
	,[Roles]  
	FROM [dbo].[User]  
	WHERE [Email]=@email 
	--AND [Password]=@password 
	AND PwdCompare(@password,[Password]) = 1  
	--PwdEncrypt(@COD_USUARIO)    
END TRY    
BEGIN CATCH    
  ROLLBACK TRAN      
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[usp_GetElements]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_GetElements]

AS
BEGIN

select									'StructuralFoundations' Tabla_origen, 
										 dbo.StructuralFoundations.Id, 
										 dbo.StructuralFoundations.Elemento,												
										 dbo.StructuralFoundations.Volumen,
										 0 Área,
										 dbo.StructuralFoundations.[Nivel del Elemento],
										 dbo.StructuralFoundations.[Estado de Avance],
										 dbo.StructuralFoundations.Sector
FROM     dbo.StructuralFoundations
				  
union all

select									 'StructuralColums' Tabla_origen, 
										 dbo.StructuralColumns.Id, 
										 dbo.StructuralColumns.Elemento,												
										 dbo.StructuralColumns.Volumen,
										 '' Área,
										 dbo.StructuralColumns.[Nivel del Elemento],
										 dbo.StructuralColumns.[Estado de Avance],
										 dbo.StructuralColumns.Sector
FROM     dbo.StructuralColumns
				  
union all

select									'Floors' Tabla_origen,
										 dbo.Floors.Id, 
										 dbo.Floors.Elemento,												
										 dbo.Floors.Volumen,
										 dbo.Floors.Área,
										 dbo.Floors.[Nivel del Elemento],
										 dbo.Floors.[Estado de Avance],
										 dbo.Floors.Sector
FROM     dbo.Floors

union all

select									'StructuralFraming' Tabla_origen,
										 dbo.StructuralFraming.Id, 
										 dbo.StructuralFraming.Elemento,												
										 dbo.StructuralFraming.Volumen,
										 0 Área,
										 dbo.StructuralFraming.[Nivel del Elemento],
										 dbo.StructuralFraming.[Estado de Avance],
										 dbo.StructuralFraming.Sector
FROM     dbo.StructuralFraming

union all

select									'Walls' Tabla_origen,
										 dbo.Walls.Id, 
										 dbo.Walls.Elemento,												
										 dbo.Walls.Volumen,
										 dbo.Walls.Área,
										 dbo.Walls.[Nivel del Elemento],
										 dbo.Walls.[Estado de Avance],
										 dbo.Walls.Sector
FROM     dbo.Walls
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ValidateUser]    Script Date: 2/02/2020 12:38:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_ValidateUser]  
	@email varchar(100),  
	@password varchar(20) 
AS 
BEGIN  
	SELECT [Email]       
	,[FirstName]       
	,[LastName]             
	,[Roles]  
	FROM [dbo].["User"] 
	WHERE [Email]=@email 
	--AND [Password]=@password 
	AND PwdCompare(@password,[Password]) = 1  
	--PwdEncrypt(@COD_USUARIO)         
END
GO
USE [master]
GO
ALTER DATABASE [DBRevit] SET  READ_WRITE 
GO
