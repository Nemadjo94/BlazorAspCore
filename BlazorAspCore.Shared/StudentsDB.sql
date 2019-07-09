USE MASTER
GO

IF EXISTS (SELECT [name] FROM sys.databases WHERE [name] = 'StudentsDB')
DROP DATABASE StudentsDB
GO

CREATE DATABASE StudentsDB
GO

USE StudentsDB
GO

IF EXISTS ( SELECT [name] FROM sys.tables WHERE [name] = 'StudentMasters' )       
DROP TABLE StudentMasters       
GO 

CREATE TABLE [dbo].[StudentMasters](
		[StudentID] INT IDENTITY PRIMARY KEY,
		[StudentName] [varchar](50) NOT NULL,
		[Email] [varchar](50) NOT NULL,
		[Phone] [varchar](20) NOT NULL,
		[Address] [varchar](100) NOT NULL
)

INSERT INTO [StudentMasters]   ([StudentName],[Email],[Phone],[Address])       
     VALUES ('Nemanja','Nemanja@gmail.com','01030550007','Srbija,Indjia')       
       
INSERT INTO [StudentMasters]   ([StudentName],[Email],[Phone],[Address])       
     VALUES ('Milosh','Milosh@afrazmail.com','01030550006','Srbija,Indjia')       

SELECT * FROM [StudentMasters]