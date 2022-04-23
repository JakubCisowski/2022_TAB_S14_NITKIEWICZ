USE [AutobusyDB.MDF]
GO
/****** Object:  Table [dbo].[Autobusy]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobusy](
	[AutobusId] [int] IDENTITY(1,1) NOT NULL,
	[Marka] [nvarchar](max) NOT NULL,
	[NumerRejestracyjny] [nvarchar](max) NOT NULL,
	[DataProdukcji] [datetime2](7) NOT NULL,
	[StanAutobusu] [int] NOT NULL,
	[SpalanieNa100] [float] NOT NULL,
 CONSTRAINT [PK_Autobusy] PRIMARY KEY CLUSTERED 
(
	[AutobusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kierowcy]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kierowcy](
	[KierowcaId] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](max) NOT NULL,
	[Nazwisko] [nvarchar](max) NOT NULL,
	[Doswiadczenie] [int] NOT NULL,
 CONSTRAINT [PK_Kierowcy] PRIMARY KEY CLUSTERED 
(
	[KierowcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kursy]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kursy](
	[KursId] [int] IDENTITY(1,1) NOT NULL,
	[DzienOdbycia] [datetime2](7) NOT NULL,
	[LiniaId] [int] NULL,
 CONSTRAINT [PK_Kursy] PRIMARY KEY CLUSTERED 
(
	[KursId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linie]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linie](
	[LiniaId] [int] IDENTITY(1,1) NOT NULL,
	[Numer] [nvarchar](max) NOT NULL,
	[Typ] [int] NOT NULL,
	[DlugoscWKm] [float] NOT NULL,
 CONSTRAINT [PK_Linie] PRIMARY KEY CLUSTERED 
(
	[LiniaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanyKursu]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanyKursu](
	[PlanKursuId] [int] IDENTITY(1,1) NOT NULL,
	[PlanowaGodzina] [datetime2](7) NOT NULL,
	[KursId] [int] NOT NULL,
	[PrzystanekId] [int] NOT NULL,
	[RealizacjaPrzejazduId] [int] NOT NULL,
 CONSTRAINT [PK_PlanyKursu] PRIMARY KEY CLUSTERED 
(
	[PlanKursuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przejazdy]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przejazdy](
	[PrzejazdId] [int] IDENTITY(1,1) NOT NULL,
	[IloscSpalonegoPaliwa] [float] NOT NULL,
	[IloscSkasowanychBiletow] [int] NOT NULL,
	[KursId] [int] NOT NULL,
	[KierowcaId] [int] NOT NULL,
	[AutobusId] [int] NOT NULL,
 CONSTRAINT [PK_Przejazdy] PRIMARY KEY CLUSTERED 
(
	[PrzejazdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przystanki]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przystanki](
	[PrzystanekId] [int] IDENTITY(1,1) NOT NULL,
	[Numer] [nvarchar](max) NOT NULL,
	[Nazwa] [nvarchar](max) NOT NULL,
	[Adres] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Przystanki] PRIMARY KEY CLUSTERED 
(
	[PrzystanekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrzystankiWLinii]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrzystankiWLinii](
	[PrzystanekWLiniiId] [int] IDENTITY(1,1) NOT NULL,
	[PrzystanekId] [int] NOT NULL,
	[LiniaId] [int] NOT NULL,
 CONSTRAINT [PK_PrzystankiWLinii] PRIMARY KEY CLUSTERED 
(
	[PrzystanekWLiniiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealizacjePrzejazdu]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealizacjePrzejazdu](
	[RealizacjaPrzejazduId] [int] IDENTITY(1,1) NOT NULL,
	[FaktycznaGodzina] [datetime2](7) NOT NULL,
	[PlanKursuId] [int] NOT NULL,
	[PrzejazdId] [int] NULL,
 CONSTRAINT [PK_RealizacjePrzejazdu] PRIMARY KEY CLUSTERED 
(
	[RealizacjaPrzejazduId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Serwisy]    Script Date: 23.04.2022 14:11:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serwisy](
	[SerwisId] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime2](7) NOT NULL,
	[Typ] [int] NOT NULL,
	[Cena] [float] NOT NULL,
	[Opis] [nvarchar](max) NOT NULL,
	[AutobusId] [int] NOT NULL,
 CONSTRAINT [PK_Serwisy] PRIMARY KEY CLUSTERED 
(
	[SerwisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kursy]  WITH CHECK ADD  CONSTRAINT [FK_Kursy_Linie_LiniaId] FOREIGN KEY([LiniaId])
REFERENCES [dbo].[Linie] ([LiniaId])
GO
ALTER TABLE [dbo].[Kursy] CHECK CONSTRAINT [FK_Kursy_Linie_LiniaId]
GO
ALTER TABLE [dbo].[PlanyKursu]  WITH CHECK ADD  CONSTRAINT [FK_PlanyKursu_Kursy_KursId] FOREIGN KEY([KursId])
REFERENCES [dbo].[Kursy] ([KursId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanyKursu] CHECK CONSTRAINT [FK_PlanyKursu_Kursy_KursId]
GO
ALTER TABLE [dbo].[PlanyKursu]  WITH CHECK ADD  CONSTRAINT [FK_PlanyKursu_Przystanki_PrzystanekId] FOREIGN KEY([PrzystanekId])
REFERENCES [dbo].[Przystanki] ([PrzystanekId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanyKursu] CHECK CONSTRAINT [FK_PlanyKursu_Przystanki_PrzystanekId]
GO
ALTER TABLE [dbo].[PlanyKursu]  WITH CHECK ADD  CONSTRAINT [FK_PlanyKursu_RealizacjePrzejazdu_RealizacjaPrzejazduId] FOREIGN KEY([RealizacjaPrzejazduId])
REFERENCES [dbo].[RealizacjePrzejazdu] ([RealizacjaPrzejazduId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanyKursu] CHECK CONSTRAINT [FK_PlanyKursu_RealizacjePrzejazdu_RealizacjaPrzejazduId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Autobusy_AutobusId] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobusy] ([AutobusId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Autobusy_AutobusId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Kierowcy_KierowcaId] FOREIGN KEY([KierowcaId])
REFERENCES [dbo].[Kierowcy] ([KierowcaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Kierowcy_KierowcaId]
GO
ALTER TABLE [dbo].[Przejazdy]  WITH CHECK ADD  CONSTRAINT [FK_Przejazdy_Kursy_KursId] FOREIGN KEY([KursId])
REFERENCES [dbo].[Kursy] ([KursId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Przejazdy] CHECK CONSTRAINT [FK_Przejazdy_Kursy_KursId]
GO
ALTER TABLE [dbo].[PrzystankiWLinii]  WITH CHECK ADD  CONSTRAINT [FK_PrzystankiWLinii_Linie_LiniaId] FOREIGN KEY([LiniaId])
REFERENCES [dbo].[Linie] ([LiniaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrzystankiWLinii] CHECK CONSTRAINT [FK_PrzystankiWLinii_Linie_LiniaId]
GO
ALTER TABLE [dbo].[PrzystankiWLinii]  WITH CHECK ADD  CONSTRAINT [FK_PrzystankiWLinii_Przystanki_PrzystanekId] FOREIGN KEY([PrzystanekId])
REFERENCES [dbo].[Przystanki] ([PrzystanekId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrzystankiWLinii] CHECK CONSTRAINT [FK_PrzystankiWLinii_Przystanki_PrzystanekId]
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu]  WITH CHECK ADD  CONSTRAINT [FK_RealizacjePrzejazdu_Przejazdy_PrzejazdId] FOREIGN KEY([PrzejazdId])
REFERENCES [dbo].[Przejazdy] ([PrzejazdId])
GO
ALTER TABLE [dbo].[RealizacjePrzejazdu] CHECK CONSTRAINT [FK_RealizacjePrzejazdu_Przejazdy_PrzejazdId]
GO
ALTER TABLE [dbo].[Serwisy]  WITH CHECK ADD  CONSTRAINT [FK_Serwisy_Autobusy_AutobusId] FOREIGN KEY([AutobusId])
REFERENCES [dbo].[Autobusy] ([AutobusId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Serwisy] CHECK CONSTRAINT [FK_Serwisy_Autobusy_AutobusId]
GO
