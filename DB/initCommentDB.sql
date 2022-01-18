DROP DATABASE IF EXISTS ETIAssignment2Comment;

CREATE DATABASE ETIAssignment2Comment;

USE ETIAssignment2Comment;

DROP TABLE IF EXISTS Comment;
CREATE TABLE Comment(
	CommentID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CreatorType varchar(255) NOT NULL,
	CreatorID int NOT NULL,
	TargetType varchar(255) NOT NULL,
	TargetID int NOT NULL,	
	CommentData varchar(500) NOT NULL,
	Anonymous bool NOT NULL DEFAULT False,
	DateTimePublished datetime);
    
INSERT INTO Comment(CommentData, CreatorID, CreatorType, TargetID, TargetType, DateTimePublished, Anonymous) 
VALUES
("Great at working in teams.", 1, "Student", 2, "Student", NOW(), false),
("Great team player.", 2, "Student", 1, "Student", NOW(), false),
("Great classmate.", 3, "Student", 1, "Student", NOW(), true),
("Hands up work on time.", 4, "Tutor", 1, "Student", NOW(), true),
("Good student.", 3, "Tutor", 2, "Student", NOW(), false),
("Fun to teach!", 2, "Tutor", 1, "Student", NOW(), false);


INSERT INTO Comment(CommentData, CreatorID, CreatorType, TargetID, TargetType, DateTimePublished, Anonymous) 
VALUES
("Patient and caring tutor.", 1, "Student", 2, "Tutor", NOW(), false),
("This Class is awesome!.", 3, "Student", 1, "Class", NOW(), false),
("This class is very lively, It's a pleasure to teach you guys.", 2, "Tutor", 2, "Class", NOW(), true),
("Module is fun and interesting!", 4, "Student", 1, "Module", NOW(), true),
("Moddule is really difficult but I enjoy learning it!.", 2, "Student", 1, "Module", NOW(), false);