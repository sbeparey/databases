DROP TABLE IF EXISTS shippers;
CREATE TABLE shippers (
    shipper_id          INT             IDENTITY(1, 1) NOT NULL,
    customer_name       NVARCHAR(40)    NOT NULL,
    phone               NVARCHAR(24)    NULL,
    CONSTRAINT pk_shippers PRIMARY KEY CLUSTERED (shipper_id ASC)
);

