DROP TABLE IF EXISTS Region;
CREATE TABLE Region (
    RegionId            INT         NOT NULL,
    RegionDescription   NCHAR(50)   NOT NULL,
    CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED (RegionId ASC)
);
