---------------------------- CREATE TABLES ----------------------------
USE SBD_DB;

CREATE TABLE Announcement (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Title               VARCHAR(64)         NOT NULL,
    Content             VARCHAR(2048)       NOT NULL,
    AddedDate           DATE                NOT NULL
);


CREATE TABLE Account (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Email               VARCHAR(64)         NOT NULL,
    Password            VARCHAR(1024)       NOT NULL
);

CREATE TABLE Class (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    ClassName           VARCHAR(16)         NOT NULL,
    StartDate           DATE                NOT NULL,
);

CREATE TABLE Message (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Content             VARCHAR(1024)       NOT NULL,
    SendDate            DATE                NOT NULL,
);

CREATE TABLE Subject (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,

    Name                VARCHAR(32)         NOT NULL,
    LearningContent     VARCHAR(2048)       NOT NULL,
);


CREATE TABLE Teacher (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Account_ID          INT                 NOT NULL        UNIQUE FOREIGN KEY REFERENCES Account(ID),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);

CREATE TABLE Parent (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Account_ID          INT                 NOT NULL        UNIQUE FOREIGN KEY REFERENCES Account(ID),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);

CREATE TABLE Student (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Class_ID            INT                 NOT NULL        FOREIGN KEY REFERENCES Class(ID),
    Parent_ID           INT                 NOT NULL        FOREIGN KEY REFERENCES Parent(ID),
    Account_ID          INT                 NOT NULL        UNIQUE FOREIGN KEY REFERENCES Account(ID),

    Name                VARCHAR(32)         NOT NULL,
    Surname             VARCHAR(32)         NOT NULL,
    PhoneNumber         CHAR(9)             NOT NULL,
);


CREATE TABLE Grade (
    ID                  INT                 NOT NULL        PRIMARY KEY IDENTITY,
    Student_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Student(ID),
    Subject_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Subject(ID),

    Value               VARCHAR(3)          NOT NULL,
    IsFinal             BIT                 NOT NULL,
    AddedDate           DATE                NOT NULL,
);


CREATE TABLE Account_Message (
    Account_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Account(ID),
    Message_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Message(ID),

    PRIMARY KEY (Account_ID, Message_ID)
);

CREATE TABLE Class_Subject_Teacher (
    Class_ID            INT                 NOT NULL        FOREIGN KEY REFERENCES Class(ID),
    Subject_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Subject(ID),
    Teacher_ID          INT                 NOT NULL        FOREIGN KEY REFERENCES Teacher(ID),

    PRIMARY KEY (Class_ID, Subject_ID, Teacher_ID)
);