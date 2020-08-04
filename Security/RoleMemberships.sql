ALTER ROLE [db_owner] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_owner] ADD MEMBER [manager];


GO
ALTER ROLE [db_accessadmin] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_accessadmin] ADD MEMBER [manager];


GO
ALTER ROLE [db_securityadmin] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_securityadmin] ADD MEMBER [manager];


GO
ALTER ROLE [db_ddladmin] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_ddladmin] ADD MEMBER [manager];


GO
ALTER ROLE [db_backupoperator] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_backupoperator] ADD MEMBER [manager];


GO
ALTER ROLE [db_datareader] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_datareader] ADD MEMBER [manager];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [manager];


GO
ALTER ROLE [db_denydatareader] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_denydatareader] ADD MEMBER [manager];


GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [IHTLABM\LabManager];


GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [manager];

