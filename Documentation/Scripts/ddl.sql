USE [AutobusyDB.MDF]
GO
/****** Object:  Table [dbo].[Autobusy]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobusy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [nvarchar](max) NULL,
	[NumerRejestracyjny] [nvarchar](max) NULL,
	[DataProdukcji] [datetime2](7) NOT NULL,
	[StanAutobusu] [int] NOT NULL,
	[SpalanieNa100] [real] NOT NULL,
 CONSTRAINT [PK_Autobusy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kierowcy]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kierowcy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](max) NULL,
	[Nazwisko] [nvarchar](max) NULL,
	[Doswiadczenie] [int] NOT NULL,
 CONSTRAINT [PK_Kierowcy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kursy]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kursy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DzienTygodnia] [int] NOT NULL,
	[GodzinaRozpoczecia] [datetime2](7) NOT NULL,
	[LiniaId] [int] NOT NULL,
 CONSTRAINT [PK_Kursy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linie]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numer] [nvarchar](max) NULL,
	[Typ] [int] NOT NULL,
	[DlugoscWKm] [real] NOT NULL,
 CONSTRAINT [PK_Linie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanyKursu]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanyKursu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlanowaGodzina] [datetime2](7) NOT NULL,
	[KursId] [int] NOT NULL,
	[PrzystanekWLiniiId] [int] NOT NULL,
 CONSTRAINT [PK_PlanyKursu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przejazdy]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przejazdy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IloscSpalonegoPaliwa] [real] NOT NULL,
	[IloscSkasowanychBiletow] [int] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[KursId] [int] NOT NULL,
	[KierowcaId] [int] NOT NULL,
	[AutobusId] [int] NOT NULL,
 CONSTRAINT [PK_Przejazdy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przystanki]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przystanki](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numer] [nvarchar](max) NULL,
	[Nazwa] [nvarchar](max) NULL,
	[Adres] [nvarchar](max) NULL,
 CONSTRAINT [PK_Przystanki] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrzystankiWLinii]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrzystankiWLinii](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LiczbaPorzadkowa] [int] NOT NULL,
	[PrzystanekId] [int] NOT NULL,
	[LiniaId] [int] NOT NULL,
 CONSTRAINT [PK_PrzystankiWLinii] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealizacjePrzejazdu]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealizacjePrzejazdu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FaktycznaGodzina] [datetime2](7) NOT NULL,
	[PlanKursuId] [int] NOT NULL,
	[PrzejazdId] [int] NOT NULL,
 CONSTRAINT [PK_RealizacjePrzejazdu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Serwisy]    Script Date: 29.05.2022 21:16:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serwisy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[Typ] [int] NOT NULL,
	[Cena] [decimal](10, 2) NOT NULL,
	[Opis] [nvarchar](max) NULL,
	[AutobusId] [int] NOT NULL,
 CONSTRAINT [PK_Serwisy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kursy]  WITH CHECK ADD  CONSTRAINT [FK_Kursy_Linie_LiniaId] FOREIGN KEY([LiniaId])
REFERENCES [dbo].[Linie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kursy] CHECK CONSTRAINT [FK_Kursy_Linie_LiniaId]
GO
ALTER TABLE [dbo].[PlanyKursu]  WITH CHECK ADD  CONSTRAINT [FK_PlanyKursu_Kursy_KursId] FOREIGN KEY([KursId])
REFERENCES [dbo].[Kursy] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanyKursu] CHECK CONSTRAINT [FK_PlanyKursu_Kursy_KursId]
GO
ALTER TABLE [dbo].[PlanyKursu]  WITH CHECK ADD  CONSTRAINT [FK_PlanyKursu_PrzystankiWLinii_PrzystanekWLiniiId] FOREIGN KEY([PrzystanekWLiniiId])
REFERENCES [dbo].[PrzystankiWLinii] ([Id])
GO
ALTER TABLE [dbo].[PlanyKursu] CHECK CONSTRAINT [FK_PlanyKursu_PrzystankiWLinii_PrzystanekWLiniiId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Autobusy_AutobusId] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobusy] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Autobusy_AutobusId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Kierowcy_KierowcaId] FOREIGN KEY([KierowcaId])
REFERENCES [dbo].[Kierowcy] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Kierowcy_KierowcaId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Kursy_KursId] FOREIGN KEY([KursId])
REFERENCES [dbo].[Kursy] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Kursy_KursId]
GO
ALTER TABLE [dbo].[PrzystankiWLinii]  WITH CHECK ADD  CONSTRAINT [FK_PrzystankiWLinii_Linie_LiniaId] FOREIGN KEY([LiniaId])
REFERENCES [dbo].[Linie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrzystankiWLinii] CHECK CONSTRAINT [FK_PrzystankiWLinii_Linie_LiniaId]
GO
ALTER TABLE [dbo].[PrzystankiWLinii]  WITH CHECK ADD  CONSTRAINT [FK_PrzystankiWLinii_Przystanki_PrzystanekId] FOREIGN KEY([PrzystanekId])
REFERENCES [dbo].[Przystanki] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrzystankiWLinii] CHECK CONSTRAINT [FK_PrzystankiWLinii_Przystanki_PrzystanekId]
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu]  WITH CHECK ADD  CONSTRAINT [FK_RealizacjePrzejazdu_PlanyKursu_PlanKursuId] FOREIGN KEY([PlanKursuId])
REFERENCES [dbo].[PlanyKursu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu] CHECK CONSTRAINT [FK_RealizacjePrzejazdu_PlanyKursu_PlanKursuId]
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu]  WITH CHECK ADD  CONSTRAINT [FK_RealizacjePrzejazdu_Przejazdy_PrzejazdId] FOREIGN KEY([PrzejazdId])
REFERENCES [dbo].[Przejazdy] ([Id])
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu] CHECK CONSTRAINT [FK_RealizacjePrzejazdu_Przejazdy_PrzejazdId]
GO
ALTER TABLE [dbo].[Serwisy]  WITH CHECK ADD  CONSTRAINT [FK_Serwisy_Autobusy_AutobusId] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobusy] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Serwisy] CHECK CONSTRAINT [FK_Serwisy_Autobusy_AutobusId]
GO
