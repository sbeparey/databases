DROP TABLE IF EXISTS Territories;
CREATE TABLE Territories (
    TerritoryId             NVARCHAR(20)    NOT NULL,
    TerritoryDescription    NCHAR(50)       NOT NULL,
    RegionId                INT             NOT NULL,
    CONSTRAINT PK_Territories PRIMARY KEY NONCLUSTERED (TerritoryId ASC)
);
