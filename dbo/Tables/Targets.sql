CREATE TABLE [dbo].[Targets] (
    [For_Year] NUMERIC (8) NOT NULL,
    [Year]     NUMERIC (8) NOT NULL,
    [Quarter]  AS          ([Year]/(4)) PERSISTED,
    [Month]    AS          ([Year]/(12)) PERSISTED,
    [Day]      AS          ([Year]/(365)) PERSISTED,
    [hostname] AS          (host_name()),
    CONSTRAINT [PK_Targets] PRIMARY KEY CLUSTERED ([For_Year] ASC) WITH (DATA_COMPRESSION = ROW)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'test count targets', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'For_Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Year Target', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quarter Target', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Month Target', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Day Target', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'Day';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'HostName', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Targets', @level2type = N'COLUMN', @level2name = N'hostname';

