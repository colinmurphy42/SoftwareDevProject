#open terminal in same directory, run command mysql -u root -p < project.sql
CREATE DATABASE project;
USE project;

CREATE TABLE Student (
	StudentID 	INT(9) 		NOT NULL,
	LastName 	CHAR(20) 	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(30) 	NOT NULL,
	Passwrd 	CHAR(10) 	NOT NULL,
    
	PRIMARY KEY (StudentID)
);

insert into Student (StudentID, LastName, FirstName, Email, Passwrd) values
(123456789, 'Louie', 'Alexander', 'allo1877@colorado.edu', 'abc123'),
(987654321, 'Fisheer', 'Connor', 'jofi8721@colorado.edu', '8abij'),
(762839654, 'Callahan', 'Jack', 'joca8923@colorado.edu', '83viDsz'),
(682018567, 'Seoung', 'Max', 'sema3516@colorado.edu', 'favAsd');

CREATE TABLE  Teacher (
	TeacherID	INT(9)		NOT NULL,
	LastName	CHAR(20)	NOT NULL,
	FirstName	CHAR(20)   	NOT NULL,
    
	PRIMARY KEY (TeacherID)  
);
insert into Teacher (TeacherID, LastName, FirstName) values
(156478531, 'Miller', 'Frank'),
(261754234, 'Gentert', 'Caitlyn'),
(290187502, 'Lincoln', 'Abraham'),
(661234532, 'Einstein', 'Albert'),
(782918475, 'Knox', 'David');

CREATE TABLE TACA (
	AssistantID INT(9) 		NOT NULL,
	LastName 	CHAR(20)	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(40) 	NULL,
    
	PRIMARY KEY (AssistantID)
);

insert into TACA (AssistantID, LastName, FirstName, Email) values
(182049634, 'Doe', 'John', 'JohnDoe@colorado.edu'),
(381759830, 'Hassani', 'Abass', 'Abass@colorado.edu'),
(317051096, 'Defranko', 'Fillip', 'Fillip@colorado.edu');


CREATE TABLE StudentSchedule (
	StudentID	INT(9)   	NOT NULL,
	ClassID   	INT(7)    	NOT NULL,
    
	PRIMARY KEY (StudentID, ClassID)  
);
insert into StudentSchedule (StudentID, ClassID) values
(123456789, 1300100),
(987654321, 1300100),
(682018567, 7000100);



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

insert into Class (ClassID, TeacherID, LastName, FirstName, Department, DayOfWeek, FromTime, ToTime, Room, Building) values
(1300100, 782918475, 'Knox', 'David', 1, 'MWF', '01:00:00', '02:00:00', 200, 'Math'),
(5809100, 661234532, 'Einstein', 'Albert', 1, 'MWF', '03:00:00', '04:00:00', 198, 'HUEN'),
(7000100, 290187502, 'Lincoln', 'Abraham', 1, 'TTH', '12:00:00', '01:00:00', '102','ECCS');


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

insert into TACASchedule (ScheduleID, AssistantID, ClassID, DayOfWeek, FromTime, ToTime, Room, Building) values
(00001, 182049634, 1300100, 'Monday', '01:00:00', '02:00:00', 102, 'ECCS'),
(00006, 381759830, 1300100, 'Sunday', '13:00:00', '15:00:00', 131, 'ECCS');
#Cant have the same assistant twice..

CREATE TABLE Roster (
	StudentID 	INT(9) 		NOT NULL,
	ClassID 	INT(7) 		NOT NULL,
    
	PRIMARY KEY (StudentID, ClassID),
    
	FOREIGN KEY (StudentID)
		REFERENCES Student(StudentID),
        
	FOREIGN KEY (ClassID)
		REFERENCES Class(ClassID)
);
#Same problem here...Cant have multiple people in one class
