DROP TABLE IF EXISTS employee_territories;
CREATE TABLE employee_territories (
    employee_id      INT             NOT NULL,
    territory_id     NVARCHAR(20)    NOT NULL,
    CONSTRAINT pk_employee_territories PRIMARY KEY NONCLUSTERED (employee_id ASC, territory_id ASC)
);
