CREATE DATABASE LIBRARY_MANAGEMENT;
USE LIBRARY_MANAGEMENT;

-- Table: tbl_publisher
CREATE TABLE tbl_publisher (
    publisher_PublisherName VARCHAR(255) PRIMARY KEY,
    publisher_PublisherAddress TEXT,
    publisher_PublisherPhone VARCHAR(15)
);

-- Table: tbl_book
CREATE TABLE tbl_book (
    book_BookID INT PRIMARY KEY,
    book_Title VARCHAR(255),
    book_PublisherName VARCHAR(255),
    FOREIGN KEY (book_PublisherName) REFERENCES tbl_publisher(publisher_PublisherName)
);

-- Table: tbl_book_authors
CREATE TABLE tbl_book_authors (
    book_authors_AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    book_authors_BookID INT,
    book_authors_AuthorName VARCHAR(255),
    FOREIGN KEY (book_authors_BookID) REFERENCES tbl_book(book_BookID)
);

-- Table: tbl_library_branch
CREATE TABLE tbl_library_branch (
    library_branch_BranchID INT PRIMARY KEY AUTO_INCREMENT,
    library_branch_BranchName VARCHAR(255),
    library_branch_BranchAddress TEXT
);

-- Table: tbl_book_copies
CREATE TABLE tbl_book_copies (
    book_copies_CopiesID INT PRIMARY KEY AUTO_INCREMENT,
    book_copies_BookID INT,
    book_copies_BranchID INT,
    book_copies_No_Of_Copies INT,
    FOREIGN KEY (book_copies_BookID) REFERENCES tbl_book(book_BookID),
    FOREIGN KEY (book_copies_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID)
);

-- Table: tbl_borrower
CREATE TABLE tbl_borrower (
    borrower_CardNo INT PRIMARY KEY,
    borrower_BorrowerName VARCHAR(255),
    borrower_BorrowerAddress TEXT,
    borrower_BorrowerPhone VARCHAR(15)
);

-- Table: tbl_book_loans
CREATE TABLE tbl_book_loans (
    book_loans_LoansID INT PRIMARY KEY AUTO_INCREMENT,
    book_loans_BookID INT,
    book_loans_BranchID INT,
    book_loans_CardNo INT,
    book_loans_DateOut DATE,
    book_loans_DueDate DATE,
    FOREIGN KEY (book_loans_BookID) REFERENCES tbl_book(book_BookID),
    FOREIGN KEY (book_loans_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID),
    FOREIGN KEY (book_loans_CardNo) REFERENCES tbl_borrower(borrower_CardNo)
);

-- DATA INSPECTION 

show tables;

-- Preview records from each table
SELECT * FROM tbl_book LIMIT 10;

SELECT * FROM tbl_book_authors LIMIT 10;

SELECT * FROM tbl_book_copies LIMIT 10;

SELECT * FROM tbl_book_loans LIMIT 10;

SELECT * FROM tbl_borrower LIMIT 10;

SELECT * FROM tbl_library_branch LIMIT 10;

SELECT * FROM tbl_publisher LIMIT 10;

-- TABLE STRUCTURE

DESC tbl_book;
DESC tbl_book_authors;
DESC tbl_book_copies;
DESC tbl_book_loans;
DESC tbl_borrower;
DESC tbl_library_branch;
DESC tbl_publisher;

-- ROW COUNT for each table 
SELECT COUNT(*) AS total_rows FROM tbl_book;
SELECT COUNT(*) AS total_rows FROM tbl_book_authors;
SELECT COUNT(*) AS total_rows FROM tbl_book_copies;
SELECT COUNT(*) AS total_rows FROM tbl_book_loans;
SELECT COUNT(*) AS total_rows FROM tbl_borrower;
SELECT COUNT(*) AS total_rows FROM tbl_library_branch;
SELECT COUNT(*) AS total_rows FROM tbl_publisher;

