DROP TABLE IF EXISTS territories;
CREATE TABLE territories (
    territory_id             VARCHAR(20)            NOT NULL,
    description              VARCHAR(50)            NOT NULL,
    region_id                INTEGER                NOT NULL,
    CONSTRAINT pk_territories PRIMARY KEY (territory_id),
    CONSTRAINT fk_employee_territories__employees FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    CONSTRAINT fk_territories__region FOREIGN KEY (region_id) REFERENCES region (region_id)
);

CREATE INDEX ix_territories__territory_id ON territories (territory_id);
