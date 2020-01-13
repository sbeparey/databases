DROP TABLE IF EXISTS territories;
CREATE TABLE territories (
    territory_id             NVARCHAR(20)    NOT NULL,
    territory_description    NCHAR(50)       NOT NULL,
    region_id                INT             NOT NULL,
    CONSTRAINT pk_territories PRIMARY KEY NONCLUSTERED (territory_id ASC)
);
