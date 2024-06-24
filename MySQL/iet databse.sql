-- Create the database
CREATE DATABASE iet;

-- Use the database
USE iet;

-- Create the departments table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create the students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES departments(department_id)
);

-- Insert sample data into departments
INSERT INTO departments (department_name) VALUES 
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering');

-- Insert sample data into students
INSERT INTO students (student_name, age, branch_id) VALUES 
('John Doe', 20, 1),
('Jane Smith', 22, 2),
('Emily Davis', 21, 3);

