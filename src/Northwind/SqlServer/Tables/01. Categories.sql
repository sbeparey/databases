DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories (
    CategoryId      INT             IDENTITY(1, 1) NOT NULL,
    CategoryName    NVARCHAR(15)    NOT NULL,
    "Description"   NTEXT           NULL,
    Picture         IMAGE           NULL,
    CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED (CategoryId ASC)
);

CREATE NONCLUSTERED INDEX CategoryName
    ON Categories (CategoryName ASC);