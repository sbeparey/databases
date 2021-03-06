﻿DROP TABLE IF EXISTS shippers;
CREATE TABLE shippers (
    shipper_id          INT             NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    company_name        VARCHAR(40)     NOT NULL,
    phone               VARCHAR(24)     NULL,
    CONSTRAINT pk_shippers PRIMARY KEY (shipper_id)
);

DROP INDEX IF EXISTS ix_shippers__shipper_id;
CREATE UNIQUE INDEX ix_shippers_shipper_id ON shippers (shipper_id);
CLUSTER shippers USING ix_shippers_shipper_id;
