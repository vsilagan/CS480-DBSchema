    CREATE SCHEMA tutorWeb;

    USE tutorWeb;

    CREATE TABLE tutor
    (
        tutorID int NOT NULL,
        tutorPassword TEXT NOT NULL,
        tutorName VARCHAR(50),
        tutorEmail VARCHAR(50),
	tutorAddress VARCHAR(50),
        tutorSubjects VARCHAR(50) DEFAULT NULL,
        tutorDescription TEXT DEFAULT NULL,
        tutorRatePerHour DOUBLE(5,2) DEFAULT 0,
        tutortotalHours INT DEFAULT 0,
        
        PRIMARY KEY (tutorID)
        
    );
    
    CREATE TABLE student
    (
        studentID int NOT NULL,
        studentPassWord TEXT NOT NULL,
        studentName VARCHAR(50) NOT NULL,
        studentEmail VARCHAR(50) NOT NULL,
        studentAddress VARCHAR(50),
        studentSubjects VARCHAR(50) DEFAULT NULL, 

        PRIMARY KEY (studentID)
    );
    
    CREATE TABLE tutorReviews
    (
        tutorID int NOT NULL,
        studentID int NOT NULL,
        tutorRating DOUBLE (8, 5) DEFAULT 0,
        reviewTitle VARCHAR(50) DEFAULT 'Review',
        reviewText TEXT DEFAULT NULL,
        
        PRIMARY KEY(tutorID, studentID),
        FOREIGN KEY(tutorID) REFERENCES tutor(tutorID),
        FOREIGN KEY(studentID) REFERENCES student(studentID)
    );
    
    CREATE TABLE sessions
    (
        tutorID int NOT NULL,
        studentID int NOT NULL,
        sessionSubject VARCHAR(50) DEFAULT NULL,
        sessionDate DATE NOT NULL,
        sessionDuration INT DEFAULT 0,
        
        PRIMARY KEY(tutorID, studentID, sessionDate),
        FOREIGN KEY (tutorID) REFERENCES tutor(tutorID),
        FOREIGN KEY (studentID) REFERENCES student(studentID)
    );