/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     14/10/2018 06:55:44 PM                       */
/*==============================================================*/


--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Asistencia') and o.name = 'FK_TBL_ASIS_REFERENCE_TBL_ESTU')
--alter table tbl_Asistencia
--   drop constraint FK_TBL_ASIS_REFERENCE_TBL_ESTU
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Asistencia') and o.name = 'FK_TBL_ASIS_REFERENCE_TBL_CLAS')
--alter table tbl_Asistencia
--   drop constraint FK_TBL_ASIS_REFERENCE_TBL_CLAS
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Clase') and o.name = 'FK_TBL_CLAS_REFERENCE_TBL_MATE')
--alter table tbl_Clase
--   drop constraint FK_TBL_CLAS_REFERENCE_TBL_MATE
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Clase') and o.name = 'FK_TBL_CLAS_REFERENCE_TBL_DOCE')
--alter table tbl_Clase
--   drop constraint FK_TBL_CLAS_REFERENCE_TBL_DOCE
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Clase') and o.name = 'FK_TBL_CLAS_REFERENCE_TBL_AULA')
--alter table tbl_Clase
--   drop constraint FK_TBL_CLAS_REFERENCE_TBL_AULA
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Nota') and o.name = 'FK_TBL_NOTA_REFERENCE_TBL_ESTU')
--alter table tbl_Nota
--   drop constraint FK_TBL_NOTA_REFERENCE_TBL_ESTU
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Nota') and o.name = 'FK_TBL_NOTA_REFERENCE_TBL_QUIM')
--alter table tbl_Nota
--   drop constraint FK_TBL_NOTA_REFERENCE_TBL_QUIM
--go

--if exists (select 1
--   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
--   where r.fkeyid = object_id('tbl_Nota') and o.name = 'FK_TBL_NOTA_REFERENCE_TBL_CLAS')
--alter table tbl_Nota
--   drop constraint FK_TBL_NOTA_REFERENCE_TBL_CLAS
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Asistencia')
--            and   type = 'U')
--   drop table tbl_Asistencia
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Aula')
--            and   type = 'U')
--   drop table tbl_Aula
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Clase')
--            and   type = 'U')
--   drop table tbl_Clase
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Docente')
--            and   type = 'U')
--   drop table tbl_Docente
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Estudiante')
--            and   type = 'U')
--   drop table tbl_Estudiante
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Materia')
--            and   type = 'U')
--   drop table tbl_Materia
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Nota')
--            and   type = 'U')
--   drop table tbl_Nota
--go

--if exists (select 1
--            from  sysobjects
--           where  id = object_id('tbl_Quimestre')
--            and   type = 'U')
--   drop table tbl_Quimestre
--go

--create database ITE_Colegio

--use ITE_Colegio

