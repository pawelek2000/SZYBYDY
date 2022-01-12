---------------------------- CREATE TABLES ----------------------------
USE SBD_DB;

CREATE TABLE Announcement (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Title               VARCHAR(64)         NOT NULL,
    Content             VARCHAR(2048)       NOT NULL,
    AddedDate           DATE                NOT NULL,
);


CREATE TABLE Class (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    ClassName           VARCHAR(16)         NOT NULL,
    StartDate           DATE                NOT NULL,
);

CREATE TABLE Message (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
	SenderId			NVARCHAR(128)		NOT NULL		UNIQUE FOREIGN KEY REFERENCES AspNetUsers(Id),

    Content             VARCHAR(1024)       NOT NULL,
    SendDate            DATE                NOT NULL,
);

CREATE TABLE Subject (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Name                VARCHAR(32)         NOT NULL,
    LearningContent     VARCHAR(2048)       NOT NULL,
);


CREATE TABLE Teacher (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Account_Id          NVARCHAR(128)       NOT NULL        UNIQUE FOREIGN KEY REFERENCES AspNetUsers(Id),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);

CREATE TABLE Parent (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Account_Id          NVARCHAR(128)       NOT NULL        UNIQUE FOREIGN KEY REFERENCES AspNetUsers(Id),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);

CREATE TABLE Student (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
	Account_Id          NVARCHAR(128)       NOT NULL        UNIQUE FOREIGN KEY REFERENCES AspNetUsers(Id),
		
    Class_Id            INT                 NOT NULL        FOREIGN KEY REFERENCES Class(Id),
    Parent_Id           INT                 NOT NULL        FOREIGN KEY REFERENCES Parent(Id),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);


CREATE TABLE Grade (
    Id                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
	
    Student_Id          INT                 NOT NULL        FOREIGN KEY REFERENCES Student(Id),
    Subject_Id          INT                 NOT NULL        FOREIGN KEY REFERENCES Subject(Id),

    Value               VARCHAR(3)          NOT NULL,
    IsFinal             BIT                 NOT NULL,
    AddedDate           DATE                NOT NULL,
);


CREATE TABLE AccountMessage (
    Account_Id          NVARCHAR(128)       NOT NULL        FOREIGN KEY REFERENCES AspNetUsers(Id),
    Message_Id          INT                 NOT NULL        FOREIGN KEY REFERENCES Message(Id),

    PRIMARY KEY (Account_Id, Message_Id)
);

CREATE TABLE ClassSubjectTeacher (
    Class_Id            INT                 NOT NULL        FOREIGN KEY REFERENCES Class(Id),
	
    Subject_Id          INT                 NOT NULL        FOREIGN KEY REFERENCES Subject(Id),
    Teacher_Id          INT                 NOT NULL        FOREIGN KEY REFERENCES Teacher(Id),

    PRIMARY KEY (Class_Id, Subject_Id, Teacher_Id)
);