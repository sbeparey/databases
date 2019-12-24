﻿DROP TABLE IF EXISTS Shippers;
CREATE TABLE Shippers (
    ShipperId       INT             IdENTITY(1, 1) NOT NULL,
    CompanyName     NVARCHAR(40)    NOT NULL,
    Phone           NVARCHAR(24)    NULL,
    CONSTRAINT PK_Shippers PRIMARY KEY CLUSTERED (ShipperId ASC)
);

