CREATE TABLE [dbo].[Workload] (
    [ID]        INT          IDENTITY (1, 1) NOT NULL,
    [Year]      INT          NULL,
    [JAN]       NUMERIC (10) DEFAULT ((0)) NULL,
    [FEB]       NUMERIC (10) DEFAULT ((0)) NULL,
    [MAR]       NUMERIC (10) DEFAULT ((0)) NULL,
    [APR]       NUMERIC (10) DEFAULT ((0)) NULL,
    [MAY]       NUMERIC (10) DEFAULT ((0)) NULL,
    [JUN]       NUMERIC (10) DEFAULT ((0)) NULL,
    [JUL]       NUMERIC (10) DEFAULT ((0)) NULL,
    [AUG]       NUMERIC (10) DEFAULT ((0)) NULL,
    [SEP]       NUMERIC (10) DEFAULT ((0)) NULL,
    [OCT]       NUMERIC (10) DEFAULT ((0)) NULL,
    [NOV]       NUMERIC (10) DEFAULT ((0)) NULL,
    [DEC]       NUMERIC (10) DEFAULT ((0)) NULL,
    [TOTAL]     AS           ((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC]),
    [Month_Avg] AS           (((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC])/(12)),
    [Day_Avg]   AS           (((((((((((([JAN]+[FEB])+[MAR])+[APR])+[MAY])+[JUN])+[JUL])+[AUG])+[SEP])+[OCT])+[NOV])+[DEC])/(365))
);

