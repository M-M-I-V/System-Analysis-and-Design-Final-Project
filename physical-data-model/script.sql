CREATE DATABASE mcst_elibrary_laptop_borrowing_system;
USE mcst_elibrary_laptop_borrowing_system;

-- Student Table
CREATE TABLE Student (
    Library_ID VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Program VARCHAR(50) NOT NULL
);

-- Laptop Table
CREATE TABLE Laptop (
    Laptop_ID INT PRIMARY KEY AUTO_INCREMENT,
    Serial_Number VARCHAR(50) UNIQUE NOT NULL,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    IP_Address VARCHAR(15) UNIQUE NOT NULL,
    Status ENUM('Available', 'Borrowed', 'Under Maintenance') NOT NULL DEFAULT 'Available',
    CHECK (Status IN ('Available', 'Borrowed', 'Under Maintenance'))
);

-- Staff Table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Position ENUM('Librarian', 'Assistant', 'Technician') NOT NULL
);

-- Loan Table (Now tracks which staff processed it)
CREATE TABLE Loan (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Library_ID VARCHAR(15) NOT NULL,
    Laptop_ID INT NOT NULL,
    Staff_ID INT NULL, -- Staff member processing the loan (Nullable)
    Borrow_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Due_Date DATETIME NOT NULL,
    Return_Date DATETIME NULL,
    Status ENUM('Borrowed', 'Returned', 'Overdue') NOT NULL DEFAULT 'Borrowed',
    FOREIGN KEY (Library_ID) REFERENCES Student(Library_ID) ON DELETE CASCADE,
    FOREIGN KEY (Laptop_ID) REFERENCES Laptop(Laptop_ID) ON DELETE CASCADE,
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE SET NULL,
    CHECK (Status IN ('Borrowed', 'Returned', 'Overdue'))
);

-- Laptop Maintenance Table (Now includes maintenance notes)
CREATE TABLE Laptop_Maintenance (
    Maintenance_ID INT PRIMARY KEY AUTO_INCREMENT,
    Laptop_ID INT NOT NULL,
    Staff_ID INT NULL, -- Nullable in case a technician is not assigned yet
    Maintenance_Type ENUM('Software Update', 'Hardware Repair') NOT NULL,
    Maintenance_Date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Pending', 'Completed') NOT NULL DEFAULT 'Pending',
    Maintenance_Notes TEXT NULL, -- Optional field for extra notes on maintenance
    FOREIGN KEY (Laptop_ID) REFERENCES Laptop(Laptop_ID) ON DELETE CASCADE,
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID) ON DELETE SET NULL,
    CHECK (Status IN ('Pending', 'Completed'))
);