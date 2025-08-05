DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT,
    LastName TEXT,
    Email TEXT,
    Phone TEXT,
    Department TEXT
);    

INSERT INTO Employees (FirstName, LastName, Email, Phone, Department)
VALUES ('Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7890', 'HR');

INSERT INTO Employees (FirstName, LastName, Email, Phone, Department)
VALUES ('Bob', 'Smith', NULL, NULL, 'Finance');

INSERT INTO Employees (FirstName, LastName)
VALUES ('Carol', 'Davis');

UPDATE Employees
SET Email = 'bob.smith@example.com', Phone = '987-654-3210'
WHERE FirstName = 'Bob' AND LastName = 'Smith' AND Email IS NULL;

UPDATE Employees
SET Department = NULL
WHERE FirstName = 'Carol' AND LastName = 'Davis';

DELETE FROM Employees
WHERE Email IS NULL;

DELETE FROM Employees
WHERE FirstName = 'Alice' AND LastName = 'Johnson';
