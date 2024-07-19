Student Database Management System
Project Overview
The Student Database Management System is a GUI-based application designed to manage student information efficiently. It allows users to add, update, delete, and view student records. The project is developed using Python and Tkinter for the GUI, with data stored in a SQLite database and CSV file.

Features:
Add new student records
Update existing student records
Delete student records
View all student records in a tabular format
Search for student records by various criteria

Installation:
Prerequisites
Python 3.x
Tkinter (usually comes pre-installed with Python)
Pandas (for handling CSV data)
SQLite3 (for database management)

Steps:
Clone the repository or download the ZIP file.

git clone <repository_url>
cd student-database-management-system
Install the required Python packages.

pip install pandas

Data Files:
data.csv: CSV file where student data is stored.
students_db.db: SQLite database file for storing student records.
SQL Files:
schema.sql: SQL script to create the database schema.
queries.sql: SQL script containing example queries for managing the student database.
Documentation:
DESIGN.md: Detailed design documentation of the project.
Students Database Management System_ERD.jpg: Entity-Relationship Diagram (ERD) for the database schema.

Project Structure:
student-database-management-system/
│
├── data.csv
├── DESIGN.md
├── queries.sql
├── schema.sql
├── students_db.db
└── Students Database Management System_ERD.jpg
License
This project is licensed under the MIT License.

Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your changes.

Acknowledgements
Harvard University's CS50 course for providing foundational knowledge.
The Python and Tkinter communities for their support and resources.


