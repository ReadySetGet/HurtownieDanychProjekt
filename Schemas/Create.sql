CREATE DATABASE AdoptersForLife
GO

USE AdoptersForLife
GO

CREATE TABLE PAs
(
	PA_ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	PESEL BIGINT NOT NULL,
	Pa_name VARCHAR(32) NOT NULL,
	PA_surname VARCHAR(32) NOT NULL,
	Has_experience VARCHAR(4) NOT NULL,
	CONSTRAINT ogr_pas CHECK((PESEL >= 00000000000)
	AND (PESEL <= 99999999999)
	AND (PA_name NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ]%')
	AND (Pa_name LIKE '[A-Z¥Ê¯£ÓÑÆŒ£]%')
	AND (PA_surname NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ]%')
	AND (Pa_surname LIKE '[A-Z¥Ê¯£ÓÑÆŒ£]%')
	AND (Has_experience IN ('TAK', 'NIE'))
	)
)
GO

CREATE TABLE Volunteers
(
	Volunteer_ID INTEGER PRIMARY KEY,
	PESEL BIGINT NOT NULL,
	Volunteer_name VARCHAR(32) NOT NULL,
	Volunteer_surname VARCHAR(32) NOT NULL,
	CONSTRAINT ogr_vol CHECK((PESEL >= 00000000000)
	AND (PESEL <= 99999999999)
	AND (Volunteer_name NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ]%')
	AND (Volunteer_name LIKE '[A-Z¥Ê¯£ÓÑÆŒ£]%')
	AND (Volunteer_surname NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ]%')
	AND (Volunteer_surname LIKE '[A-Z¥Ê¯£ÓÑÆŒ£]%')
	)
)
GO

CREATE TABLE Animals
(
	Animal_ID INTEGER PRIMARY KEY,
	Chip_number BIGINT NOT NULL,
	Animal_name VARCHAR(32) NOT NULL,
	CONSTRAINT ogr_animal CHECK((Chip_number > 0 )
	AND (Animal_name NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ]%')
	AND (Animal_name LIKE '[A-Z¥Ê¯£ÓÑÆŒ£]%')
	)
)
GO

CREATE TABLE Adoption_processes
(
    Ad_proc_ID INTEGER IDENTITY(1,1) PRIMARY KEY,
	PA_ID INTEGER FOREIGN KEY REFERENCES PAs NOT NULL,
	Animal_ID INTEGER FOREIGN KEY REFERENCES Animals NOT NULL,
	Volunteer_ID INTEGER FOREIGN KEY REFERENCES Volunteers NOT NULL,
	Date_from DATE NOT NULL,
	Date_to DATE,
	CONSTRAINT ogr_pro_ad CHECK((Date_from <= GETDATE())
	AND ((Date_to IS NULL) OR (Date_to >= Date_from))
	)
)
GO

CREATE TABLE Preferences
(
	Questionnaire_nr INTEGER IDENTITY(1, 1) PRIMARY KEY,
	PA_ID INTEGER FOREIGN KEY REFERENCES PAs NOT NULL,
	Species VARCHAR(32) NOT NULL,
	Animal_age INTEGER NOT NULL,
	Good_with_kids VARCHAR(3) NOT NULL,
	Housing_conds VARCHAR(25) NOT NULL,
	Disabilities VARCHAR(3) NOT NULL,
	Date_of_filling DATE NOT NULL,
	CONSTRAINT ogr_prefs CHECK((Questionnaire_nr > 0)
	AND (Species NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ ]%')
	AND (Animal_age > 0)
	AND (Animal_age < 50)
	AND (Good_with_kids IN ('TAK', 'NIE'))
	AND (Good_with_kids IN ('indoor_lot_of_space', 'in
		door_little_space', 'outdo
		or'))
	AND (Disabilities IN ('TAK', 'NIE'))
	AND (Date_of_filling <= GETDATE())
	)
)
GO

CREATE TABLE Works
(
	ID INTEGER IDENTITY(1, 1) PRIMARY KEY,
	Volunteer_ID INTEGER FOREIGN KEY REFERENCES Volunteers NOT NULL,
	Date_from DATE NOT NULL,
	Date_to DATE,
	CONSTRAINT ogr_works CHECK((Date_from <= GETDATE())
	AND ((Date_to IS NULL) OR (Date_to >= Date_from))
	)
)
GO

CREATE TABLE Presentations
(
	ID INTEGER IDENTITY(1, 1) PRIMARY KEY,
	Ad_proc_ID INTEGER FOREIGN KEY REFERENCES Adoption_processes NOT NULL,
	Date_of_presenting DATE NOT NULL,
	Vol_obs VARCHAR(512) NOT NULL,
	CONSTRAINT ogr_pres CHECK((Date_of_presenting <= GETDATE())
	AND (Vol_obs NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ .]%')
	AND (Vol_obs NOT LIKE '% .%')
	AND (Vol_obs NOT LIKE '%.[^ ]%')
	)
)
GO

CREATE TABLE Walks
(
	ID INTEGER IDENTITY(1, 1) PRIMARY KEY,
	Ad_proc_ID INTEGER FOREIGN KEY REFERENCES Adoption_processes NOT NULL,
	Date_of_walking DATE NOT NULL,
	Vol_obs VARCHAR(512) NOT NULL,
	CONSTRAINT ogr_walks CHECK((Date_of_walking <= GETDATE())
	AND (Vol_obs NOT LIKE '%[^a-zA-Z¹¥œŒæÆŸ¿¯óÓ³£ñÑêÊ .]%')
	AND (Vol_obs NOT LIKE '% .%')
	AND (Vol_obs NOT LIKE '%.[^ ]%')
	)
)
GO

CREATE TABLE Adoptions
(
	Certificate_nr INTEGER IDENTITY(1, 1) PRIMARY KEY,
	Ad_proc_ID INTEGER FOREIGN KEY REFERENCES Adoption_processes NOT NULL,
	Date_of_adopting DATE NOT NULL,
	CONSTRAINT ogr_ad CHECK((Certificate_nr > 0)
	AND (Date_of_adopting <= GETDATE())
	)
)
GO