/*==============================================================*/
/* Table: tbl_Asistencia                                        */
/*==============================================================*/
create table tbl_Asistencia (
   asi_id_asistencia    int                  not null IDENTITY,
   est_id_estudiante    int                  null,
   cla_id_clase         int                  null,
   asi_fecha_asistencia datetime             not null,
   asi_tomar_asistencia bit                  not null,
   constraint PK_TBL_ASISTENCIA primary key (asi_id_asistencia)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Asistencia') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Asistencia' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Nota. Aqui se ingresará los datos del Nota.', 
--   'user', @CurrentUser, 'table', 'tbl_Asistencia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Asistencia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'asi_id_asistencia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_id_asistencia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Asistencia.',
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_id_asistencia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Asistencia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_id_estudiante')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'est_id_estudiante'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria generada automaticamente.',
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'est_id_estudiante'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Asistencia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'asi_fecha_asistencia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_fecha_asistencia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Fecha de la asistencia ingresada por teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_fecha_asistencia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Asistencia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'asi_tomar_asistencia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_tomar_asistencia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Validacion en campo boleano, seleccionado por el usuario, donde se registra si asiste o no el estudiante.',
--   'user', @CurrentUser, 'table', 'tbl_Asistencia', 'column', 'asi_tomar_asistencia'
--go

/*==============================================================*/
/* Table: tbl_Aula                                              */
/*==============================================================*/
create table tbl_Aula (
   au_id_aula           int                  not null IDENTITY,
   au_nombre_aula       varchar(10)          not null,
   constraint PK_TBL_AULA primary key (au_id_aula)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Aula') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Aula' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Aula. Aqui se ingresará los datos del aula.', 
--   'user', @CurrentUser, 'table', 'tbl_Aula'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Aula')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'au_id_aula')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Aula', 'column', 'au_id_aula'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Aula.',
--   'user', @CurrentUser, 'table', 'tbl_Aula', 'column', 'au_id_aula'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Aula')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'au_nombre_aula')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Aula', 'column', 'au_nombre_aula'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nombre del aula ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Aula', 'column', 'au_nombre_aula'
--go

/*==============================================================*/
/* Table: tbl_Clase                                             */
/*==============================================================*/
create table tbl_Clase (
   cla_id_clase         int                  not null IDENTITY,
   mat_id_materia       int                  not null,
   doc_id_docente       int                  not null,
   au_id_aula           int                  not null,
   constraint PK_TBL_CLASE primary key (cla_id_clase)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Clase') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Clase' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Clase. Aqui se ingresará los datos de la clase.', 
--   'user', @CurrentUser, 'table', 'tbl_Clase'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Clase')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'mat_id_materia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'mat_id_materia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Materia.',
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'mat_id_materia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Clase')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_id_docente')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'doc_id_docente'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria generada automaticamente.',
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'doc_id_docente'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Clase')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'au_id_aula')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'au_id_aula'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Aula.',
--   'user', @CurrentUser, 'table', 'tbl_Clase', 'column', 'au_id_aula'
--go

/*==============================================================*/
/* Table: tbl_Docente                                           */
/*==============================================================*/
create table tbl_Docente (
   doc_id_docente       int                  not null IDENTITY,
   doc_cedula           char(10)             not null,
   doc_nombres          varchar(50)          not null,
   doc_apellidos        varchar(50)          not null,
   doc_telefono         char(10)             not null,
   constraint PK_TBL_DOCENTE primary key (doc_id_docente)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Docente') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Docente' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Docente. Aqui se ingresará los datos del docente.', 
--   'user', @CurrentUser, 'table', 'tbl_Docente'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Docente')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_id_docente')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_id_docente'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria generada automaticamente.',
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_id_docente'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Docente')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_cedula')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_cedula'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Cedula del docente ingresada desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_cedula'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Docente')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_nombres')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_nombres'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nombres del docente ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_nombres'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Docente')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_apellidos')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_apellidos'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Apellidos del docente ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_apellidos'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Docente')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'doc_telefono')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_telefono'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Teléfonos del docente ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Docente', 'column', 'doc_telefono'
--go

/*==============================================================*/
/* Table: tbl_Estudiante                                        */
/*==============================================================*/
create table tbl_Estudiante (
   est_id_estudiante    int                  not null IDENTITY,
   est_cedula           char(10)             not null,
   est_nombres          varchar(50)          not null,
   est_apellidos        varchar(50)          not null,
   est_telefono         char(10)             not null,
   constraint PK_TBL_ESTUDIANTE primary key (est_id_estudiante)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Estudiante') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Estudiante' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Estudiante. Aqui se ingresará los datos del Estudiante.', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Estudiante')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_id_estudiante')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_id_estudiante'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria generada automaticamente.',
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_id_estudiante'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Estudiante')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_cedula')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_cedula'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Cedula del estudiante ingresada desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_cedula'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Estudiante')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_nombres')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_nombres'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nombres de estudiante ingresados desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_nombres'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Estudiante')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_apellidos')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_apellidos'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Apellidos de estudiante ingresados desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_apellidos'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Estudiante')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_telefono')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_telefono'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Teléefono de estudiante ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Estudiante', 'column', 'est_telefono'
--go

/*==============================================================*/
/* Table: tbl_Materia                                           */
/*==============================================================*/
create table tbl_Materia (
   mat_id_materia       int                  not null IDENTITY,
   mat_cod_materia      varchar(5)           null,
   mat_nombre_materia   varchar(50)          null,
   constraint PK_TBL_MATERIA primary key (mat_id_materia)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Materia') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Materia' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Materia. Aqui se ingresará los datos del aula.', 
--   'user', @CurrentUser, 'table', 'tbl_Materia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Materia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'mat_id_materia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Materia', 'column', 'mat_id_materia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Materia.',
--   'user', @CurrentUser, 'table', 'tbl_Materia', 'column', 'mat_id_materia'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Materia')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'mat_nombre_materia')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Materia', 'column', 'mat_nombre_materia'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nombre de la materia ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Materia', 'column', 'mat_nombre_materia'
--go

/*==============================================================*/
/* Table: tbl_Nota                                              */
/*==============================================================*/
create table tbl_Nota (
   not_id_nota          int                  not null IDENTITY,
   est_id_estudiante    int                  null,
   qui_id_quimestre     int                  null,
   cla_id_clase         int                  null,
   not_nota1            numeric(8,2)         default (0),
   not_nota2            numeric(8,2)         default (0),
   not_nota3            numeric(8,2)         default (0),
   not_nota4            numeric(8,2)         default (0),
   constraint PK_TBL_NOTA primary key (not_id_nota)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Nota') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Nota' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Nota. Aqui se ingresará los datos del Nota.', 
--   'user', @CurrentUser, 'table', 'tbl_Nota'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'not_id_nota')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_id_nota'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Nota.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_id_nota'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'est_id_estudiante')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'est_id_estudiante'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria generada automaticamente.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'est_id_estudiante'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qui_id_quimestre')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'qui_id_quimestre'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Quimestre.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'qui_id_quimestre'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'not_nota1')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota1'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nota 1 de ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota1'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'not_nota2')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota2'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nota 2 de ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota2'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'not_nota3')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota3'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nota 3 de ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota3'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Nota')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'not_nota4')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota4'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Nota 2 de ingresado desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Nota', 'column', 'not_nota4'
--go

