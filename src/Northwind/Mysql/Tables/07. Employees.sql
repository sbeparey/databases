DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id             SMALLINT        NOT NULL AUTO_INCREMENT,
    last_name               VARCHAR(20)     NOT NULL,
    first_name              VARCHAR(10)     NOT NULL,
    title                   VARCHAR(30)     NULL,
    title_of_courtesy       VARCHAR(25)     NULL,
    birth_date              DATE            NULL,
    hire_date               DATE            NULL,
    address                 VARCHAR(60)     NULL,
    city                    VARCHAR(15)     NULL,
    region                  VARCHAR(15)     NULL,
    postal_code             VARCHAR(10)     NULL,
    country                 VARCHAR(15)     NULL,
    home_phone              VARCHAR(24)     NULL,
    extension               VARCHAR(4)      NULL,
    photo                   LONGBLOB        NULL,
    notes                   TEXT            NULL,
    reports_to              SMALLINT        NULL,
    photo_path              VARCHAR(255)    NULL,
    CONSTRAINT pk_employees PRIMARY KEY (employee_id)
--    CONSTRAINT ck_birth_date CHECK (birth_date < NOW())
);

CREATE UNIQUE INDEX ix_employees__employee_id ON employees (employee_id);

CREATE INDEX ix_employees__last_name ON employees (last_name);

CREATE INDEX ix_employees__postal_code ON employees (postal_code);
