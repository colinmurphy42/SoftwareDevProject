CREATE TABLE TACASchedule (
 AssistantID INT( 20 ) NOT NULL,
 'Day' CHAR( 20 ) NOT NULL ,
 'From' TIME() NOT NULL ,
 'To' TIME() NOT NULL ,
 FOREIGN KEY ( AssistantID )
) DEFAULT CHARSET = utf8;