# basavarajmali2002#
📘 Smart School Management System  

CREATE DATABASE SchoolManagementDB;
USE SchoolManagementDB;

CREATE TABLE Admins (
    AdminID INT IDENTITY PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(50) NOT NULL
);

CREATE TABLE Teachers (
    TeacherID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    Subject VARCHAR(50),
    Password VARCHAR(50) NOT NULL
);
select * from Students
CREATE TABLE Students (
    StudentID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    Class VARCHAR(20),
    Gender VARCHAR(10),
    Password VARCHAR(50) NOT NULL
);

CREATE TABLE Attendance (
    AttendanceID INT IDENTITY PRIMARY KEY,
    StudentID INT,
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE Marks (
    MarkID INT IDENTITY PRIMARY KEY,
    StudentID INT,
    Subject VARCHAR(50),
    Marks INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE Fees (
    FeeID INT IDENTITY PRIMARY KEY,
    StudentID INT,
    TotalFee INT,
    PaidFee INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Admins (Username, Password)
VALUES ('admin', 'admin123');


CREATE TABLE Parents (
    ParentID INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(50),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE Subjects (
    SubjectID INT IDENTITY PRIMARY KEY,
    SubjectName VARCHAR(50)
);

CREATE TABLE Classes (
    ClassID INT IDENTITY PRIMARY KEY,
    ClassName VARCHAR(20)
);

CREATE TABLE ExamTimeTable (
    ExamID INT IDENTITY PRIMARY KEY,
    Class VARCHAR(20),
    Subject VARCHAR(50),
    ExamDate DATE,
    StartTime VARCHAR(10),
    EndTime VARCHAR(10)
);
select * from Teachers
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A web-based application built using **ASP.NET Web Forms** and **SQL Server** to digitalize school operations.  
It provides separate modules for **Admin**, **Teacher**, and **Student** with secure role-based access.

---

## 📌 Features

### 🧑‍💼 Admin Module
- Add, Update, Delete Students  
- Add, Update, Delete Teachers  
- Dashboard for quick navigation  

### 👨‍🏫 Teacher Module
- Manage Attendance  
- Add & Update Marks  
- Add Exam Time Table  

### 🧑‍🎓 Student Module
- View Marks  
- View Attendance  
- View Exam Time Table  

---

## 🛠️ Technologies Used

| Layer | Technology |
|------|------------|
| Frontend | ASP.NET Web Forms, HTML, CSS |
| Backend | C#, ADO.NET |
| Database | SQL Server |
| IDE | Visual Studio |
| Authentication | Session-based login |

---

## 🧩 System Workflow

### Admin Login →  
✔ Manage Teachers  
✔ Manage Students  
✔ Logout  

### Teacher Login →  
✔ Manage Attendance  
✔ Add Marks  
✔ Add Exam Time Table  

### Student Login →  
✔ View Marks  
✔ View Attendance  
✔ View Exam Schedule  

---

## 🗄️ Database Tables

- Students  
- Teachers  
- Marks  
- Attendance  
- ExamTimeTable  
- LoginTable  
- TeacherLogin  

Includes **primary keys**, **foreign keys**, and **identity columns**.

---

## 🔐 Authentication

- Admin, Teacher, and Student have separate login screens  
- Sessions prevent unauthorized access  
- Dashboard appears only after successful login  

---

## 🚀 How to Run the Project

### 1️⃣ Clone the repository



