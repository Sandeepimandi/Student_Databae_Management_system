-- Insert a new student
INSERT INTO Students (student_id, name, contact, address, year_of_admission)
VALUES (1, 'John Doe', '123-456-7890', '123 Elm Street', 2022);

-- Insert a new course
INSERT INTO Courses (course_id, course_name, description)
VALUES (1, 'Database Systems', 'Introduction to databases');

-- Enroll a student in a course
INSERT INTO Enrollments (enrollment_id, student_id, course_id)
VALUES (1, 1, 1);

-- Add a grade for a student
INSERT INTO Grades (grade_id, student_id, course_id, grade)
VALUES (1, 1, 1, 'A');

-- Record attendance for a student
INSERT INTO Attendance (attendance_id, student_id, course_id, date, status)
VALUES (1, 1, 1, '2023-01-01', TRUE);

-- Record fee details for a student
INSERT INTO Fees (fee_id, student_id, amount_due, amount_paid, due_date, payment_date)
VALUES (1, 1, 1000.00, 500.00, '2023-02-01', '2023-01-15');

-- Retrieve personal information of a student
SELECT * FROM Students WHERE student_id = 1;

-- Retrieve courses a student is enrolled in
SELECT Courses.course_name
FROM Enrollments
JOIN Courses ON Enrollments.course_id = Courses.course_id
WHERE Enrollments.student_id = 1;

-- Retrieve grades for a student
SELECT Courses.course_name, Grades.grade
FROM Grades
JOIN Courses ON Grades.course_id = Courses.course_id
WHERE Grades.student_id = 1;

-- Retrieve attendance records for a student
SELECT Courses.course_name, Attendance.date, Attendance.status
FROM Attendance
JOIN Courses ON Attendance.course_id = Courses.course_id
WHERE Attendance.student_id = 1;

-- Retrieve fee details for a student
SELECT * FROM Fees WHERE student_id = 1;

-- Retrieve students with unpaid fees
SELECT Students.name, Fees.amount_due, Fees.amount_paid
FROM Fees
JOIN Students ON Fees.student_id = Students.student_id
WHERE Fees.amount_due > Fees.amount_paid;

-- Retrieve students enrolled in a specific course
SELECT Students.name
FROM Enrollments
JOIN Students ON Enrollments.student_id = Students.student_id
WHERE Enrollments.course_id = 1;

-- Retrieve all students who have attended a specific course
SELECT Students.name, Attendance.date, Attendance.status
FROM Attendance
JOIN Students ON Attendance.student_id = Students.student_id
WHERE Attendance.course_id = 1;

-- Update contact information for a student
UPDATE Students
SET contact = '987-654-3210'
WHERE student_id = 1;

-- Delete a student's enrollment in a course
DELETE FROM Enrollments
WHERE enrollment_id = 1;
