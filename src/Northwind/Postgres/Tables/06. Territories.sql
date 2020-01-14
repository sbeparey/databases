﻿DROP TABLE IF EXISTS territories;
CREATE TABLE territories (
    territory_id             VARCHAR(20)        NOT NULL,
    territory_description    CHAR(50)           NOT NULL,
    region_id                INT                NOT NULL,
    CONSTRAINT pk_territories PRIMARY KEY (territory_id)
);

DROP INDEX IF EXISTS ix_territories__territory_id;
CREATE INDEX ix_territories__territory_id ON territories (territory_id);
CLUSTER territories USING ix_territories__territory_id;
