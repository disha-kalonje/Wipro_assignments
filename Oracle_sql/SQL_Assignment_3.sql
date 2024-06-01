-- Assignment : Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier. Use ALTER statements to modify the table structures and DROP statements to remove a redundant table.

-- Create the Database 
CREATE DATABASE library_db

-- Create Tables (Library Schema) :
-- Books table
CREATE TABLE books (
  book_id NUMBER PRIMARY KEY,
  title VARCHAR2(255) NOT NULL,
  author_id NUMBER REFERENCES authors(author_id) ON DELETE SET NULL,
  publisher VARCHAR2(200),
  price NUMBER(5,2)
);

-- Authors table
CREATE TABLE authors (
  author_id NUMBER PRIMARY KEY,
  first_name VARCHAR2(100) NOT NULL,
  last_name VARCHAR2(100) NOT NULL
);

-- Borrowers table (Assuming you want to track borrowers)
CREATE TABLE borrowers (
  borrower_id NUMBER PRIMARY KEY,
  name VARCHAR2(255) NOT NULL,
  phone_number VARCHAR2(20)
);

-- Loans table (Assuming you want to track loans)
CREATE TABLE loans (
  loan_id NUMBER PRIMARY KEY,
  book_id NUMBER REFERENCES books(book_id) ON DELETE SET NULL,
  borrower_id NUMBER REFERENCES borrowers(borrower_id) ON DELETE SET NULL,
  loan_date DATE,
  return_date DATE
);

-- Modify Table Structure (ALTER)
ALTER TABLE books
  ADD genre VARCHAR2(50);

-- Drop a Table (DROP)
-- Let's say you decide the Loans table is redundant and want to remove it :
  DROP TABLE loans;
