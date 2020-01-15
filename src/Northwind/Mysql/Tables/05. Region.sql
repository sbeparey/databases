DROP TABLE IF EXISTS region;
CREATE TABLE region (
    region_id               SMALLINT            NOT NULL,
    description             VARCHAR(50)         NOT NULL,
    CONSTRAINT pk_region PRIMARY KEY (region_id)
);

CREATE INDEX ix_region__region_id ON region (region_id);
