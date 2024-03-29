USE [db_dragonball]
GO
/****** Object:  User [goku]    Script Date: 29/10/2019 08:22:25 p. m. ******/
CREATE USER [goku] FOR LOGIN [goku] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [goku]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 29/10/2019 08:22:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] NULL,
	[firstName] [varchar](50) NULL,
	[secondName] [varchar](50) NULL,
	[raza] [varchar](50) NULL,
	[descp] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_character_db]    Script Date: 29/10/2019 08:22:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character_db](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[raza] [varchar](20) NULL,
	[descp] [varchar](150) NULL,
 CONSTRAINT [PK_tbl_character_db] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character_db] ON 

INSERT [dbo].[tbl_character_db] ([id], [firstName], [secondName], [raza], [descp]) VALUES (1, N'Goku', N'Kakarotto', N'Saiyajin', N'Esposo de Milk y padre de Gohan y Goten, es el protagonista de la serie, le encanta las artes marciales, asi como entrenar todo el tiempo.')
INSERT [dbo].[tbl_character_db] ([id], [firstName], [secondName], [raza], [descp]) VALUES (2, N'Vegeta', N'Principe Vegeta', N'Saiyajin', N'Esposo de Bulma y padre de Trunks, es el coprotagonista de la serie, siendo el rival de Kakarroto, cuenta con el titulo del Principe de los Saiyajins.')
INSERT [dbo].[tbl_character_db] ([id], [firstName], [secondName], [raza], [descp]) VALUES (3, N'Freezer', N'Emperador', N'Freezer', N'Es el villano principal de la saga de Freezer, lider del Imperio Galáctico se dedica a conquistar y vender planetas por todo el universo 7.')
INSERT [dbo].[tbl_character_db] ([id], [firstName], [secondName], [raza], [descp]) VALUES (4, N'Cell', N'Androide perfecto', N'Bio-androide', N'Es el villano principal de la saga de los androides, creado de las celulas de los demas protagonistas y villanos de la serie.')
INSERT [dbo].[tbl_character_db] ([id], [firstName], [secondName], [raza], [descp]) VALUES (5, N'Boo', N'Super-Boo', N'Majin', N'Es uno de las transformaciones del villano de la saga de Majin-Boo, es el resultado de la union de Majin Boo Maldad Pura y Boo Gordo.')
SET IDENTITY_INSERT [dbo].[tbl_character_db] OFF
