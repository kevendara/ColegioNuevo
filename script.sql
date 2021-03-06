USE [master]
GO
/****** Object:  Database [ITE_Colegio]    Script Date: 24/10/2018 03:30:01 PM ******/
CREATE DATABASE [ITE_Colegio]
 CONTAINMENT = NONE
 
USE [ITE_Colegio]
GO
/****** Object:  Table [dbo].[tbl_Asistencia]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Asistencia](
	[asi_id_asistencia] [int] IDENTITY(1,1) NOT NULL,
	[est_id_estudiante] [int] NULL,
	[cla_id_clase] [int] NULL,
	[asi_fecha_asistencia] [datetime] NOT NULL,
	[asi_tomar_asistencia] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_ASISTENCIA] PRIMARY KEY CLUSTERED 
(
	[asi_id_asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Aula]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Aula](
	[au_id_aula] [int] IDENTITY(1,1) NOT NULL,
	[au_nombre_aula] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TBL_AULA] PRIMARY KEY CLUSTERED 
(
	[au_id_aula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Clase]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Clase](
	[cla_id_clase] [int] IDENTITY(1,1) NOT NULL,
	[mat_id_materia] [int] NOT NULL,
	[doc_id_docente] [int] NOT NULL,
	[au_id_aula] [int] NOT NULL,
 CONSTRAINT [PK_TBL_CLASE] PRIMARY KEY CLUSTERED 
(
	[cla_id_clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Docente]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Docente](
	[doc_id_docente] [int] IDENTITY(1,1) NOT NULL,
	[doc_cedula] [char](10) NOT NULL,
	[doc_nombres] [varchar](50) NOT NULL,
	[doc_apellidos] [varchar](50) NOT NULL,
	[doc_telefono] [char](10) NOT NULL,
 CONSTRAINT [PK_TBL_DOCENTE] PRIMARY KEY CLUSTERED 
(
	[doc_id_docente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Estudiante]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Estudiante](
	[est_id_estudiante] [int] IDENTITY(1,1) NOT NULL,
	[est_cedula] [char](10) NOT NULL,
	[est_nombres] [varchar](50) NOT NULL,
	[est_apellidos] [varchar](50) NOT NULL,
	[est_telefono] [char](10) NOT NULL,
 CONSTRAINT [PK_TBL_ESTUDIANTE] PRIMARY KEY CLUSTERED 
(
	[est_id_estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Materia]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Materia](
	[mat_id_materia] [int] IDENTITY(1,1) NOT NULL,
	[mat_cod_materia] [varchar](5) NULL,
	[mat_nombre_materia] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_MATERIA] PRIMARY KEY CLUSTERED 
(
	[mat_id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Nota]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Nota](
	[not_id_nota] [int] IDENTITY(1,1) NOT NULL,
	[est_id_estudiante] [int] NULL,
	[qui_id_quimestre] [int] NULL,
	[cla_id_clase] [int] NULL,
	[not_nota1] [numeric](8, 2) NULL DEFAULT ((0)),
	[not_nota2] [numeric](8, 2) NULL DEFAULT ((0)),
	[not_nota3] [numeric](8, 2) NULL DEFAULT ((0)),
	[not_nota4] [numeric](8, 2) NULL DEFAULT ((0)),
 CONSTRAINT [PK_TBL_NOTA] PRIMARY KEY CLUSTERED 
(
	[not_id_nota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Quimestre]    Script Date: 24/10/2018 03:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Quimestre](
	[qui_id_quimestre] [int] IDENTITY(1,1) NOT NULL,
	[qui_fecha_inicio] [datetime] NOT NULL,
	[qui_fecha_fin] [datetime] NOT NULL,
	[qui_numero_quimestre] [char](2) NOT NULL,
 CONSTRAINT [PK_TBL_QUIMESTRE] PRIMARY KEY CLUSTERED 
(
	[qui_id_quimestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


create table [dbo].tbl_user(
 id int IDENTITY(1,1) NOT NULL,
 nombreCuenta varchar(50),
 contraseña varchar(50),
 tipoUsuario varchar(25),
 nombrePersona varchar(50)
)


INSERT INTO [dbo].[tbl_user]
           ([nombreCuenta]
		   ,[contraseña]
           ,[tipoUsuario]
           ,[nombrePersona])
     VALUES
           ('kevendara'
		   ,'kevin0123'
           ,'Administrador'
           ,'Kevin Endara')
GO


INSERT INTO [dbo].[tbl_user]
           ([nombreCuenta]
		   ,[contraseña]
           ,[tipoUsuario]
           ,[nombrePersona])
     VALUES
           ('yanierB'
		   ,'yanier0123'
           ,'Profesor'
           ,'Yanier Balaos')
GO


select * from [dbo].[tbl_user]



SET IDENTITY_INSERT [dbo].[tbl_Asistencia] ON 

INSERT [dbo].[tbl_Asistencia] ([asi_id_asistencia], [est_id_estudiante], [cla_id_clase], [asi_fecha_asistencia], [asi_tomar_asistencia]) VALUES (1, 1, 1, CAST(N'2018-10-16 15:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Asistencia] ([asi_id_asistencia], [est_id_estudiante], [cla_id_clase], [asi_fecha_asistencia], [asi_tomar_asistencia]) VALUES (2, 1, 4, CAST(N'2018-09-01 09:00:00.000' AS DateTime), 0)
INSERT [dbo].[tbl_Asistencia] ([asi_id_asistencia], [est_id_estudiante], [cla_id_clase], [asi_fecha_asistencia], [asi_tomar_asistencia]) VALUES (8, 4, 2, CAST(N'2018-10-28 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_Asistencia] ([asi_id_asistencia], [est_id_estudiante], [cla_id_clase], [asi_fecha_asistencia], [asi_tomar_asistencia]) VALUES (9, 3, 2, CAST(N'2018-10-26 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tbl_Asistencia] OFF
SET IDENTITY_INSERT [dbo].[tbl_Aula] ON 

INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (1, N'C1')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (2, N'C2')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (3, N'C3')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (4, N'A1')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (5, N'A2')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (6, N'B1')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (7, N'B2')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (8, N'D1')
INSERT [dbo].[tbl_Aula] ([au_id_aula], [au_nombre_aula]) VALUES (9, N'Z1')
SET IDENTITY_INSERT [dbo].[tbl_Aula] OFF
SET IDENTITY_INSERT [dbo].[tbl_Clase] ON 

INSERT [dbo].[tbl_Clase] ([cla_id_clase], [mat_id_materia], [doc_id_docente], [au_id_aula]) VALUES (1, 1, 1, 1)
INSERT [dbo].[tbl_Clase] ([cla_id_clase], [mat_id_materia], [doc_id_docente], [au_id_aula]) VALUES (2, 3, 2, 2)
INSERT [dbo].[tbl_Clase] ([cla_id_clase], [mat_id_materia], [doc_id_docente], [au_id_aula]) VALUES (4, 2, 4, 8)
INSERT [dbo].[tbl_Clase] ([cla_id_clase], [mat_id_materia], [doc_id_docente], [au_id_aula]) VALUES (5, 4, 4, 8)
INSERT [dbo].[tbl_Clase] ([cla_id_clase], [mat_id_materia], [doc_id_docente], [au_id_aula]) VALUES (6, 3, 4, 8)
SET IDENTITY_INSERT [dbo].[tbl_Clase] OFF
SET IDENTITY_INSERT [dbo].[tbl_Docente] ON 

INSERT [dbo].[tbl_Docente] ([doc_id_docente], [doc_cedula], [doc_nombres], [doc_apellidos], [doc_telefono]) VALUES (1, N'1001251369', N'Martha', N'López', N'0923562315')
INSERT [dbo].[tbl_Docente] ([doc_id_docente], [doc_cedula], [doc_nombres], [doc_apellidos], [doc_telefono]) VALUES (2, N'0468923563', N'Fausto', N'Cadena', N'0983564756')
INSERT [dbo].[tbl_Docente] ([doc_id_docente], [doc_cedula], [doc_nombres], [doc_apellidos], [doc_telefono]) VALUES (4, N'1000356566', N'Carlos', N'Orbe', N'0987623885')
INSERT [dbo].[tbl_Docente] ([doc_id_docente], [doc_cedula], [doc_nombres], [doc_apellidos], [doc_telefono]) VALUES (5, N'1001001003', N'Fausto', N'López', N'1001001003')
SET IDENTITY_INSERT [dbo].[tbl_Docente] OFF
SET IDENTITY_INSERT [dbo].[tbl_Estudiante] ON 

INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (1, N'1003841176', N'Kevin Joseph', N'Endara López', N'0999999999')
INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (3, N'1002561489', N'Jose Sebastian', N'Guzman Ramos', N'0999783655')
INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (4, N'1003897897', N'Bryan Lennin', N'Cachimuel Loyo', N'0987063265')
INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (5, N'1000000002', N'Franklin Wladimir', N'Vallejo Rodriguez', N'0980635665')
INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (6, N'1003841559', N'1003841559', N'1003841559', N'1003841559')
INSERT [dbo].[tbl_Estudiante] ([est_id_estudiante], [est_cedula], [est_nombres], [est_apellidos], [est_telefono]) VALUES (7, N'1001001001', N'k', N'k', N'1000000000')
SET IDENTITY_INSERT [dbo].[tbl_Estudiante] OFF
SET IDENTITY_INSERT [dbo].[tbl_Materia] ON 

INSERT [dbo].[tbl_Materia] ([mat_id_materia], [mat_cod_materia], [mat_nombre_materia]) VALUES (1, N'MAT-1', N'Matematica 1')
INSERT [dbo].[tbl_Materia] ([mat_id_materia], [mat_cod_materia], [mat_nombre_materia]) VALUES (2, N'CAL-2', N'Cálculo 2')
INSERT [dbo].[tbl_Materia] ([mat_id_materia], [mat_cod_materia], [mat_nombre_materia]) VALUES (3, N'GEO-1', N'Geometría 1')
INSERT [dbo].[tbl_Materia] ([mat_id_materia], [mat_cod_materia], [mat_nombre_materia]) VALUES (4, N'PRO-5', N'Programación 5')
INSERT [dbo].[tbl_Materia] ([mat_id_materia], [mat_cod_materia], [mat_nombre_materia]) VALUES (5, N'PRO-6', N'Programacion 6')
SET IDENTITY_INSERT [dbo].[tbl_Materia] OFF
SET IDENTITY_INSERT [dbo].[tbl_Nota] ON 

INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (10, 1, 2, 1, CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (12, 3, 3, 2, CAST(9.00 AS Numeric(8, 2)), CAST(4.00 AS Numeric(8, 2)), CAST(8.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (13, 3, 3, 1, CAST(8.00 AS Numeric(8, 2)), CAST(6.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (14, 1, 2, 1, CAST(9.10 AS Numeric(8, 2)), CAST(4.50 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (15, 4, 2, 1, CAST(5.00 AS Numeric(8, 2)), CAST(8.00 AS Numeric(8, 2)), CAST(8.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (17, 3, 2, 2, CAST(9.00 AS Numeric(8, 2)), CAST(8.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
INSERT [dbo].[tbl_Nota] ([not_id_nota], [est_id_estudiante], [qui_id_quimestre], [cla_id_clase], [not_nota1], [not_nota2], [not_nota3], [not_nota4]) VALUES (20, NULL, NULL, NULL, CAST(9.00 AS Numeric(8, 2)), CAST(8.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)), CAST(0.00 AS Numeric(8, 2)))
SET IDENTITY_INSERT [dbo].[tbl_Nota] OFF
SET IDENTITY_INSERT [dbo].[tbl_Quimestre] ON 

INSERT [dbo].[tbl_Quimestre] ([qui_id_quimestre], [qui_fecha_inicio], [qui_fecha_fin], [qui_numero_quimestre]) VALUES (2, CAST(N'2018-10-15 13:00:00.000' AS DateTime), CAST(N'2019-01-15 13:00:00.000' AS DateTime), N'2Q')
INSERT [dbo].[tbl_Quimestre] ([qui_id_quimestre], [qui_fecha_inicio], [qui_fecha_fin], [qui_numero_quimestre]) VALUES (3, CAST(N'2017-05-16 13:00:00.000' AS DateTime), CAST(N'2017-09-13 13:00:00.000' AS DateTime), N'2Q')
INSERT [dbo].[tbl_Quimestre] ([qui_id_quimestre], [qui_fecha_inicio], [qui_fecha_fin], [qui_numero_quimestre]) VALUES (4, CAST(N'2017-09-13 13:00:00.000' AS DateTime), CAST(N'2018-10-15 13:00:00.000' AS DateTime), N'1Q')
INSERT [dbo].[tbl_Quimestre] ([qui_id_quimestre], [qui_fecha_inicio], [qui_fecha_fin], [qui_numero_quimestre]) VALUES (5, CAST(N'2018-10-25 00:00:00.000' AS DateTime), CAST(N'2018-10-25 00:00:00.000' AS DateTime), N'1Q')
SET IDENTITY_INSERT [dbo].[tbl_Quimestre] OFF
ALTER TABLE [dbo].[tbl_Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ASIS_REFERENCE_TBL_CLAS] FOREIGN KEY([cla_id_clase])
REFERENCES [dbo].[tbl_Clase] ([cla_id_clase])
GO
ALTER TABLE [dbo].[tbl_Asistencia] CHECK CONSTRAINT [FK_TBL_ASIS_REFERENCE_TBL_CLAS]
GO
ALTER TABLE [dbo].[tbl_Asistencia]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ASIS_REFERENCE_TBL_ESTU] FOREIGN KEY([est_id_estudiante])
REFERENCES [dbo].[tbl_Estudiante] ([est_id_estudiante])
GO
ALTER TABLE [dbo].[tbl_Asistencia] CHECK CONSTRAINT [FK_TBL_ASIS_REFERENCE_TBL_ESTU]
GO
ALTER TABLE [dbo].[tbl_Clase]  WITH CHECK ADD  CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_AULA] FOREIGN KEY([au_id_aula])
REFERENCES [dbo].[tbl_Aula] ([au_id_aula])
GO
ALTER TABLE [dbo].[tbl_Clase] CHECK CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_AULA]
GO
ALTER TABLE [dbo].[tbl_Clase]  WITH CHECK ADD  CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_DOCE] FOREIGN KEY([doc_id_docente])
REFERENCES [dbo].[tbl_Docente] ([doc_id_docente])
GO
ALTER TABLE [dbo].[tbl_Clase] CHECK CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_DOCE]
GO
ALTER TABLE [dbo].[tbl_Clase]  WITH CHECK ADD  CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_MATE] FOREIGN KEY([mat_id_materia])
REFERENCES [dbo].[tbl_Materia] ([mat_id_materia])
GO
ALTER TABLE [dbo].[tbl_Clase] CHECK CONSTRAINT [FK_TBL_CLAS_REFERENCE_TBL_MATE]
GO
ALTER TABLE [dbo].[tbl_Nota]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_CLAS] FOREIGN KEY([cla_id_clase])
REFERENCES [dbo].[tbl_Clase] ([cla_id_clase])
GO
ALTER TABLE [dbo].[tbl_Nota] CHECK CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_CLAS]
GO
ALTER TABLE [dbo].[tbl_Nota]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_ESTU] FOREIGN KEY([est_id_estudiante])
REFERENCES [dbo].[tbl_Estudiante] ([est_id_estudiante])
GO
ALTER TABLE [dbo].[tbl_Nota] CHECK CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_ESTU]
GO
ALTER TABLE [dbo].[tbl_Nota]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_QUIM] FOREIGN KEY([qui_id_quimestre])
REFERENCES [dbo].[tbl_Quimestre] ([qui_id_quimestre])
GO
ALTER TABLE [dbo].[tbl_Nota] CHECK CONSTRAINT [FK_TBL_NOTA_REFERENCE_TBL_QUIM]
GO



create view vta_Clase
as
--Resultado que retorna para vizualizar:
select tc.cla_id_clase, td.doc_id_docente, td.doc_nombres, td.doc_apellidos,
		tm.mat_id_materia, tm.mat_nombre_materia, ta.au_id_aula, ta.au_nombre_aula
from tbl_Clase tc, tbl_Docente td , tbl_Materia tm, tbl_Aula ta
--Tipo de union:
where tc.doc_id_docente=td.doc_id_docente and tc.mat_id_materia=tm.mat_id_materia and tc.au_id_aula=ta.au_id_aula
