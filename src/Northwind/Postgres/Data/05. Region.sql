﻿ALTER TABLE region DISABLE TRIGGER ALL;

INSERT INTO region (region_id, description) VALUES (1, 'Eastern');
INSERT INTO region (region_id, description) VALUES (2, 'Western');
INSERT INTO region (region_id, description) VALUES (3, 'Northern');
INSERT INTO region (region_id, description) VALUES (4, 'Southern');

ALTER TABLE region ENABLE TRIGGER ALL;
