USE CompanyDB;
GO

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DepartmentManagerID INT
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(20),
    FirstName VARCHAR(30),
    DepartmentID INT,
    Sex BIT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO Department (DepartmentID, DepartmentName, DepartmentManagerID)
VALUES (1, 'HR', NULL), (2, 'IT', NULL);

INSERT INTO Employee (EmployeeID, LastName, FirstName, DepartmentID, Sex)
VALUES (1, 'Nguyen', 'Nam', 1, 1), (2, 'Pham', 'Lan Anh', 2, 0);

SELECT * FROM Department;
GO

SELECT * FROM  Employee;
GO