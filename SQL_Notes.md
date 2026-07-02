# SQL Notes

## SQL Commands
SQL Commands are used to perform various operations on database such as Accessing, Modifying data in database. SQL commands are basically 5 types
- **Data Definition Language** - Deals with Structure of Database, such as creating, altering, deleting database structure like tables etc.
  - CREATE 
    - Creates tables, database with specific attributes
    - Syntax:  `CREATE TABLE <table_name> (column_name_1 data type, column_name_2 data type);`
  - DROP
    - Deletes entire table along with its structure
    - Syntax: `DROP TABLE <table_name>;`
  - ALTER
    - Modifies the table attributes
    - Syntax: `ALTER TABLE <table_name> ADD COLUMN <column_name> data type;`
  - TRUNCATE
    - Deletes only Table data 
    - Syntax: `TRUNCATE TABLE <table_name>;`
  - COMMENT
    - Add comments to the data dictionary
    - Syntax: `COMMENT ON TABLE <table_name> IS 'comment_text';`
  - RENAME
    - Changes the Table name
    - Syntax: `RENAME TABLE <old_table_name> TO <new_table_name>;`
- Data Manipulation Language
- Data Control language
- Data Query Language
- Transaction Control Language 

## Keys
- key are the special columns for the table
- Primary key: 
  -  Primary key enables column to accept only unique and Not null values
  -  though that we can identify the data easily
  -  example: employee ID, student roll number.
  -  we can have only one primary key in a table
- Foriegn key
  - Foriegn key is a type of key that refers to the primary key of another table
  - it allows non unique values and null values.
  - we can have multiple foregin keys in a table.
  - for example city table contains city id as primary key and student table contains city id