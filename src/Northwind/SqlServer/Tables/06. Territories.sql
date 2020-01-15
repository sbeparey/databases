DROP TABLE IF EXISTS Territories;
CREATE TABLE Territories (
    TerritoryId             NVARCHAR(20)        NOT NULL,
    "Description"           NVARCHAR(50)        NOT NULL,
    RegionId                SMALLINT            NOT NULL,
    CONSTRAINT PK_Territories PRIMARY KEY CLUSTERED (TerritoryId ASC)
);
