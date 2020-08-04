CREATE TABLE [dbo].[bbank] (
    [Date]                     DATE       NOT NULL,
    [Donor_screened]           FLOAT (53) NULL,
    [donors_male]              FLOAT (53) NULL,
    [donors_female]            FLOAT (53) NULL,
    [Testcount_HBV]            FLOAT (53) NULL,
    [Testcount_HCV]            FLOAT (53) NULL,
    [Testcount_HIV]            FLOAT (53) NULL,
    [Testcount_SYPH]           FLOAT (53) NULL,
    [Testcount_MP]             FLOAT (53) NULL,
    [Reactive_HBV]             FLOAT (53) NULL,
    [Reactive_HCV]             FLOAT (53) NULL,
    [Reactive_HIV]             FLOAT (53) NULL,
    [Reactive_SYPH]            FLOAT (53) NULL,
    [Positive_MP]              FLOAT (53) NULL,
    [donor_deffred]            FLOAT (53) NULL,
    [donor_bleed]              FLOAT (53) NULL,
    [Prepared_FFPs]            FLOAT (53) NULL,
    [Prepared_RCC]             FLOAT (53) NULL,
    [Prepared_PLT_concentrate] FLOAT (53) NULL,
    [Prepared_Megaunits]       FLOAT (53) NULL,
    CONSTRAINT [PK_bbank] PRIMARY KEY CLUSTERED ([Date] ASC)
);