/*==============================================================*/
/* Table: tbl_Quimestre                                         */
/*==============================================================*/
create table tbl_Quimestre (
   qui_id_quimestre     int                  not null IDENTITY,
   qui_fecha_inicio     datetime             not null,
   qui_fecha_fin        datetime             not null,
   qui_numero_quimestre char(2)              not null,
   constraint PK_TBL_QUIMESTRE primary key (qui_id_quimestre)
)
go

--if exists (select 1 from  sys.extended_properties
--           where major_id = object_id('tbl_Quimestre') and minor_id = 0)
--begin 
--   declare @CurrentUser sysname 
--select @CurrentUser = user_name() 
--execute sp_dropextendedproperty 'MS_Description',  
--   'user', @CurrentUser, 'table', 'tbl_Quimestre' 
 
--end 


--select @CurrentUser = user_name() 
--execute sp_addextendedproperty 'MS_Description',  
--   'Tabla Quimestre. Aqui se ingresará los datos del quimestre.', 
--   'user', @CurrentUser, 'table', 'tbl_Quimestre'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Quimestre')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qui_id_quimestre')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_id_quimestre'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Clave primaria autogenerada de la tabla Quimestre.',
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_id_quimestre'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Quimestre')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qui_fecha_inicio')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_fecha_inicio'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Fecha de inicio en la que comienza el quimestre ingresada desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_fecha_inicio'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Quimestre')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qui_fecha_fin')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_fecha_fin'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Fecha de fin en la que termina el quimestre ingresada desde teclado.',
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_fecha_fin'
--go

--if exists(select 1 from sys.extended_properties p where
--      p.major_id = object_id('tbl_Quimestre')
--  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'qui_numero_quimestre')
--)
--begin
--   declare @CurrentUser sysname
--select @CurrentUser = user_name()
--execute sp_dropextendedproperty 'MS_Description', 
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_numero_quimestre'

--end


--select @CurrentUser = user_name()
--execute sp_addextendedproperty 'MS_Description', 
--   'Se ingresa por teclado el nombre con la que se identificará el quimestre 1 y el quimestre 2.',
--   'user', @CurrentUser, 'table', 'tbl_Quimestre', 'column', 'qui_numero_quimestre'
--go

alter table tbl_Asistencia
   add constraint FK_TBL_ASIS_REFERENCE_TBL_ESTU foreign key (est_id_estudiante)
      references tbl_Estudiante (est_id_estudiante)
go

alter table tbl_Asistencia
   add constraint FK_TBL_ASIS_REFERENCE_TBL_CLAS foreign key (cla_id_clase)
      references tbl_Clase (cla_id_clase)
go

alter table tbl_Clase
   add constraint FK_TBL_CLAS_REFERENCE_TBL_MATE foreign key (mat_id_materia)
      references tbl_Materia (mat_id_materia)
go

alter table tbl_Clase
   add constraint FK_TBL_CLAS_REFERENCE_TBL_DOCE foreign key (doc_id_docente)
      references tbl_Docente (doc_id_docente)
go

alter table tbl_Clase
   add constraint FK_TBL_CLAS_REFERENCE_TBL_AULA foreign key (au_id_aula)
      references tbl_Aula (au_id_aula)
go

alter table tbl_Nota
   add constraint FK_TBL_NOTA_REFERENCE_TBL_ESTU foreign key (est_id_estudiante)
      references tbl_Estudiante (est_id_estudiante)
go

alter table tbl_Nota
   add constraint FK_TBL_NOTA_REFERENCE_TBL_QUIM foreign key (qui_id_quimestre)
      references tbl_Quimestre (qui_id_quimestre)
go

alter table tbl_Nota
   add constraint FK_TBL_NOTA_REFERENCE_TBL_CLAS foreign key (cla_id_clase)
      references tbl_Clase (cla_id_clase)
go

