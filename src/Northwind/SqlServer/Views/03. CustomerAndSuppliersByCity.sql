--DROP VIEW IF EXISTS CustomerAndSuppliersByCity;
--GO

CREATE VIEW CustomerAndSuppliersByCity AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers;
