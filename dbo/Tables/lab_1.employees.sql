CREATE TABLE [dbo].[lab.employees] (
    [emp_id]      NUMERIC (5)  NOT NULL,
    [emp_name]    NCHAR (30)   NOT NULL,
    [father_name] NCHAR (30)   NOT NULL,
    [city]        NCHAR (20)   NOT NULL,
    [joiningdate] DATE         NOT NULL,
    [exitdate]    DATE         NULL,
    [section]     NCHAR (20)   NOT NULL,
    [phone]       NUMERIC (11) NOT NULL,
    [Designation] NCHAR (30)   NOT NULL,
    [status]      NCHAR (20)   NOT NULL,
    CONSTRAINT [PK_lab.employees] PRIMARY KEY CLUSTERED ([emp_id] ASC)
);

