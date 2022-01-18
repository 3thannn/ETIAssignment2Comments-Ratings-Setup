DROP DATABASE IF EXISTS ETIAssignment2TestDB;

CREATE DATABASE ETIAssignment2TestDB;

USE ETIAssignment2TestDB;

DROP TABLE IF EXISTS Student;
CREATE TABLE Student(
	StudentID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Name varchar(255) NOT NULL);
    
INSERT INTO Student (StudentID, Name) VALUES (1, 'Ethan');
INSERT INTO Student (StudentID, Name) VALUES (2, 'Kester');
INSERT INTO Student (StudentID, Name) VALUES (3, 'John');
INSERT INTO Student (StudentID, Name) VALUES (4, 'Ben');
    
DROP TABLE IF EXISTS Tutor;
CREATE TABLE Tutor(
	TutorID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Name varchar(255) NOT NULL);
INSERT INTO Tutor (TutorID, Name) VALUES (1, 'Kenneth');
INSERT INTO Tutor (TutorID, Name) VALUES (2, 'Desmond');
INSERT INTO Tutor (TutorID, Name) VALUES (3, 'Susan');
INSERT INTO Tutor (TutorID, Name) VALUES (4, 'Karen');

DROP TABLE IF EXISTS Class;
CREATE TABLE Class(
	ClassID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Name varchar(255) NOT NULL);
    

INSERT INTO Class (ClassID, Name) VALUES (1, 'T01');
INSERT INTO Class (ClassID, Name) VALUES (2, 'T02');

DROP TABLE IF EXISTS Module;
CREATE TABLE Module(
	ModuleID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Name varchar(255) NOT NULL);
INSERT INTO Module (ModuleID, Name) VALUES (1, 'ETI');
INSERT INTO Module (ModuleID, Name) VALUES (2, 'ERP');