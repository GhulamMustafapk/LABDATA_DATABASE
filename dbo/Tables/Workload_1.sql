CREATE TABLE [dbo].[Workload] (
    [ID]        INT NOT NULL,
    [Year]      INT IDENTITY (1, 1) NOT NULL,
    [JAN]       INT NULL,
    [FEB]       INT NULL,
    [MAR]       INT NULL,
    [APR]       INT NULL,
    [MAY]       INT NULL,
    [JUN]       INT NULL,
    [JUL]       INT NULL,
    [AUG]       INT NULL,
    [SEP]       INT NULL,
    [OCT]       INT NULL,
    [NOV]       INT NULL,
    [DEC]       INT NULL,
    [TOTAL]     AS  ((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC]),
    [Month_Avg] AS  (((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC])/(12)),
    [Day_Avg]   AS  (((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC])/(365)),
    CONSTRAINT [PK_Workload] PRIMARY KEY CLUSTERED ([Year] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year Value', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for January', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'JAN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for February', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'FEB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for March', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'MAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for April', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'APR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for May', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'MAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for June', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'JUN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for July', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'JUL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for August', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'AUG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for September', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'SEP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for October', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'OCT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for November', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'NOV';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Workload for December', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'DEC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'TOTAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Average per Month " 30 days per Month"', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'Month_Avg';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Day average based on a year as 365 days', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Workload', @level2type = N'COLUMN', @level2name = N'Day_Avg';

