SELECT TOP (100) ROW_NUMBER() OVER (ORDER BY z) FROM (
SELECT TOP (100) ROW_NUMBER() OVER (ORDER BY class) z FROM classes x
UNION ALL SELECT TOP (100) ROW_NUMBER() OVER (ORDER BY class) FROM classes x 
UNION ALL SELECT TOP (100) ROW_NUMBER() OVER (ORDER BY class) FROM classes x) t
--SELECT LEN(REPLACE(STRING_AGG(class,''),' ','')) from classes
--:TODO Объединить идеи генерации строк и с методом SUBSTING(x,ROW_NUM()...) 
-- Вдохновение тут -> http://www.sql-tutorial.ru/en/tag/string%20functions.html