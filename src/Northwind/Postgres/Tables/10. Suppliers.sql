﻿DROP TABLE IF EXISTS suppliers;
CREATE TABLE suppliers (
    supplier_id         INT             NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    company_name        VARCHAR(40)     NOT NULL,
    contact_name        VARCHAR(30)     NULL,
    contact_title       VARCHAR(30)     NULL,
    address             VARCHAR(60)     NULL,
    city                VARCHAR(15)     NULL,
    region              VARCHAR(15)     NULL,
    postal_code         VARCHAR(10)     NULL,
    country             VARCHAR(15)     NULL,
    phone               VARCHAR(24)     NULL,
    fax                 VARCHAR(24)     NULL,
    home_page           TEXT            NULL,
    CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id)
);

DROP INDEX IF EXISTS ix_suppliers__supplier_id;
CREATE UNIQUE INDEX ix_suppliers__supplier_id ON suppliers (supplier_id);
CLUSTER suppliers USING ix_suppliers__supplier_id;

DROP INDEX IF EXISTS ix_suppliers__customer_name;
CREATE INDEX ix_suppliers__customer_name ON suppliers (company_name);
CLUSTER suppliers USING ix_suppliers__customer_name;

DROP INDEX IF EXISTS ix_suppliers__postal_code;
CREATE INDEX ix_suppliers__postal_code ON suppliers (postal_code);
CLUSTER suppliers USING ix_suppliers__postal_code;
