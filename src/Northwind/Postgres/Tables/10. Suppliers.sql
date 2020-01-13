DROP TABLE IF EXISTS suppliers;
CREATE TABLE suppliers (
    supplier_id         INT            IDENTITY(1, 1) NOT NULL,
    customer_name       NVARCHAR(40)   NOT NULL,
    contact_name        NVARCHAR(30)   NULL,
    contact_title       NVARCHAR(30)   NULL,
    address             NVARCHAR(60)   NULL,
    city                NVARCHAR(15)   NULL,
    region              NVARCHAR(15)   NULL,
    postal_code         NVARCHAR(10)   NULL,
    country             NVARCHAR(15)   NULL,
    phone               NVARCHAR(24)   NULL,
    fax                 NVARCHAR(24)   NULL,
    home_page           NTEXT          NULL,
    CONSTRAINT pk_suppliers PRIMARY KEY CLUSTERED (supplier_id ASC)
);

CREATE NONCLUSTERED INDEX ix_suppliers__customer_name
    ON suppliers (customer_name ASC);

CREATE NONCLUSTERED INDEX ix_suppliers__postal_code
    ON suppliers (postal_code ASC);