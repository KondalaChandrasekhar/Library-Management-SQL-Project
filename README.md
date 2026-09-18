# Library Management SQL Project

##  Project Overview

This project analyzes a **Library Management System** using SQL to answer practical business questions related to books, borrowers, library branches, book copies, and loans.

The project focuses on extracting meaningful information from a relational database using SQL queries, joins, aggregations, filtering, and grouping techniques.

The objective is to demonstrate practical SQL skills and the ability to translate business requirements into data-driven queries.

---

##  Business Objective

The objective of this project is to analyze library data and generate useful insights about:

* Book availability across library branches
* Books loaned by different branches
* Borrower activity
* Borrowers with no books checked out
* Borrowers with a high number of checked-out books
* Books written by specific authors
* Book availability for specific branches

---

## Dataset

The project uses seven CSV files representing different entities in the library management system:

| Dataset              | Description                                            |
| -------------------- | ------------------------------------------------------ |
| `books.csv`          | Contains book details                                  |
| `authors.csv`        | Contains book-author information                       |
| `book copies.csv`    | Contains the number of copies available at each branch |
| `book loans.csv`     | Contains book loan transactions                        |
| `borrower.csv`       | Contains borrower information                          |
| `library branch.csv` | Contains library branch details                        |
| `publisher.csv`      | Contains publisher information                         |

The CSV files were cleaned and imported into **MySQL** before performing the analysis.

---

## Tools & Technologies

* **MySQL**
* **MySQL Workbench**
* **SQL**


---

## Database Structure

The project contains the following main tables:

```text
tbl_book
tbl_book_authors
tbl_book_copies
tbl_book_loans
tbl_borrower
tbl_library_branch
tbl_publisher
```

The tables are connected using primary and foreign-key relationships.

### Key Relationships

```text
Book
 ├── Book Authors
 ├── Book Copies ─── Library Branch
 └── Book Loans ─── Borrower
```

---

##  SQL Analysis Tasks

### Task 1 — Copies of "The Lost Tribe" at Sharpstown

Determine the number of copies of **The Lost Tribe** available at the Sharpstown branch.

**SQL concepts:**

* INNER JOIN
* WHERE
* Multiple-table relationships

---

### Task 2 — Copies of "The Lost Tribe" at Each Branch

Determine the number of copies of **The Lost Tribe** available at every library branch.

**SQL concepts:**

* INNER JOIN
* WHERE
* GROUP BY
* SUM()

---

### Task 3 — Borrowers Without Checked-Out Books

Identify borrowers who currently do not have any books checked out.

**SQL concepts:**

* LEFT JOIN
* IS NULL

---

### Task 4 — Books Due at Sharpstown

Retrieve the book title, borrower name, and borrower address for books loaned from Sharpstown with the specified due date.

**SQL concepts:**

* Multiple INNER JOINs
* WHERE
* Date filtering

---

### Task 5 — Books Loaned by Each Branch

Calculate the total number of books loaned from each library branch.

**SQL concepts:**

* JOIN
* COUNT()
* GROUP BY

---

### Task 6 — Borrowers With More Than Five Books Checked Out

Identify borrowers who have more than five books checked out and retrieve their names, addresses, and number of checked-out books.

**SQL concepts:**

* JOIN
* COUNT()
* GROUP BY
* HAVING

---

### Task 7 — Stephen King Books at Central Branch

Retrieve the titles of books written by **Stephen King** and determine the number of copies available at the Central branch.

**SQL concepts:**

* Multiple-table JOINs
* WHERE
* GROUP BY
* SUM()

---

## Key SQL Concepts Demonstrated

This project demonstrates practical usage of:

* `SELECT`
* `WHERE`
* `JOIN`
* `LEFT JOIN`
* `IS NULL`
* `GROUP BY`
* `HAVING`
* `COUNT()`
* `SUM()`
* Date filtering
* Multi-table joins
* Relational database concepts
* Aggregation and grouped analysis

---

## Project Structure

```text
Library-Management-SQL-Project/
│
├── Data/
│   ├── authors.csv
│   ├── book copies.csv
│   ├── book loans.csv
│   ├── books.csv
│   ├── borrower.csv
│   ├── library branch.csv
│   └── publisher.csv
│
├── Images/
│   ├── Task1.png
│   ├── Task2.png
│   ├── Task3.png
│   ├── Task 4.png
│   ├── Task 5.png
│   ├── Task 6.png
│   └── Task 7.png
│
├── Task_questions.sql
├── creating_and_inspecting_data.sql
└── README.md
```

---

## Query Results

Screenshots of the SQL query outputs are available in the `Images` folder.

Each screenshot corresponds to one of the seven analysis tasks.

---

## Project Workflow

```text
Business Requirement
        ↓
Understand Database Structure
        ↓
Identify Relevant Tables
        ↓
Identify Table Relationships
        ↓
Write SQL Query
        ↓
Execute Query
        ↓
Verify Results
        ↓
Analyze Output
```

---

## Key Learning Outcomes

Through this project, I practiced how to:

* Understand a relational database structure
* Identify appropriate tables for a business requirement
* Determine relationships between tables
* Select appropriate JOIN types
* Apply filtering conditions
* Perform grouped analysis
* Use aggregate functions such as `COUNT()` and `SUM()`
* Filter aggregated results using `HAVING`
* Convert business questions into SQL queries
* Validate SQL query results

---

##  Author

**Chandrasekhar Kondala**

Aspiring Data Analyst | Python | SQL | Power BI | Data Visualization
