﻿DROP TABLE IF EXISTS shippers;
CREATE TABLE shippers (
    shipper_id          INT             NOT NULL AUTO_INCREMENT,
    company_name        VARCHAR(40)     NOT NULL,
    phone               VARCHAR(24)     NULL,
    CONSTRAINT pk_shippers PRIMARY KEY (shipper_id)
);

CREATE UNIQUE INDEX ix_shippers_shipper_id ON shippers (shipper_id);
