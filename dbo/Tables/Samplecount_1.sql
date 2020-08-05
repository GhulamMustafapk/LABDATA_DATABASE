CREATE TABLE [dbo].[Samplecount] (
    [Date]               DATE         CONSTRAINT [DF_Samplecount_Date] DEFAULT (getdate()) NOT NULL,
    [INDOOR_M]           NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [INDOOR_E]           NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [INDOOR_N]           NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [INDOOR_TOTAL]       AS           (([INDOOR_M]+[INDOOR_E])+[INDOOR_N]),
    [OUTDOOR_M]          NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [OUTDOOR_E]          NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [OUTDOOR_N]          NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [OUTDOOR_TOTAL]      AS           (([OUTDOOR_M]+[OUTDOOR_E])+[OUTDOOR_N]),
    [OUTSOURCED_OPD]     NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [OUTSOURCED_IPD]     NUMERIC (10) DEFAULT ((0)) NOT NULL,
    [OUTSOURCED_TOTAL]   AS           ([OUTSOURCED_OPD]+[OUTSOURCED_IPD]),
    [TOTAL_M]            AS           ([INDOOR_M]+[OUTDOOR_M]),
    [TOTAL_E]            AS           ([INDOOR_E]+[OUTDOOR_E]),
    [TOTAL_N]            AS           ([INDOOR_N]+[OUTDOOR_N]),
    [Total_Sample_Count] AS           (((([INDOOR_M]+[INDOOR_E])+[INDOOR_N])+(([OUTDOOR_M]+[OUTDOOR_E])+[OUTDOOR_N]))+([OUTSOURCED_OPD]+[OUTSOURCED_IPD])),
    CONSTRAINT [PK_Samplecount] PRIMARY KEY CLUSTERED ([Date] ASC),
    CONSTRAINT [FK_Samplecount_testcount1] FOREIGN KEY ([Date]) REFERENCES [dbo].[testcount] ([Date])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indoor Morning', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'INDOOR_M';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indoor Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'INDOOR_E';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indoor Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'INDOOR_N';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Indoor Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'INDOOR_TOTAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outdoor Morning', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTDOOR_M';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outdoor Evening', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTDOOR_E';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outdoor Night', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTDOOR_N';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outdoor Total', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTDOOR_TOTAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outsourced OPD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTSOURCED_OPD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outsourced IPD', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTSOURCED_IPD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Outsourced', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'OUTSOURCED_TOTAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TOTAL_MORNING', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'TOTAL_M';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TOTAL EVENING', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'TOTAL_E';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'TOTAL NIGHT', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Samplecount', @level2type = N'COLUMN', @level2name = N'TOTAL_N';

