/***********************************************************************************************

NOTE: these have already been applied to to tutorWeb. This is for recording purposes only

***********************************************************************************************/


alter table sessions drop foreign key sessions_ibfk_2;
alter table tutorReviews drop foreign key tutorReviews_ibfk_2;
alter table student modify studentID INT NOT NULL AUTO_INCREMENT;
alter table sessions drop foreign key sessions_ibfk_1;
alter table tutorReviews drop foreign key tutorReviews_ibfk_1;
alter table tutor modify tutorID INT NOT NULL AUTO_INCREMENT;
alter table tutor modify column tutorEmail varChar(50) not null unique;
alter table student modify column studentEmail varChar(50) not null unique;
alter table tutorReviews add Foreign key (tutorID) references tutor (tutorID);
alter table tutorReviews add Foreign key (studentID) references student(studentID);
alter table sessions add Foreign key (tutorID) references tutor (tutorID);
alter table sessions add Foreign key (studentID) references student(studentID);