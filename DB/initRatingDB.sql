DROP DATABASE IF EXISTS ETIAssignment2Rating;

CREATE DATABASE ETIAssignment2Rating;

USE ETIAssignment2Rating;

DROP TABLE IF EXISTS Rating;
CREATE TABLE Rating(
	RatingID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CreatorID int NULL,
	CreatorType varchar(255),
	TargetID int NOT NULL,
    TargetType varchar(255) NOT NULL,
	RatingScore int NOT NULL,
	Anonymous bool NOT NULL DEFAULT False,
	DateTimePublished datetime DEFAULT CURRENT_TIMESTAMP());