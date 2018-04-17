CREATE TABLE Student (
	StudentID 	INT 		CHECK(StudentID < 999999999),
	LastName 	CHAR(20) 	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(40) 	NOT NULL,
	Passwrd 	CHAR(10) 	NOT NULL,
    
	PRIMARY KEY (StudentID)

);

CREATE TABLE  Teacher (
	TeacherID	INT		check (TeacherID < 999999999) NOT NULL,
	LastName	CHAR(20)	NOT NULL,
	FirstName	CHAR(20)   	NOT NULL,
    
	PRIMARY KEY (TeacherID)  
);

CREATE TABLE TACA (
	AssistantID INT 		NOT NULL			check (AssistantID <= 999999999),
	LastName 	CHAR(20)	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Email 		CHAR(40) 	NULL,
    
	PRIMARY KEY (AssistantID)
);

CREATE TABLE StudentSchedule (
	StudentID	INT   	NOT NULL	check(StudentID <= 999999999),
	ClassID   	INT    	NOT NULL	check(ClassID <= 9999999),
    
	PRIMARY KEY (StudentID, ClassID)  


);

CREATE TABLE Class (
	ClassID 	INT 		NOT NULL	check(ClassID <= 9999999),
	TeacherID 	INT 	 	NOT NULL	check (TeacherID < 999999999),
	LastName 	CHAR(20) 	NOT NULL,
	FirstName 	CHAR(20) 	NOT NULL,
	Department 	INT      	NOT NULL	check(Department <= 99999),
	DayOfWeek 	CHAR(10) 	NOT NULL,
	FromTime 	TIME 		NOT NULL,
	ToTime 		TIME 		NOT NULL,
	Room 		INT 		NOT NULL	check(Room <= 99999),
	Building 	CHAR(20) 	NOT NULL,
    
	PRIMARY KEY (ClassID),
    
	FOREIGN KEY (TeacherID)
		REFERENCES Teacher(TeacherID)
);

CREATE TABLE TACASchedule (
	ScheduleID 	SERIAL 		NOT NULL 		check(ScheduleID <= 99999),
	AssistantID INT 		NOT NULL	check(AssistantID <= 999999999),
	ClassID 	INT  		NOT NULL	check(ClassID <= 9999999),
	DayOfWeek 	CHAR(10) 	NOT NULL,
	FromTime 	TIME 		NOT NULL,
	ToTime 		TIME 		NOT NULL,
	Room 		INT 		DEFAULT NULL	check(Room <= 99999),
	Building 	CHAR(10) 	DEFAULT NULL,
    
	PRIMARY KEY(ScheduleID),
    
	FOREIGN KEY (AssistantID)
		REFERENCES TACA(AssistantID),
        
	FOREIGN KEY (ClassID)
		REFERENCES Class(ClassID)
);

CREATE TABLE Roster (
	StudentID 	INT 		NOT NULL	check(ClassID <= 9999999),
	ClassID 	INT 		NOT NULL	check(StudentID <= 999999999),
    
	PRIMARY KEY (StudentID, ClassID),
    
	FOREIGN KEY (StudentID)
		REFERENCES Student(StudentID),
        
	FOREIGN KEY (ClassID)
		REFERENCES Class(ClassID)

);