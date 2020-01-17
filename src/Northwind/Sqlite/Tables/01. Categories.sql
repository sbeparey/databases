DROP TABLE IF EXISTS Categories;
CREATE TABLE categories (
    category_id         INTEGER         NOT NULL,
    category_name       VARCHAR(15)     NOT NULL,
    description         TEXT            NULL,
    picture             BLOB            NULL,
    CONSTRAINT pk_categories PRIMARY KEY (category_id)
);

DROP INDEX IF EXISTS ix_categories__category_id;
CREATE UNIQUE INDEX ix_categories__category_id ON categories (category_id);

DROP INDEX IF EXISTS ix_categories__category_name;
CREATE INDEX ix_categories__category_name ON categories (category_name);
