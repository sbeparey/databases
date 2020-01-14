DROP TABLE IF EXISTS employee_territories;
CREATE TABLE employee_territories (
    employee_id      SMALLINT           NOT NULL,
    territory_id     VARCHAR(20)        NOT NULL,
    CONSTRAINT pk_employee_territories PRIMARY KEY (employee_id, territory_id)
);

CREATE INDEX ix_employee_territories__employee_id__territory_id ON employee_territories (employee_id, territory_id);
