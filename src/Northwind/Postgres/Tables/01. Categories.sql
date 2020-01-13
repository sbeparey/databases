DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
    category_id         SMALLINT             IDENTITY(1, 1) NOT NULL,
    category_name       NVARCHAR(15)    NOT NULL,
    description         NTEXT           NULL,
    picture             IMAGE           NULL,
    CONSTRAINT pk_categories PRIMARY KEY CLUSTERED (category_id ASC)
);

CREATE NONCLUSTERED INDEX ix_categories__category_name
    ON categories (category_name ASC);