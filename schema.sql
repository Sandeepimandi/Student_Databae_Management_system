-- Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact VARCHAR(50),
    address VARCHAR(255),
    year_of_admission YEAR
);

-- Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    description TEXT
);

-- Enrollments table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Grades table
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Attendance table
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    date DATE,
    status BOOLEAN,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Fees table
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount_due DECIMAL(10, 2),
    amount_paid DECIMAL(10, 2),
    due_date DATE,
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Indexes
CREATE INDEX idx_student_id ON Enrollments(student_id);
CREATE INDEX idx_course_id ON Enrollments(course_id);
CREATE INDEX idx_student_id ON Grades(student_id);
CREATE INDEX idx_course_id ON Grades(course_id);
CREATE INDEX idx_student_id ON Attendance(student_id);
CREATE INDEX idx_course_id ON Attendance(course_id);
CREATE INDEX idx_student_id ON Fees(student_id);
