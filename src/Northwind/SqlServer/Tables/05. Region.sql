DROP TABLE IF EXISTS Region;
CREATE TABLE Region (
    RegionId            SMALLINT            NOT NULL    IDENTITY(1,1),
    "Description"       NVARCHAR(50)        NOT NULL,
    CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED (RegionId ASC)
);
