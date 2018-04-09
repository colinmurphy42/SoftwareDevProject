#open terminal in same directory, run command mysql -u root -p < project.sql
CREATE DATABASE project;
USE project;

CREATE TABLE Student (
	StudentID 	INT(9) 		NOT NULL,
	LastName 	CHAR(20) 	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(40) 	NOT NULL,
	Passwrd 	CHAR(10) 	NOT NULL,
    
	PRIMARY KEY (StudentID)
);

CREATE TABLE  Teacher (
	TeacherID	INT(9)		NOT NULL,
	LastName	CHAR(20)	NOT NULL,
	FirstName	CHAR(20)   	NOT NULL,
    
	PRIMARY KEY (TeacherID)  
);

CREATE TABLE TACA (
	AssistantID INT(9) 		NOT NULL,
	LastName 	CHAR(20)	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(40) 	NULL,
    
	PRIMARY KEY (AssistantID)
);

CREATE TABLE StudentSchedule (
	StudentID	INT(9)   	NOT NULL,
	ClassID   	INT(7)    	NOT NULL,
    
	PRIMARY KEY (StudentID, ClassID)  
);


CREATE TABLE Class (
	ClassID 	INT(7) 		NOT NULL,
	TeacherID 	INT(9) 		NOT NULL,
	LastName 	CHAR(20) 	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Department 	INT(20) 	NOT NULL,
	DayOfWeek 	CHAR(10) 	NOT NULL,
	FromTime 	TIME 		NOT NULL,
	ToTime 		TIME 		NOT NULL,
	Room 		INT(5) 		NOT NULL,
	Building 	CHAR(20) 	NOT NULL,
    
	PRIMARY KEY (ClassID),
    
	FOREIGN KEY (TeacherID)
		REFERENCES Teacher(TeacherID)
);

CREATE TABLE TACASchedule (
	ScheduleID 	INT(5) 		NOT NULL 		AUTO_INCREMENT,
	AssistantID INT(9) 		NOT NULL,
	ClassID 	INT(7) 		NOT NULL,
	DayOfWeek 	CHAR(10) 	NOT NULL,
	FromTime 	TIME 		NOT NULL,
	ToTime 		TIME 		NOT NULL,
	Room 		INT(5) 		DEFAULT NULL,
	Building 	CHAR(10) 	DEFAULT NULL,
    
	PRIMARY KEY(ScheduleID),
    
	FOREIGN KEY (AssistantID)
		REFERENCES TACA(AssistantID),
        
	FOREIGN KEY (ClassID)
		REFERENCES Class(ClassID)
);

CREATE TABLE Roster (
	StudentID 	INT(9) 		NOT NULL,
	ClassID 	INT(7) 		NOT NULL,
    
	PRIMARY KEY (StudentID, ClassID),
    
	FOREIGN KEY (StudentID)
		REFERENCES Student(StudentID),
        
	FOREIGN KEY (ClassID)
		REFERENCES Class(ClassID)
);