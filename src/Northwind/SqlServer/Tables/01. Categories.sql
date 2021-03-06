﻿DROP TABLE IF EXISTS Categories;
CREATE TABLE Categories (
    CategoryId      SMALLINT        NOT NULL IDENTITY(1, 1),
    CategoryName    NVARCHAR(15)    NOT NULL,
    "Description"   NTEXT           NULL,
    Picture         IMAGE           NULL,
    CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED (CategoryId ASC)
);

CREATE NONCLUSTERED INDEX IX_Categories_CategoryName
    ON Categories (CategoryName ASC);
