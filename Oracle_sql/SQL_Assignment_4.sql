-- Assignment : Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier. Use ALTER statements to modify the table structures and DROP statements to remove a redundant table.

-- Modify Table Structure (ALTER)
ALTER TABLE books
  ADD genre VARCHAR2(50);

-- Drop a Table (DROP)
-- Let's say you decide the Loans table is redundant and want to remove it :
  DROP TABLE loans;
