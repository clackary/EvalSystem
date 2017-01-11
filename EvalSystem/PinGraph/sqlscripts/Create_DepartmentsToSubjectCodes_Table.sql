USE [EvalDatabase2]
GO

/****** Object:  Table [dbo].[DeparmentsToSubjectCodes]    Script Date: 8/8/2016 8:24:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DepartmentsToSubjectCodes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[deparmentCode] [varchar](4) NOT NULL,
	[subjectCode] [varchar](4) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/**populate the table**/
INSERT INTO DepartmentsToSubjectCodes(subjectCode, departmentCode)
VALUES
('ACTG' , 4000 ), 
('AERO' , 7007 ),
('ANTH' , 7006 ),
('ART' , 3004  ),
--('ARTH' ,      ),
--('ASTR' ,      ),
--('AT' ,        ),
('ATHL' , 5004 ),
('ATTC' , 8007 ),
--('AUSV' ,      ),
('BIS' , 1001  ),
('BSAD' , 4001 ),
('BTNY' , 6000 ),
('CHEM' , 6001 ),
('CHF' , 5000  ),
('CJ' , 7000  ),
--('CMT' ,      ),
('COMM' ,3000 ),
('CS' , 8001 ),
--('DANC' ,      ),
('DENT' , 2001 ),
--('DET' ,      ),
--('DMS' ,      ),
--('ECE' ,      ),
('ECON' , 4002 ),
('EDUC' , 5002 ),
('EET' , 8002  ),
('ENGL' , 3001 ),
('ENGR' , 8009 ),
--('ENTR' ,      ),
('ESL' , 3006  ),
--('ESS' ,      ),
--('ETC' ,      ),
--('ETM' ,      ),
--('FIN' ,      ),
('FL' , 3002  ),
('GEO' , 7008  ),
('GEOG' , 6002 ),
('GERT' , 7005 ),
('HAS' , 2004  ),
--('HIM' ,      ),
('HIST' , 7001 ),
('HLTH' , 5001 ),
--('HNRS' ,      ),
--('HTHS' ,      ),
--('IDT' ,      ),
('IST' , 4003  ),
--('LEAP' ,      ),
('LIBS' , 1000 ),
--('LING' ,      ),
--('MACC' ,      ),
('MATH' , 6003 ),
('MBA' , 4005  ),
--('MCJ' ,      ),
('MED' , 2009  ),
--('MENG' ,      ),
--('MET' ,      ),
--('MFET' ,      ),
--('MGMT' ,      ),
--('MHA' ,      ),
--('MICR' ,      ),
('MILS' , 7002 ),
--('MKTG' ,      ),
--('MLS' ,      ),
--('MPC' ,      ),
--('MSAT' ,      ),
--('MSN' ,      ),
--('MSNP' ,      ),
--('MSRS' ,      ),
--('MSRT' ,      ),
--('MTAX' ,      ),
--('MTHE' ,      ),
--('MUSC' ,      ),
--('NET' ,      ),
--('NEUR' ,      ),
('NRSG' , 2005 ),
--('NUCM' ,      ),
--('NUTR' ,      ),
--('OCRE' ,      ),
--('PAR' ,      ),
--('PE' ,      ),
--('PEP' ,      ),
('PHIL' , 7003 ),
('PHYS' , 6005 ),
--('POLS' ,      ),
--('PS' ,      ),
--('PSY' ,      ),
--('QUAN' ,      ),
('RADT' , 2006 ),
--('RATH' ,      ),
--('REC' ,      ),
('REST' , 2007 ),
--('SCM' ,      ),
--('SOC' ,      ),
--('SW' ,      ),
--('THEA' ,      ),
--('UNIV' ,      ),
--('WEB' ,      ),
--('WGS' ,      ),
--('WSU' ,      ),
('ZOOL' , 6006 )


