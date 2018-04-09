CREATE TABLE TACASchedule (
 ScheduleID INT(5) NOT NULL AUTO_INCREMENT,
 AssistantID INT(9) NOT NULL,
 ClassID INT(7) NOT NULL,
 'Day' CHAR(10) NOT NULL,
 'From' TIME() NOT NULL,
 'To' TIME() NOT NULL,
 Room INT(5) default NULL,
 Building CHAR(20) default NULL,
 PRIMARY KEY( ScheduleID ),
 FOREIGN KEY ( AssistantID ),
 FOREIGN KEY ( ClassID )
) DEFAULT CHARSET = utf8;
