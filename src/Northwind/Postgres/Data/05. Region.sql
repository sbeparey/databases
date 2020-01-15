SET IDENTITY_INSERT region ON;

INSERT INTO region (region_id, description) VALUES (1, 'Eastern');
INSERT INTO region (region_id, description) VALUES (2, 'Western');
INSERT INTO region (region_id, description) VALUES (3, 'Northern');
INSERT INTO region (region_id, description) VALUES (4, 'Southern');

SET IDENTITY_INSERT region OFF;
