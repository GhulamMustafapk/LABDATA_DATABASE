CREATE TABLE [dbo].[testcount] (
    [Date]      DATE         CONSTRAINT [DF_testcount_Date] DEFAULT (getdate()) NOT NULL,
    [HIS]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [CYT]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [HEM]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [CHEM]      NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [UBIO]      NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [SPC]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [SER]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [PAR]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [MIC]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [MOL]       NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [BBANK]     NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [total]     AS           (((((((((([HIS]+[CYT])+[HEM])+[CHEM])+[SPC])+[UBIO])+[PAR])+[SER])+[MIC])+[MOL])+[BBANK]),
    [EntryDate] DATETIME     DEFAULT (getdate()) NOT NULL,
    [recordID]  INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    CONSTRAINT [PK_testcount] PRIMARY KEY CLUSTERED ([Date] ASC) WITH (DATA_COMPRESSION = ROW)
);


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[HIS]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[CYT]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[HEM]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[CHEM]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[MIC]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[MOL]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
ADD SENSITIVITY CLASSIFICATION TO
    [dbo].[testcount].[BBANK]
    WITH (LABEL = 'Confidential', LABEL_ID = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', INFORMATION_TYPE = 'Financial', INFORMATION_TYPE_ID = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373');


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Test Count data', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Test Count Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Histopathology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HIS';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HIS';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HIS';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HIS';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HIS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cytology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CYT';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CYT';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CYT';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CYT';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CYT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Hematology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'HEM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clinical Chemistry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CHEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CHEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CHEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CHEM';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'CHEM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Urine Biochemistry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'UBIO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Special Chemistry', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'SPC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Serology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'SER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Parasitology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'PAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Microbiology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MIC';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MIC';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MIC';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MIC';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MIC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Molecular Biology', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MOL';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MOL';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MOL';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MOL';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'MOL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Blood Bank', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'BBANK';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_id', @value = 'c44193e1-0e58-4b2a-9001-f7d6e7bc1373', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'BBANK';


GO
EXECUTE sp_addextendedproperty @name = N'sys_information_type_name', @value = 'Financial', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'BBANK';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_id', @value = '331f0b13-76b5-2f1b-a77b-def5a73c73c2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'BBANK';


GO
EXECUTE sp_addextendedproperty @name = N'sys_sensitivity_label_name', @value = 'Confidential', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'BBANK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Day Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Entry date time', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'EntryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Record ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'testcount', @level2type = N'COLUMN', @level2name = N'recordID';

