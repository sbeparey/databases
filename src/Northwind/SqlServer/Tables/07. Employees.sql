﻿DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmployeeId      INT             IDENTITY(1, 1) NOT NULL,
    LastName        NVARCHAR(20)    NOT NULL,
    FirstName       NVARCHAR(10)    NOT NULL,
    Title           NVARCHAR(30)    NULL,
    TitleOfCourtesy NVARCHAR(25)    NULL,
    BirthDate       DATETIME        NULL,
    HireDate        DATETIME        NULL,
    Address         NVARCHAR(60)    NULL,
    City            NVARCHAR(15)    NULL,
    Region          NVARCHAR(15)    NULL,
    PostalCode      NVARCHAR(10)    NULL,
    Country         NVARCHAR(15)    NULL,
    HomePhone       NVARCHAR(24)    NULL,
    Extension       NVARCHAR(4)     NULL,
    Photo           IMAGE           NULL,
    Notes           NTEXT           NULL,
    ReportsTo       INT             NULL,
    PhotoPath       NVARCHAR(255)   NULL,
    CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED (EmployeeId ASC),
    CONSTRAINT CK_Birthdate CHECK (BirthDate < getdate()),
);

CREATE NONCLUSTERED INDEX LastName
    ON Employees (LastName ASC);

CREATE NONCLUSTERED INDEX PostalCode
    ON Employees (PostalCode ASC);
