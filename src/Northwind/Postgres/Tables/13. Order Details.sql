DROP TABLE IF EXISTS order_details;
CREATE TABLE order_details (
    order_id            INT             NOT NULL,
    product_id          INT             NOT NULL,
    unit_price          REAL            NOT NULL    CONSTRAINT df_order_details__unit_price DEFAULT (0),
    quantity            SMALLINT        NOT NULL    CONSTRAINT df_order_details__quantity DEFAULT (1),
    discount            REAL            NOT NULL    CONSTRAINT df_order_details__discount DEFAULT (0),
    CONSTRAINT pk_order_details PRIMARY KEY (order_id, product_id),
    CONSTRAINT ck_discount CHECK (discount >= 0 AND discount <= 1),
    CONSTRAINT ck_quantity CHECK (quantity > 0),
    CONSTRAINT ck_unit_price CHECK (unit_price >= 0)
);

DROP INDEX IF EXISTS ix_order_details__order_id__product_id;
CREATE UNIQUE INDEX ix_order_details__order_id__product_id ON order_details (order_id, product_id);
CLUSTER order_details USING ix_order_details__order_id__product_id;

DROP INDEX IF EXISTS ix_order_details__order_id;
CREATE INDEX ix_order_details__order_id ON order_details (order_id);
CLUSTER order_details USING ix_order_details__order_id;

DROP INDEX IF EXISTS ix_order_details__product_id;
CREATE INDEX ix_order_details__product_id ON order_details (product_id);
CLUSTER order_details USING ix_order_details__product_id;
