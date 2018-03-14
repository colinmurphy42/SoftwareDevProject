--open terminal in same directory, run command 'mysql -u root -p < project.sql
CREATE DATABASE project;
USE project;

CREATE TABLE Teacher (
	TeacherID int NOT NULL,
	LastName char(20), 
	FirstName char(20),
	PRIMARY KEY (TeacherID)
);