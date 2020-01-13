DROP TABLE IF EXISTS region;
CREATE TABLE region (
    region_id               INT         NOT NULL,
    region_description      NCHAR(50)   NOT NULL,
    CONSTRAINT pk_region PRIMARY KEY NONCLUSTERED (region_id ASC)
);

