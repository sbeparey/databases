DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
    category_id         SMALLINT        NOT NULL    AUTO_INCREMENT,
    category_name       VARCHAR(15)     NOT NULL,
    description         TEXT            NULL,
    picture             LONGBLOB        NULL,
    CONSTRAINT pk_categories PRIMARY KEY (category_id)
);

CREATE UNIQUE INDEX ix_categories__category_id ON categories (category_id);

CREATE INDEX ix_categories__category_name ON categories (category_name);
