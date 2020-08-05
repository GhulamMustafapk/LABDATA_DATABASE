CREATE VIEW [dbo].[_MPStats_Sys_79B300FB_{90523402-402D-40B3-B8AB-FA0050EDE79C}_FK_Samplecount_testcount1] WITH SCHEMABINDING AS SELECT DATEDIFF(day, convert(datetime2, '1900-01-01', 121), LEFT_T.[Date])/30 as ParentPID, DATEDIFF(day, convert(datetime2, '1900-01-01', 121), RIGHT_T.[Date])/30 as ChildPID, COUNT_BIG(*) AS C 
 FROM [dbo].[testcount] AS LEFT_T JOIN [dbo].[Samplecount]  AS RIGHT_T 
 ON LEFT_T.[Date] = RIGHT_T.[Date] 
 GROUP BY DATEDIFF(day, convert(datetime2, '1900-01-01', 121), LEFT_T.[Date])/30, DATEDIFF(day, convert(datetime2, '1900-01-01', 121), RIGHT_T.[Date])/30
GO
CREATE UNIQUE CLUSTERED INDEX [i__MPStats_Sys_FK_Samplecount_testcount1_79b300fb]
    ON [dbo].[_MPStats_Sys_79B300FB_{90523402-402D-40B3-B8AB-FA0050EDE79C}_FK_Samplecount_testcount1]([ParentPID] ASC, [ChildPID] ASC);

