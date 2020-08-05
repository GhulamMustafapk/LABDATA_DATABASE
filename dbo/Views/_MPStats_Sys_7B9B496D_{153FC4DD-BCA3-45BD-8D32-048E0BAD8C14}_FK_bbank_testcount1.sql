CREATE VIEW [dbo].[_MPStats_Sys_7B9B496D_{153FC4DD-BCA3-45BD-8D32-048E0BAD8C14}_FK_bbank_testcount1] WITH SCHEMABINDING AS SELECT DATEDIFF(day, convert(datetime2, '1900-01-01', 121), LEFT_T.[Date])/30 as ParentPID, DATEDIFF(day, convert(datetime2, '1900-01-01', 121), RIGHT_T.[Date])/30 as ChildPID, COUNT_BIG(*) AS C 
 FROM [dbo].[testcount] AS LEFT_T JOIN [dbo].[bbank]  AS RIGHT_T 
 ON LEFT_T.[Date] = RIGHT_T.[Date] 
 GROUP BY DATEDIFF(day, convert(datetime2, '1900-01-01', 121), LEFT_T.[Date])/30, DATEDIFF(day, convert(datetime2, '1900-01-01', 121), RIGHT_T.[Date])/30
GO
CREATE UNIQUE CLUSTERED INDEX [i__MPStats_Sys_FK_bbank_testcount1_7b9b496d]
    ON [dbo].[_MPStats_Sys_7B9B496D_{153FC4DD-BCA3-45BD-8D32-048E0BAD8C14}_FK_bbank_testcount1]([ParentPID] ASC, [ChildPID] ASC);

