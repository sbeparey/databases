DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id              INTEGER         NOT NULL,
    product_name            VARCHAR(40)     NOT NULL,
    supplier_id             INTEGER         NULL,
    category_id             INTEGER         NULL,
    quantity_per_unit       VARCHAR(20)     NULL,
    unit_price              REAL            NULL        DEFAULT (0),
    units_in_stock          SMALLINT        NULL        DEFAULT (0),
    units_on_order          SMALLINT        NULL        DEFAULT (0),
    reorder_level           SMALLINT        NULL        DEFAULT (0),
    discontinued            BOOLEAN         NOT NULL    DEFAULT (FALSE),
    CONSTRAINT pk_products PRIMARY KEY (product_id),
    CONSTRAINT ck_unit_price CHECK (unit_price >= 0),
    CONSTRAINT ck_reorder_level CHECK (reorder_level >= 0),
    CONSTRAINT ck_units_in_stock CHECK (units_in_stock >= 0),
    CONSTRAINT ck_units_on_order CHECK (units_on_order >= 0),
    CONSTRAINT fk_products__suppliers FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id),
    CONSTRAINT fk_products__categories FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

CREATE UNIQUE INDEX ix_products__product_id ON products (product_id);

CREATE INDEX ix_products__category_id ON products (category_id);

CREATE INDEX ix_products__product_name ON products (product_name);

CREATE INDEX ix_products__supplier_id ON products (supplier_id);
