DROP TABLE IF EXISTS CustomerDemographics;
CREATE TABLE CustomerDemographics (
    CustomerTypeId          NCHAR(10)   NOT NULL,
    CustomerDescription     NTEXT       NULL,
    CONSTRAINT PK_CustomerDemographics PRIMARY KEY NONCLUSTERED (CustomerTypeId ASC)
);

