USE [PROYECTOMARITIMA]
GO
/****** Object:  Table [dbo].[AccionesAlmacen]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccionesAlmacen](
	[AccionId] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[EstadoId] [int] NOT NULL,
	[EstadoAccion] [bit] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[RecibidoPor] [varchar](100) NOT NULL,
	[EntregadoPor] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UbicacionId] [int] NOT NULL,
 CONSTRAINT [PK__Acciones__A60CAFC762104DC4] PRIMARY KEY CLUSTERED 
(
	[AccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ALMACEN]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ALMACEN](
	[AlmacenId] [int] IDENTITY(1,1) NOT NULL,
	[AlmacenDescripcion] [varchar](100) NOT NULL,
	[UbicacionId] [int] NOT NULL,
	[CapacidadArticulos] [int] NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[CantidadStock] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[EstadoAlmacen] [bit] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK__ALMACEN__022A08769ED1BD38] PRIMARY KEY CLUSTERED 
(
	[AlmacenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Articulos](
	[ArticuloId] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloDescripcion] [varchar](100) NOT NULL,
	[ArticuloPrecio] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[MarcaId] [int] NOT NULL,
	[ModeloId] [int] NOT NULL,
	[EstadoId] [bit] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK__Articulo__C0D725ED558E46D5] PRIMARY KEY CLUSTERED 
(
	[ArticuloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoId] [int] IDENTITY(1,1) NOT NULL,
	[EstadoDescripcion] [varchar](20) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[InventarioId] [int] IDENTITY(1,1) NOT NULL,
	[ArticuloId] [int] NOT NULL,
	[CantidadEntradas] [int] NOT NULL,
	[CantidadSalidas] [int] NOT NULL,
	[CantidadExistencia] [int] NOT NULL,
	[TotalEntradas] [money] NOT NULL,
	[TotalSalidas] [money] NOT NULL,
	[TotalExistencia] [money] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK__Inventar__FB8A24D77AD353DD] PRIMARY KEY CLUSTERED 
(
	[InventarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcas](
	[MarcaId] [int] IDENTITY(1,1) NOT NULL,
	[MarcaDescripcion] [varchar](500) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modelos]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelos](
	[ModeloId] [int] IDENTITY(1,1) NOT NULL,
	[ModeloDescripcion] [varchar](100) NOT NULL,
	[MarcaId] [int] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModeloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 10/5/2019 6:28:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[UbicacionId] [int] IDENTITY(1,1) NOT NULL,
	[UbicacionDescripcion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UbicacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AccionesAlmacen]  WITH CHECK ADD  CONSTRAINT [FK__AccionesA__Artic__3B75D760] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([ArticuloId])
GO
ALTER TABLE [dbo].[AccionesAlmacen] CHECK CONSTRAINT [FK__AccionesA__Artic__3B75D760]
GO
ALTER TABLE [dbo].[AccionesAlmacen]  WITH CHECK ADD  CONSTRAINT [FK__AccionesA__Estad__3C69FB99] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[AccionesAlmacen] CHECK CONSTRAINT [FK__AccionesA__Estad__3C69FB99]
GO
ALTER TABLE [dbo].[AccionesAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_AccionesAlmacen_Ubicacion] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicacion] ([UbicacionId])
GO
ALTER TABLE [dbo].[AccionesAlmacen] CHECK CONSTRAINT [FK_AccionesAlmacen_Ubicacion]
GO
ALTER TABLE [dbo].[ALMACEN]  WITH CHECK ADD  CONSTRAINT [FK__ALMACEN__Articul__34C8D9D1] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([ArticuloId])
GO
ALTER TABLE [dbo].[ALMACEN] CHECK CONSTRAINT [FK__ALMACEN__Articul__34C8D9D1]
GO
ALTER TABLE [dbo].[ALMACEN]  WITH CHECK ADD  CONSTRAINT [FK__ALMACEN__Ubicaci__33D4B598] FOREIGN KEY([UbicacionId])
REFERENCES [dbo].[Ubicacion] ([UbicacionId])
GO
ALTER TABLE [dbo].[ALMACEN] CHECK CONSTRAINT [FK__ALMACEN__Ubicaci__33D4B598]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK__Articulos__Marca__15502E78] FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marcas] ([MarcaId])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK__Articulos__Marca__15502E78]
GO
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK__Articulos__Model__164452B1] FOREIGN KEY([ModeloId])
REFERENCES [dbo].[Modelos] ([ModeloId])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK__Articulos__Model__164452B1]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD  CONSTRAINT [FK__Inventari__Artic__49C3F6B7] FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulos] ([ArticuloId])
GO
ALTER TABLE [dbo].[Inventario] CHECK CONSTRAINT [FK__Inventari__Artic__49C3F6B7]
GO
ALTER TABLE [dbo].[Modelos]  WITH CHECK ADD FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marcas] ([MarcaId])
GO
