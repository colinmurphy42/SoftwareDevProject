CREATE TABLE Students (
 StudentID INT( 11 ) NOT NULL,
 Username CHAR( 20 ) NOT NULL ,
 LastName CHAR( 20 ) NOT NULL ,
 FirstName CHAR( 20 ) NOT NULL,
 Email CHAR( 50 ) NOT NULL ,
 PASSWORD CHAR( 30 ) NOT NULL ,
 PRIMARY KEY (StudentID) ,
) DEFAULT CHARSET = utf8;