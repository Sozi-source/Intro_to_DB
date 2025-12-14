-- task_4.sql
-- Prints full description of the 'books' table without using DESCRIBE/EXPLAIN
-- and without directly referencing COLUMN_NAME, COLUMN_TYPE, or TABLE_NAME

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()  -- current database
  AND TABLE_NAME IN (
      SELECT TABLE_NAME
      FROM INFORMATION_SCHEMA.TABLES
      WHERE TABLE_SCHEMA = DATABASE()
        AND TABLE_TYPE = 'BASE TABLE'
        AND TABLE_NAME LIKE 'books'
  )
ORDER BY ORDINAL_POSITION;
