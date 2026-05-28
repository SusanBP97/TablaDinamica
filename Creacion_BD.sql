--CREACION BASE
CREATE DATABASE NOMINA
--USO DE LA BASE 
USE NOMINA 

---CREACION DE TABLAS 
CREATE TABLE [dbo].[AN_ACUM_PER](
	[NUM_EMP] [varchar](6) NOT NULL,
	[TIPO_NOM] [varchar](2) NOT NULL,
	[NUM_PERIODO] [int] NOT NULL,
	[PERIODO_ANUAL] [int] NOT NULL,
	[TIPO_DIP] [char](1) NOT NULL,
	[CLV_DIP] [varchar](4) NOT NULL,
	[IMP] [decimal](12, 2) NULL,
	[DATO] [decimal](12, 2) NULL,
	[IMP_GRAV] [decimal](12, 2) NULL,
	[IMP_EXE] [decimal](12, 2) NULL,
	[FECHA] [varchar](8) NULL,
	[CCOSTO] [varchar](10) NULL,
	[REFER] [varchar](12) NULL,
	[CAMPO_8] [varchar](10) NULL,
	[CAMPO_9] [varchar](10) NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[AN_EMP](
	[NUM_EMP] [varchar](6) NOT NULL,
	[NOMP_EMP] [varchar](27) NULL,
	[AP_PATER] [varchar](27) NULL,
	[AP_MATER] [varchar](27) NULL,
	[TITULO] [varchar](10) NULL,
	[SEXO] [char](1) NULL,
	[F_NAC] [varchar](8) NULL,
	[SIN_USO7] [varchar](10) NULL,
	[SIN_USO8] [varchar](10) NULL,
	[SIN_USO9] [varchar](10) NULL,
	[NUM_SOLIC] [varchar](8) NULL,
	[RFC] [varchar](15) NULL,
	[AJUSTE_ANUAL] [varchar](1) NULL,
	[CRED_SALARIO] [varchar](1) NULL,
	[F_ALTA] [varchar](8) NULL,
	[F_INGRESO] [varchar](8) NULL,
	[F_PLANTA] [varchar](8) NULL,
	[F_BAJA] [varchar](8) NULL,
	[F_BAJA_RESP] [varchar](8) NULL,
	[F_BAJA_IMSS] [varchar](8) NULL,
	[SIN_USO20] [varchar](10) NULL,
	[TURNO] [varchar](3) NULL,
	[CLV_TARJ] [varchar](1) NULL,
	[CCOSTO] [varchar](10) NULL,
	[EST_ORG] [varchar](20) NULL,
	[PLAZA] [varchar](10) NULL,
	[PUESTO] [varchar](4) NULL,
	[CATEGORIA] [varchar](4) NULL,
	[CONTRATO] [varchar](10) NULL,
	[TIPO_NOM] [varchar](2) NULL,
	[TIPO_EMP] [varchar](2) NULL,
	[F_DIST_PAGO] [varchar](2) NULL,
	[TIPO_PAGO] [char](1) NULL,
	[BCO_DEP] [varchar](3) NULL,
	[CTA_BAN] [varchar](20) NULL,
	[SUCURSAL] [varchar](10) NULL,
	[RECINTO] [varchar](4) NULL,
	[UBICA_FIS] [varchar](4) NULL,
	[ZONA_EC] [varchar](3) NULL,
	[GUIA_POSTAL] [varchar](4) NULL,
	[SIN_USO40] [varchar](10) NULL,
	[IMSS] [varchar](15) NULL,
	[NO_REG_PAT_IMSS] [varchar](2) NULL,
	[TIPO_COT_IMSS] [varchar](1) NULL,
	[CURP] [varchar](18) NULL,
	[SIN_USO45] [varchar](10) NULL,
	[SIN_USO46] [varchar](10) NULL,
	[SIN_USO47] [varchar](10) NULL,
	[SIN_USO48] [varchar](10) NULL,
	[SIN_USO49] [varchar](10) NULL,
	[SIN_USO50] [varchar](50) NULL,
	[TABULADOR] [varchar](6) NULL,
	[SAL_MENS] [decimal](12, 2) NULL,
	[SAL_DIARIO] [decimal](12, 2) NULL,
	[SAL_DIA_INT] [decimal](12, 2) NULL,
	[SAL_DIA_SAR] [decimal](12, 2) NULL,
	[SAL_DIA_INFO] [decimal](12, 2) NULL,
	[SAL_INT_FINI] [decimal](12, 2) NULL,
	[SAL_MINIMO] [varchar](1) NULL,
	[SIN_USO59] [varchar](10) NULL,
	[SIN_USO60] [varchar](10) NULL,
	[ADICION1_NUM] [decimal](12, 2) NULL,
	[ADICION2_NUM] [decimal](12, 2) NULL,
	[ADICION1_FECH] [varchar](10) NULL,
	[ADICION2_FECH] [varchar](10) NULL,
	[ADICION1_ALFA] [varchar](40) NULL,
	[ADICION2_ALFA] [varchar](40) NULL,
	[ADICION3_ALFA] [varchar](40) NULL,
	[ADICION4_ALFA] [varchar](40) NULL,
	[FOLIO_CONTRATO] [int] NULL,
	[C_BAJA] [varchar](2) NULL,
	[NOMP_EMP_NORMAL] [varchar](27) NULL,
	[AP_PATER_NORMAL] [varchar](27) NULL,
	[AP_MATER_NORMAL] [varchar](27) NULL,
	[F_ALTA_CA] [varchar](8) NULL,
	[F_BAJA_CA] [varchar](8) NULL,
	[CBAJA_CA] [varchar](4) NULL,
	[PORC_CA] [decimal](12, 2) NULL,
	[IMPORTE_CA] [decimal](12, 2) NULL,
	[F_VIGOR] [varchar](8) NULL,
	[RETENCION_CA] [varchar](1) NULL,
 CONSTRAINT [CONSTAN_EMP] PRIMARY KEY CLUSTERED 
(
	[NUM_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[AN_DIPS](
	[TIPO_NOM] [varchar](2) NOT NULL,
	[CLV_DIP] [varchar](4) NOT NULL,
	[NOM_DIP] [varchar](40) NULL,
	[PERC_DED] [varchar](1) NULL,
	[GRAV_NG] [varchar](2) NULL,
	[GRAV_LOC] [varchar](1) NULL,
	[GRAV_EST] [varchar](1) NULL,
	[TOPE_NG] [int] NULL,
	[INCIDENCIA] [varchar](1) NULL,
	[CLV_SALDO] [varchar](1) NULL,
	[SEC_CALC] [int] NULL,
	[TOPE_CLV] [varchar](1) NULL,
	[TOPE_CANT] [varchar](10) NULL,
	[TOPE_TIPO] [varchar](1) NULL,
	[VAL_PAR1_TIPO] [varchar](1) NULL,
	[VAL_PAR1_DESDE] [decimal](12, 2) NULL,
	[VAL_PAR1_HASTA] [decimal](12, 2) NULL,
	[VAL_PAR1_DEC] [varchar](1) NULL,
	[VAL_PAR1_DEF] [decimal](12, 2) NULL,
	[VAL_PAR2_TIPO] [varchar](1) NULL,
	[VAL_PAR2_DESDE] [decimal](12, 2) NULL,
	[VAL_PAR2_HASTA] [decimal](12, 2) NULL,
	[VAL_PAR2_DEC] [varchar](1) NULL,
	[VAL_PAR2_DEF] [decimal](12, 2) NULL,
	[VAL_PAR3_TIPO] [varchar](1) NULL,
	[VAL_PAR3_DESDE] [varchar](10) NULL,
	[VAL_PAR3_HASTA] [varchar](10) NULL,
	[REDONDEO_IMP] [varchar](1) NULL,
	[REDONDEO_DATO] [varchar](1) NULL,
	[FORMULA] [varchar](max) NULL,
	[FORMULA_PRES] [varchar](255) NULL,
	[FORMULA_FINI] [varchar](255) NULL,
	[FORMULA_AVANZADA] [varchar](1) NULL,
	[IMPRIMIR] [varchar](1) NULL,
	[APLICA_PENSION] [varchar](1) NULL,
	[BANDERA_FORMULA] [varchar](1) NULL,
	[BANDERA_NIVEL] [varchar](2) NULL,
	[DESC_RECIBOS] [varchar](10) NULL,
	[DIP_SALDOS] [varchar](20) NULL,
	[SUMA_RESTA_SALDOS] [varchar](1) NULL,
	[TRANSACCIONES] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[AN_TAB_CCOSTO](
	[CCOSTO] [varchar](10) NOT NULL,
	[NOM_CCOSTO] [varchar](80) NULL,
	[STATUS] [varchar](1) NULL,
	[F_ALTA_CCOSTO] [varchar](8) NULL,
	[NVO_CCOSTO] [varchar](10) NULL,
	[REG_PAT] [varchar](3) NULL,
 CONSTRAINT [CONSTAN_TAB_CCOSTO] PRIMARY KEY CLUSTERED 
(
	[CCOSTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[AN_TAB_PUEST](
	[PUESTO] [varchar](4) NOT NULL,
	[NOM_PUESTO] [varchar](40) NULL,
	[DESCRIPCION] [varchar](max) NULL,
	[CATEGORIA] [varchar](4) NULL,
	[PUESTO_REPORTA] [varchar](4) NULL,
	[OCUPANTES] [varchar](250) NULL,
	[OBJETIVO] [varchar](max) NULL,
	[PUNTOS] [varchar](8) NULL,
	[FECHA] [varchar](8) NULL,
	[GERENCIA] [varchar](20) NULL,
	[TIPO_PUEST] [varchar](15) NULL,
	[TABULADOR] [varchar](10) NULL,
	[VALUACION] [varchar](15) NULL,
	[EST_ORG] [varchar](50) NULL,
	[NIVEL] [varchar](4) NULL,
	[SDO_MENSUAL] [decimal](12, 2) NULL,
	[PLAN_COMPENSACION] [varchar](6) NULL,
	[F_ACTUALIZA] [varchar](15) NULL,
	[TOT_SUMARIO1] [decimal](12, 2) NULL,
	[TOT_SUMARIO2] [decimal](12, 2) NULL,
	[TOT_SUMARIO3] [decimal](12, 2) NULL,
	[TOT_SUMARIO4] [decimal](12, 2) NULL,
	[TOT_SUMARIO5] [decimal](12, 2) NULL,
	[TIPO_GERENCIA] [varchar](1) NULL,
	[TIPO_OFICINA] [varchar](1) NULL,
 CONSTRAINT [CONSTAN_TAB_PUEST] PRIMARY KEY CLUSTERED 
(
	[PUESTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[AN_RECINTOS](
	[RECINTO] [varchar](4) NOT NULL,
	[NOMBRE] [varchar](100) NULL,
	[NUM_PAT_IMSS] [varchar](2) NULL,
	[ZONA_ECONOMICA] [varchar](3) NULL,
	[CLV_TAB_IME] [varchar](2) NULL,
	[LUGAR_ENT_VALES] [varchar](40) NULL,
	[CALLE] [varchar](60) NULL,
	[NUM_EXT] [varchar](20) NULL,
	[NUM_INT] [varchar](20) NULL,
	[COLONIA] [varchar](50) NULL,
	[CP] [varchar](5) NULL,
	[LOCALIDAD] [varchar](50) NULL,
	[DEL_MUN] [varchar](40) NULL,
	[ENT_FED] [varchar](40) NULL,
 CONSTRAINT [CONSTAN_RECINTOS] PRIMARY KEY CLUSTERED 
(
	[RECINTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO