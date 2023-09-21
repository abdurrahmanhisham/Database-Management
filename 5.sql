SELECT * FROM EMPLOYEE_TABLE ORDER BY ID DESC;
SELECT * FROM EMPLOYEE_TABLE ORDER BY COUNTRY DESC;

SELECT * FROM EMPLOYEE_TABLE ORDER BY COUNTRY DESC,AGE ASC;
SELECT COUNTRY,COUNT(*) FROM EMPLOYEE_TABLE GROUP BY COUNTRY;
SELECT COUNTRY,COUNT(*) FROM EMPLOYEE_TABLE GROUP BY COUNTRY ORDER BY COUNTRY DESC;

SELECT DESIGNATION,COUNT(*) FROM EMPLOYEE_TABLE GROUP BY DESIGNATION;
SELECT COUNTRY,COUNT(*) FROM EMPLOYEE_TABLE GROUP BY COUNTRY HAVING COUNT(*)>1 ;

*** ORDER OF QUERY WRITING ***
///
SELECT COLUMNS 
WHERE CONDITION
GROUP BY COLUMN
HAVING CONDITION
ORDER BY COLUMN
///

SELECT * FROM EMPLOYEE_TABLE WHERE AGE <50 GROUP BY COUNTRY HAVING MAX(AGE);\
SELECT COUNTRY,MAX(AGE) AS MAX_AGE FROM EMPLOYEE_TABLE  GROUP BY COUNTRY HAVING MAX(AGE)<50 ORDER BY COUNTRY DESC;

SELECT COUNTRY,MAX(AGE) AS MAX_AGE FROM EMPLOYEE_TABLE 
GROUP BY COUNTRY 
HAVING MAX(AGE)<50 
ORDER BY COUNTRY DESC
LIMIT 2;
