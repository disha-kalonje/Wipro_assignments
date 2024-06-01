-- Assignment 4: Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier. Use ALTER statements to modify the table structures and DROP statements to remove a redundant table.

Create Database and Tables

Create Database

CREATE DATABASE Library;

1.2. Create Tables:

1.2.1. Books Table:

CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT NOT NULL,
  ISBN VARCHAR(13) UNIQUE,
  publication_year INT,
  CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

1.2.2. Authors Table:


CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  biography TEXT
);

1.2.3. Members Table:

CREATE TABLE Members (
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  phone_number VARCHAR(20)
);

Loans Table:

CREATE TABLE Loans (
  loan_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  member_id INT NOT NULL,
  loan_date DATE NOT NULL,
  return_date DATE,
  CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id),
  CONSTRAINT fk_member FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

2. Alter Table Structure (Optional)

Let's say we want to add a category column to the Books table. We can use ALTER TABLE to achieve this:
SQL

ALTER TABLE Books
ADD category VARCHAR(50);

3. Drop Redundant Table (Optional)

Imagine we decide the biography column in the Authors table is unnecessary. We can use DROP COLUMN to remove it:


ALTER TABLE Authors
DROP COLUMN biography;
