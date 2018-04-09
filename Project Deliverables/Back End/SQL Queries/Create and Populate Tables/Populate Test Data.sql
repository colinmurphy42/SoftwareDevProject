USE project;

insert into Student (StudentID, LastName, FirstName, Email, Passwrd) values
	(123456789, 'Louie', 'Alexander', 'allo1877@colorado.edu', 'abc123'),
	(987654321, 'Fisheer', 'Connor', 'jofi8721@colorado.edu', '8abij'),
	(762839654, 'Callahan', 'Jack', 'joca8923@colorado.edu', '83viDsz'),
	(682018567, 'Seoung', 'Max', 'sema3516@colorado.edu', 'favAsd');

insert into Teacher (TeacherID, LastName, FirstName) values
	(156478531, 'Miller', 'Frank'),
	(261754234, 'Gentert', 'Caitlyn'),
	(290187502, 'Lincoln', 'Abraham'),
	(661234532, 'Einstein', 'Albert'),
	(782918475, 'Knox', 'David');

insert into TACA (AssistantID, LastName, FirstName, Email) values
	(182049634, 'Doe', 'John', 'JohnDoe@colorado.edu'),
	(381759830, 'Hassani', 'Abass', 'Abass@colorado.edu'),
	(317051096, 'Defranko', 'Fillip', 'Fillip@colorado.edu');

insert into StudentSchedule (StudentID, ClassID) values
	(123456789, 1300100),
	(987654321, 1300100),
	(682018567, 7000100);

insert into Class (ClassID, TeacherID, LastName, FirstName, Department, DayOfWeek, FromTime, ToTime, Room, Building) values
	(1300100, 782918475, 'Knox', 'David', 1, 'MWF', '01:00:00', '02:00:00', 200, 'Math'),
	(5809100, 661234532, 'Einstein', 'Albert', 1, 'MWF', '03:00:00', '04:00:00', 198, 'HUEN'),
	(7000100, 290187502, 'Lincoln', 'Abraham', 1, 'TTH', '12:00:00', '01:00:00', '102','ECCS');

insert into TACASchedule (ScheduleID, AssistantID, ClassID, DayOfWeek, FromTime, ToTime, Room, Building) values
	(00001, 182049634, 1300100, 'Monday', '01:00:00', '02:00:00', 102, 'ECCS'),
	(00006, 381759830, 1300100, 'Sunday', '13:00:00', '15:00:00', 131, 'ECCS');
