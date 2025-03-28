CREATE DATABASE mcst_elibrary_laptop_borrowing_system;
USE mcst_elibrary_laptop_borrowing_system;

-- Student Table
CREATE TABLE Student (
    Library_ID VARCHAR(15) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Program VARCHAR(50) NOT NULL
);

INSERT INTO Student (Library_ID, Name, Program) VALUES
('S001', 'John Doe', 'Computer Science'),
('S002', 'Jane Smith', 'Information Technology'),
('S003', 'Michael Johnson', 'Electronics Engineering'),
('S004', 'Emily Davis', 'Software Engineering'),
('S005', 'Daniel Brown', 'Cybersecurity'),
('S006', 'Sophia Wilson', 'Data Science'),
('S007', 'James Martinez', 'Artificial Intelligence'),
('S008', 'Olivia Anderson', 'Business Analytics'),
('S009', 'William Thomas', 'Mechanical Engineering'),
('S010', 'Emma White', 'Civil Engineering'),
('S011', 'Benjamin Harris', 'Electrical Engineering'),
('S012', 'Ava Clark', 'Network Administration'),
('S013', 'Alexander Lewis', 'Game Development'),
('S014', 'Mia Walker', 'Multimedia Arts'),
('S015', 'Ethan Hall', 'Automotive Engineering'),
('S016', 'Charlotte Young', 'Robotics and Automation'),
('S017', 'Mason Allen', 'Information Systems'),
('S018', 'Amelia Scott', 'Software Development'),
('S019', 'Logan Wright', 'Telecommunication Engineering'),
('S020', 'Harper King', 'Digital Forensics'),
('S021', 'Lucas Green', 'Bioinformatics'),
('S022', 'Ella Baker', 'Aerospace Engineering'),
('S023', 'Jacob Adams', 'Environmental Engineering'),
('S024', 'Scarlett Nelson', 'Mathematics and Computing'),
('S025', 'Michael Carter', 'Physics and Computer Science'),
('S026', 'Penelope Mitchell', 'Computer Engineering'),
('S027', 'Henry Perez', 'Embedded Systems'),
('S028', 'Aria Roberts', 'Cloud Computing'),
('S029', 'Sebastian Rivera', 'Database Management'),
('S030', 'Chloe Carter', 'Cyber-Physical Systems'),
('S031', 'Jack Torres', 'Information Security'),
('S032', 'Grace Ramirez', 'Human-Computer Interaction'),
('S033', 'Lucas Gomez', 'Artificial Intelligence & ML'),
('S034', 'Avery Phillips', 'Software Quality Assurance'),
('S035', 'Elijah Hernandez', 'Blockchain Technology'),
('S036', 'Layla Campbell', 'Quantum Computing'),
('S037', 'Liam Parker', 'Ethical Hacking'),
('S038', 'Zoe Evans', 'Web Development'),
('S039', 'Nathan Edwards', 'Mobile App Development'),
('S040', 'Lillian Collins', 'Graphics Design'),
('S041', 'Dylan Stewart', 'Health Informatics'),
('S042', 'Hannah Morris', 'Digital Marketing'),
('S043', 'Caleb Rogers', 'Financial Technology'),
('S044', 'Sofia Reed', 'Computer Vision'),
('S045', 'Gabriel Cook', 'Data Analytics'),
('S046', 'Aurora Bell', 'Augmented Reality'),
('S047', 'Julian Murphy', '3D Animation'),
('S048', 'Stella Cooper', 'Big Data Management'),
('S049', 'Cameron Bailey', 'Internet of Things'),
('S050', 'Madison Foster', 'Game Programming');

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

