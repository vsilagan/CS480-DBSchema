

CREATE SCHEMA tutorWeb
(
    CREATE TABLE tutor
    (
        tutorID int NOT NULL,
        tutorPassword TEXT NOT NULL,
        tutorName VARCHAR(50) NOT NULL,
        tutorEmail VARCHAR(50) NOT NULL,
        tutorSubjects VARCHAR(50) SET DEFAULT NULL,
        tutorDescription TEXT DEFAULT NULL,
        tutorRatePerHour DOUBLE(MAX,2) SET DEFAULT 0,
        tutortotalHours INT SET DEFAULT 0,
        
        PRIMARY KEY (tutorID)
        
    )
    
    CREATE TABLE student
    (
        studentID int NOT NULL,
        studentPassWord TEXT NOT NULL,
        studentName VARCHAR(50) NOT NULL,
        studentEmail VARCHAR(50) NOT NULL,
        studentSubjects VARCHAR(50) SET DEFAULT , 

        PRIMARY KEY (studentID)
    )
    
    CREATE TABLE tutorReviews
    (
        tutorID int NOT NULL,
        studentID int NOT NULL,
        tutorRating DOUBLE (MAX, 5) SET DEFAULT 0,
        reviewTitle TINYTEXT SET DEFAULT 'Review',
        reviewText TEXT SET DEFAULT NULL,
        
        PRIMARY KEY(tutorID, studentID, reviewTitle),
        FOREIGN KEY(tutorID) REFERENCES tutor(tutorID),
        FOREIGN KEY(studentID) REFERENCES student(studentID)
    )
    
    CREATE TABLE sessions
    {
        tutorID int NOT NULL,
        studentID int NOT NULL,
        sessionSubject VARCHAR(50), SET DEFAULT NULL,
        sessionDate DATE not NULL,
        sessionDuration INT SET DEFAULT 0,
        
        PRIMARY KEY(tutorID, studentID, sessionDate),
        FOREIGN KEY (tutorID) REFERENCES tutor(tutorID),
        FOREIGN KEY (studentID) REFERENCES student(studentID)
    }
    
)