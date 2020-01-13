ALTER TABLE CustomerCustomerDemo
ADD CONSTRAINT FK_CustomerCustomerDemo_CustomerDemographics FOREIGN KEY (CustomerTypeId) REFERENCES CustomerDemographics (CustomerTypeId);

ALTER TABLE CustomerCustomerDemo
ADD CONSTRAINT FK_CustomerCustomerDemo_Customers FOREIGN KEY (CustomerId) REFERENCES Customers (CustomerId);

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Employees FOREIGN KEY (ReportsTo) REFERENCES Employees (EmployeeId);

ALTER TABLE EmployeeTerritories
ADD CONSTRAINT FK_EmployeeTerritories_Employees FOREIGN KEY (EmployeeId) REFERENCES Employees (EmployeeId);

ALTER TABLE EmployeeTerritories
ADD CONSTRAINT FK_EmployeeTerritories_Territories FOREIGN KEY (TerritoryId) REFERENCES Territories (TerritoryId);

ALTER TABLE "Order Details"
ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderId) REFERENCES Orders (OrderId);

ALTER TABLE "Order Details"
ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (ProductId) REFERENCES Products (ProductId);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerId) REFERENCES Customers (CustomerId);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Employees FOREIGN KEY (EmployeeId) REFERENCES Employees (EmployeeId);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Shippers FOREIGN KEY (ShipVia) REFERENCES Shippers (ShipperId);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryId) REFERENCES Categories (CategoryId);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Suppliers FOREIGN KEY (SupplierId) REFERENCES Suppliers (SupplierId);

ALTER TABLE Territories
ADD CONSTRAINT FK_Territories_Region FOREIGN KEY (RegionId) REFERENCES Region (RegionId);