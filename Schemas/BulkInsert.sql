use AdoptersForLife
GO

--BULK INSERT accepts only absolute path, it has to be changed

BULK INSERT dbo.Animals FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_animals_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A')
GO
BULK INSERT dbo.Volunteers FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_volunteers_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A')
GO
BULK INSERT dbo.PAs FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_PAs_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Preferences FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_preferences_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Works FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_works_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Adoption_processes FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_adoption_processes_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Adoptions FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_adoptions_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Walks FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_walks_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Presentations FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T1_presentations_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO

SELECT * FROM dbo.Animals
GO
SELECT * FROM dbo.PAs
GO
SELECT * FROM dbo.Volunteers
GO
SELECT * FROM dbo.Works
GO
SELECT * FROM dbo.Preferences
GO
SELECT * FROM dbo.Adoption_processes
GO
SELECT * FROM dbo.Adoptions
GO
SELECT * FROM dbo.Walks
GO
SELECT * FROM dbo.Presentations
GO


WAITFOR DELAY '00:00:2'
GO

BULK INSERT dbo.Animals FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_animals_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Volunteers FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_volunteers_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.PAs FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_PAs_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Preferences FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_preferences_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Works FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_works_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Adoption_processes FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_adoption_processes_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Adoptions FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_adoptions_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Walks FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_walks_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO
BULK INSERT dbo.Presentations FROM 'C:\Users\adam\Documents\SQL Server Management Studio\Lab2\Generator\T2_presentations_DB.csv' WITH (FIELDTERMINATOR='|', ROWTERMINATOR='0x0A', FIRSTROW=2)
GO

SELECT * FROM dbo.Animals
GO
SELECT * FROM dbo.PAs
GO
SELECT * FROM dbo.Volunteers
GO
SELECT * FROM dbo.Works
GO
SELECT * FROM dbo.Preferences
GO
SELECT * FROM dbo.Adoption_processes
GO
SELECT * FROM dbo.Adoptions
GO
SELECT * FROM dbo.Walks
GO
SELECT * FROM dbo.Presentations
GO

Select * FROM dbo.PAs
WHERE PESEL = 51800219604
GO