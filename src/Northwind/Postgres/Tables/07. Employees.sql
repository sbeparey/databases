DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id             INT             IDENTITY(1, 1) NOT NULL,
    last_name               NVARCHAR(20)    NOT NULL,
    first_name              NVARCHAR(10)    NOT NULL,
    title                   NVARCHAR(30)    NULL,
    title_of_courtesy       NVARCHAR(25)    NULL,
    birth_date              DATETIME        NULL,
    hire_date               DATETIME        NULL,
    address                 NVARCHAR(60)    NULL,
    city                    NVARCHAR(15)    NULL,
    region                  NVARCHAR(15)    NULL,
    postal_code             NVARCHAR(10)    NULL,
    country                 NVARCHAR(15)    NULL,
    home_phone              NVARCHAR(24)    NULL,
    extension               NVARCHAR(4)     NULL,
    photo                   IMAGE           NULL,
    notes                   NTEXT           NULL,
    reports_to              INT             NULL,
    photo_path              NVARCHAR(255)   NULL,
    CONSTRAINT pk_employees PRIMARY KEY CLUSTERED (employee_id ASC),
    CONSTRAINT ck_birth_date CHECK (birth_date < GETDATE()),
);

CREATE NONCLUSTERED INDEX ix_employees__last_name
    ON employees (last_name ASC);

CREATE NONCLUSTERED INDEX ix_employees__postal_code
    ON employees (postal_code ASC);
