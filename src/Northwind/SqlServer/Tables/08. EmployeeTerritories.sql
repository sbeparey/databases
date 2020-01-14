DROP TABLE IF EXISTS EmployeeTerritories;
CREATE TABLE EmployeeTerritories (
    EmployeeId      SMALLINT        NOT NULL,
    TerritoryId     NVARCHAR(20)    NOT NULL,
    CONSTRAINT PK_EmployeeTerritories PRIMARY KEY NONCLUSTERED (EmployeeId ASC, TerritoryId ASC)
);
