CREATE TABLE  Teacher
   (
   TeacherID        int(9)        NOT NULL ,
   LastName         char(20)      NOT NULL ,
   FirstName        char(20)      NOT NULL ,
   PRIMARY KEY (TeacherID)  
   );
 
 CREATE TABLE StudentSchedule
    (
   StudentID        int(9)        NOT NULL ,
   ClassID          int(7)        NOT NULL ,
   PRIMARY KEY (StudentID, ClassID)  
   );
