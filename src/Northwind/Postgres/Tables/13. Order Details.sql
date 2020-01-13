DROP TABLE IF EXISTS order_details;
CREATE TABLE order_details (
    order_id            INT      NOT NULL,
    product_id          INT      NOT NULL,
    unit_price          MONEY    CONSTRAINT df_order_details__unit_price DEFAULT (0) NOT NULL,
    quantity            SMALLINT CONSTRAINT df_order_details__quantity DEFAULT (1) NOT NULL,
    discount            REAL     CONSTRAINT df_order_details__discount DEFAULT (0) NOT NULL,
    CONSTRAINT pk_order_details PRIMARY KEY CLUSTERED (order_id ASC, product_id ASC),
    CONSTRAINT ck_discount CHECK (discount >= 0 AND discount <= 1),
    CONSTRAINT ck_quantity CHECK (quantity > 0),
    CONSTRAINT ck_unit_price CHECK (unit_price >= 0)
);

CREATE NONCLUSTERED INDEX ix_order_details__order_id
    ON order_details (order_id ASC);

CREATE NONCLUSTERED INDEX ix_order_details__product_id
    ON order_details (product_id ASC);