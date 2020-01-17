DROP TABLE IF EXISTS order_details;
CREATE TABLE order_details (
    order_id            INTEGER         NOT NULL,
    product_id          INTEGER         NOT NULL,
    unit_price          REAL            NOT NULL        DEFAULT (0),
    quantity            SMALLINT        NOT NULL        DEFAULT (1),
    discount            REAL            NOT NULL        DEFAULT (0),
    CONSTRAINT pk_order_details PRIMARY KEY (order_id, product_id),
    CONSTRAINT ck_discount CHECK (discount >= 0 AND discount <= 1),
    CONSTRAINT ck_quantity CHECK (quantity > 0),
    CONSTRAINT ck_unit_price CHECK (unit_price >= 0),
    CONSTRAINT fk_order_details__orders FOREIGN KEY (order_id) REFERENCES orders (order_id),
    CONSTRAINT fk_order_details__products FOREIGN KEY (product_id) REFERENCES products (product_id)
);

CREATE UNIQUE INDEX ix_order_details__order_id__product_id ON order_details (order_id, product_id);

CREATE INDEX ix_order_details__order_id ON order_details (order_id);

CREATE INDEX ix_order_details__product_id ON order_details (product_id);
