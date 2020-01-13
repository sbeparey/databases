DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id              INT             IDENTITY (1, 1) NOT NULL,
    product_name            NVARCHAR(40)    NOT NULL,
    supplier_id             INT             NULL,
    category_id             INT             NULL,
    quantity_per_unit       NVARCHAR(20)    NULL,
    unit_price              MONEY           CONSTRAINT df_products__unit_price DEFAULT (0) NULL,
    units_in_stock          SMALLINT        CONSTRAINT df_products__units_in_stock DEFAULT (0) NULL,
    units_on_order          SMALLINT        CONSTRAINT df_products__units_on_order DEFAULT (0) NULL,
    reorder_level           SMALLINT        CONSTRAINT df_products__reorder_level DEFAULT (0) NULL,
    discontinued            BIT             CONSTRAINT df_products__discontinued DEFAULT (0) NOT NULL,
    CONSTRAINT pk_products PRIMARY KEY CLUSTERED (product_id ASC),
    CONSTRAINT ck_unit_price CHECK (unit_price >= 0),
    CONSTRAINT ck_reorder_level CHECK (reorder_level >= 0),
    CONSTRAINT ck_units_in_stock CHECK (units_in_stock >= 0),
    CONSTRAINT ck_units_on_order CHECK (units_on_order >= 0)
);

CREATE NONCLUSTERED INDEX ix_products__category_id
    ON products (category_id ASC);

CREATE NONCLUSTERED INDEX ix_products__product_name
    ON products (product_name ASC);

CREATE NONCLUSTERED INDEX ix_products__supplier_id
    ON products (supplier_id ASC);