INSERT INTO Laptop (Serial_Number, Brand, Model, IP_Address, Status) VALUES
('SN1001', 'Dell', 'Latitude 5420', '192.168.1.2', 'Available'),
('SN1002', 'HP', 'EliteBook 840 G7', '192.168.1.3', 'Borrowed'),
('SN1003', 'Lenovo', 'ThinkPad T14', '192.168.1.4', 'Available'),
('SN1004', 'Acer', 'Aspire 5', '192.168.1.5', 'Under Maintenance'),
('SN1005', 'Asus', 'ZenBook 14', '192.168.1.6', 'Available'),
('SN1006', 'Apple', 'MacBook Air M1', '192.168.1.7', 'Borrowed'),
('SN1007', 'Microsoft', 'Surface Laptop 4', '192.168.1.8', 'Available'),
('SN1008', 'Razer', 'Blade 15', '192.168.1.9', 'Available'),
('SN1009', 'MSI', 'GF63 Thin', '192.168.1.10', 'Available'),
('SN1010', 'Samsung', 'Galaxy Book Pro', '192.168.1.11', 'Borrowed'),
('SN1011', 'Dell', 'XPS 13', '192.168.1.12', 'Available'),
('SN1012', 'HP', 'Spectre x360', '192.168.1.13', 'Available'),
('SN1013', 'Lenovo', 'Yoga 7i', '192.168.1.14', 'Under Maintenance'),
('SN1014', 'Acer', 'Swift 3', '192.168.1.15', 'Available'),
('SN1015', 'Asus', 'ROG Zephyrus G14', '192.168.1.16', 'Borrowed'),
('SN1016', 'Apple', 'MacBook Pro M2', '192.168.1.17', 'Available'),
('SN1017', 'Microsoft', 'Surface Book 3', '192.168.1.18', 'Available'),
('SN1018', 'Razer', 'Blade Stealth 13', '192.168.1.19', 'Under Maintenance'),
('SN1019', 'MSI', 'Prestige 14', '192.168.1.20', 'Available'),
('SN1020', 'Samsung', 'Galaxy Book Flex', '192.168.1.21', 'Available'),
('SN1021', 'Dell', 'Inspiron 15', '192.168.1.22', 'Available'),
('SN1022', 'HP', 'Pavilion 14', '192.168.1.23', 'Borrowed'),
('SN1023', 'Lenovo', 'IdeaPad 5', '192.168.1.24', 'Available'),
('SN1024', 'Acer', 'Nitro 5', '192.168.1.25', 'Available'),
('SN1025', 'Asus', 'VivoBook 15', '192.168.1.26', 'Under Maintenance'),
('SN1026', 'Apple', 'MacBook Air M2', '192.168.1.27', 'Available'),
('SN1027', 'Microsoft', 'Surface Go 3', '192.168.1.28', 'Borrowed'),
('SN1028', 'Razer', 'Blade 17', '192.168.1.29', 'Available'),
('SN1029', 'MSI', 'Modern 14', '192.168.1.30', 'Available'),
('SN1030', 'Samsung', 'Galaxy Chromebook', '192.168.1.31', 'Under Maintenance'),
('SN1031', 'Dell', 'Alienware m15', '192.168.1.32', 'Available'),
('SN1032', 'HP', 'Omen 15', '192.168.1.33', 'Available'),
('SN1033', 'Lenovo', 'Legion 5', '192.168.1.34', 'Available'),
('SN1034', 'Acer', 'Predator Helios 300', '192.168.1.35', 'Available'),
('SN1035', 'Asus', 'TUF Gaming A15', '192.168.1.36', 'Borrowed'),
('SN1036', 'Apple', 'MacBook Pro 16', '192.168.1.37', 'Available'),
('SN1037', 'Microsoft', 'Surface Laptop Studio', '192.168.1.38', 'Available'),
('SN1038', 'Razer', 'Blade Advanced', '192.168.1.39', 'Under Maintenance'),
('SN1039', 'MSI', 'Stealth 15M', '192.168.1.40', 'Available'),
('SN1040', 'Samsung', 'Notebook 9', '192.168.1.41', 'Available'),
('SN1041', 'Dell', 'Latitude 7410', '192.168.1.42', 'Available'),
('SN1042', 'HP', 'ZBook Firefly', '192.168.1.43', 'Borrowed'),
('SN1043', 'Lenovo', 'ThinkPad X1 Carbon', '192.168.1.44', 'Available'),
('SN1044', 'Acer', 'ConceptD 7', '192.168.1.45', 'Available'),
('SN1045', 'Asus', 'ProArt Studiobook', '192.168.1.46', 'Under Maintenance'),
('SN1046', 'Apple', 'MacBook Air Retina', '192.168.1.47', 'Available'),
('SN1047', 'Microsoft', 'Surface Pro 8', '192.168.1.48', 'Borrowed'),
('SN1048', 'Razer', 'Blade Base Model', '192.168.1.49', 'Available'),
('SN1049', 'MSI', 'Bravo 15', '192.168.1.50', 'Available'),
('SN1050', 'Toshiba', 'Dynabook R73', '192.168.1.51', 'Available');

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