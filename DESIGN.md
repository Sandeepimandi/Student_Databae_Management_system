# Design Document

By SandeepImandi

## Scope:

# Purpose

The purpose of this database is to manage student information comprehensively, including personal details, course enrollments, grades, attendance, and fee status. It aims to provide a structured system for tracking and managing student data efficiently.
- **Students**: Personal information, course enrollments, grades, attendance, and fee details.
- **Courses**: Information about courses available for enrollment.
- **Attendance**: Records of student attendance for each course.
- **Grades**: Grades achieved by students in their enrolled courses.
- **Fees**: Details of fees due and payments made by students.
- **Faculty Information**: Details about faculty members teaching courses.
- **Curriculum Management**: Detailed management of course content and curriculum structure.

# Functional Requirements:

Users should be able to:
- Add, view, update, and delete student information.
- Manage course enrollments, attendance records, and grades.
- Track fee payments and outstanding balances.
- Advanced analytics or statistical analysis of student performance.
- Integration with external systems such as financial management or learning management systems.

### Representation:

## Entities:

# Students
- Attributes: `student_id` (INT, Primary Key), `name` (VARCHAR), `contact` (VARCHAR), `address` (VARCHAR), `year_of_admission` (YEAR).
- Constraints: Primary Key on `student_id` for uniqueness.

# Courses
- Attributes: `course_id` (INT, Primary Key), `course_name` (VARCHAR), `description` (TEXT).
- Constraints: Primary Key on `course_id` for uniqueness.

# Enrollments
- Attributes: `enrollment_id` (INT, Primary Key), `student_id` (INT, Foreign Key to Students), `course_id` (INT, Foreign Key to Courses).
- Constraints: Foreign keys linking `student_id` to Students and `course_id` to Courses.

# Attendance
- Attributes: `attendance_id` (INT, Primary Key), `student_id` (INT, Foreign Key to Students), `course_id` (INT, Foreign Key to Courses), `date` (DATE), `status` (BOOLEAN).
- Constraints: Foreign keys linking `student_id` to Students and `course_id` to Courses.

# Grades
- Attributes: `grade_id` (INT, Primary Key), `student_id` (INT, Foreign Key to Students), `course_id` (INT, Foreign Key to Courses), `grade` (CHAR).
- Constraints: Foreign keys linking `student_id` to Students and `course_id` to Courses.

# Fees
- Attributes: `fee_id` (INT, Primary Key), `student_id` (INT, Foreign Key to Students), `amount_due` (DECIMAL), `amount_paid` (DECIMAL), `due_date` (DATE), `payment_date` (DATE).
- Constraints: Foreign key linking `student_id` to Students.

## Relationships

![Students Database Management System_ERD](<Students Database Management System_ERD.jpg>)

## Optimizations:

# Indexes

Indexes created on:
- `Enrollments.student_id` and `Enrollments.course_id` for efficient course enrollment queries.
- `Grades.student_id` and `Grades.course_id` for quick grade retrieval.
- `Attendance.student_id` and `Attendance.course_id` for fast attendance record access.
- `Fees.student_id` for efficient fee management operations.

# Limitations:

- Scalability: The current design may require additional optimizations for large-scale student populations.
- Complex Analytics: Advanced analytical queries for student performance trends may not be efficiently supported.
- External System Integration: Integration with external systems for real-time updates (e.g., financial systems) is not within scope.
- Curriculum Flexibility: Managing complex curriculum structures or frequent changes in course offerings may be challenging.
- Performance: Certain queries, especially those involving multiple joins across large datasets, could impact performance.
