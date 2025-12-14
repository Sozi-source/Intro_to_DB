-- task_4.sql
-- Prints the full description of the 'books' table in alx_book_store

SELECT COLUMN_NAME AS 'Field',
       COLUMN_TYPE AS 'Type',
       IS_NULLABLE AS 'Null',
       COLUMN_DEFAULT AS 'Default',
       COLUMN_KEY AS 'Key',
       EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'Books'
ORDER BY ORDINAL_POSITION;
