USE [WebStor];

--Вироджений варіант конструкції SELECT
SELECT 'Приклад тексту' AS [String]; 
SELECT 1050             AS [Number];   
SELECT 200.00           AS [Financial];
SELECT SYSDATETIME()    AS [DateTime];
SELECT 2*3              AS [Calculations];



SELECT 'Приклад тексту' AS [String] 
      ,1050             AS [Number]   
      ,200.00           AS [Financial]
      ,SYSDATETIME()    AS [DateTime]
      ,2*3              AS [Calculations];


-- Компоненти конструкції SELECT

-- 1 SELECT    5 -- Визначає найменування стовбців для виводу даних
-- 2 FROM      1 -- Визначає найменування таблиць
-- 3 WHERE     2 -- Здійснює пошук рядків за якимось критерієм
-- 4 GROUP BY  3 -- Формує групи рядків
-- 5 HAVING    4 -- Фільтрує групи рядків
-- 6 ORDER BY  6-- Здійснює сортування результуючого набору даних


-- Приклад 1. Відібрати співробітників, що працюють в офісі 12

SELECT [EMPL_NUM],
       [NAME],
       [AGE],
       [REP_OFFICE]
  FROM [dbo].[SALESREPS]
 WHERE REP_OFFICE = 12
 ORDER BY AGE       --ASC  --DESC 
 ;

 -- Приклад 2. 

 SELECT *
 FROM [dbo].[SALESREPS];

 SELECT TITLE
       ,COUNT(DISTINCT EMPL_NUM) AS [QTY]
	   ,SUM (SALES)              AS [TOTAL_SALES]
	   ,AVG (SALES)              AS [AVG]
	   ,MIN (SALES)              AS [MIN]
	   ,MAX (SALES)              AS [MAX]
   FROM [dbo].[SALESREPS]
WHERE HIRE_DATE BETWEEN '20060101' AND '20061231'
  GROUP BY TITLE
 HAVING COUNT(DISTINCT EMPL_NUM) > 1 
  ORDER BY [QTY] DESC
 ;


 SELECT *
 FROM [dbo].[SALESREPS];

 SELECT COUNT(*)                   AS [Кількість рядків в таблиці]
       ,COUNT(REP_OFFICE)          AS [Кількість не пустих значень в стовбці] 
	   ,COUNT(DISTINCT REP_OFFICE) AS [Кількість не пустих унікальних значень в стовбці]
   FROM [dbo].[SALESREPS];
