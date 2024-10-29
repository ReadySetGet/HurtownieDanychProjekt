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

WAITFOR DELAY '00:00:30'
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

UPDATE dbo.Animals
SET Animal_name = 'Bobo'
WHERE Animal_ID = 1
UPDATE dbo.PAs
SET Pa_name = 'Bobo'
WHERE PA_ID = 1
UPDATE dbo.Volunteers
SET Volunteer_name = 'Bobo'
WHERE Volunteer_ID = 1
UPDATE dbo.Preferences
SET Disabilities = 'TAK'
WHERE Questionnaire_nr = 1
UPDATE dbo.Works
SET Date_to = '2024-10-27'
WHERE ID = 1
UPDATE dbo.Adoption_processes
SET Date_to = '2024-10-27'
WHERE Ad_proc_ID = 1
UPDATE dbo.Adoptions
SET Date_of_adopting = '2024-10-27'
WHERE Certificate_nr = 1
UPDATE dbo.Walks
SET Date_of_walking = '2024-10-27'
WHERE ID = 1
UPDATE dbo.Presentations
SET Date_of_presenting = '2024-10-27'
WHERE ID = 1
