SELECT * FROM salaries
/*	LIMPIEZA DE DATOS.
1. Revisar los NULLs
2. Revisar duplicados
3. Mejorar la comprension de los datos ("SE" = "Senior")
4. Transformar redundancias ("Analista de datos" = "Data Analyst") / errores
5. Estandarización de formatos de datos.
6. Posible Normalizacion (tengo que revisar bien como queda)
*/



-- 1. Revisar los NULLs
SELECT
	*
FROM
	salaries
WHERE 
	work_year IS NULL OR
	experience_level IS NULL OR
	employment_type IS NULL OR
	job_title IS NULL OR
	salary IS NULL OR
	salary_currency IS NULL OR
	salary_in_usd IS NULL OR
	employee_residence IS NULL OR
	remote_ratio IS NULL OR
	company_location IS NULL OR
	company_size IS NULL
-- no hay NULLs



-- 2. Revisar duplicados
SELECT
	DISTINCT *
FROM 
	salaries



-- 3. Mejorar la comprension de los datos ("SE" = "Senior")
UPDATE
	salaries
SET 
	experience_level =
		CASE
			WHEN experience_level = 'EN' THEN 'Trainee'
			WHEN experience_level = 'MI' THEN 'Junior / Mid-Level'
			WHEN experience_level = 'SE' THEN 'Senior'
			WHEN experience_level = 'EX' THEN 'Expert / Director'
			ELSE experience_level
		END,
	employment_type =
		CASE
			WHEN employment_type = 'PT' THEN 'Part-Time'
			WHEN employment_type = 'FT' THEN 'Full-Time'
			WHEN employment_type = 'CT' THEN 'Contract'
			WHEN employment_type = 'FL' THEN 'Freelance'
			ELSE employment_type
		END



-- 4. Transformar redundancias ("Analista de datos" = "Data Analyst") / errores
SELECT
	DISTINCT job_title
FROM 
	salaries
ORDER BY
	job_title
/*
a. Business (Intelligence) = BI
b. Modeller = Modeler
c. "Lead" (acomodar el orden)
d. "Machine Learning" = ML
*/
-- a. Business (Intelligence) = BI
SELECT
	DISTINCT job_title
FROM 
	salaries
WHERE
	job_title LIKE '%Business%'
ORDER BY
	job_title

UPDATE
	salaries
SET
	job_title = REPLACE(REPLACE(job_title, 'Business Intelligence', 'BI'), 'Business', 'BI')
WHERE
	job_title LIKE '%Business%'

-- b. Modeller = Modeler
SELECT
	DISTINCT job_title
FROM 
	salaries
WHERE
	job_title LIKE '%Modeler%'
ORDER BY
	job_title

UPDATE
	salaries
SET
	job_title = REPLACE(job_title, 'Modeller', 'Modeler')
WHERE
	job_title LIKE '%Modeller%'

-- c. "Lead" (acomodar el orden)
-- selecciono los que terminan con ' Lead'
SELECT
	DISTINCT job_title
FROM 
	salaries
WHERE
	job_title LIKE '%Lead'
ORDER BY
	job_title
-- agrego 'Lead ' por delante.
UPDATE
    salaries
SET
    job_title = CONCAT('Lead ', job_title)
WHERE
    job_title LIKE '%Lead'
-- elimino los que terminan con ' Lead'
UPDATE
    salaries
SET
    job_title = REPLACE(job_title, ' Lead', '')
WHERE
    job_title LIKE '% Lead'
-- corroboramos que funcione:
SELECT
	DISTINCT job_title
FROM 
	salaries
WHERE
	job_title LIKE '%Lead%'
ORDER BY
	job_title
-- todo OK.

-- d. "Machine Learning" = ML
SELECT
	DISTINCT job_title
FROM 
	salaries
WHERE
	job_title LIKE '%Machine Learning%'
ORDER BY
	job_title

UPDATE
	salaries
SET
	job_title = REPLACE(job_title, 'Machine Learning', 'ML')
WHERE
	job_title LIKE '%Machine Learning%'



-- 5. Estandarización de formatos de datos.
-- a. work_year / salary / salary_in_usd / remote_ratio = INT

ALTER TABLE salaries
ALTER COLUMN work_year INT

ALTER TABLE salaries
ALTER COLUMN salary INT

ALTER TABLE salaries
ALTER COLUMN salary_in_usd INT

ALTER TABLE salaries
ALTER COLUMN remote_ratio INT



/*
Exportar los datos limpios.
*/
CREATE TABLE salaries_ETL (
	work_year INT,
	experience_level VARCHAR(50),
	employment_type VARCHAR(50),
	job_title VARCHAR(50),
	salary INT,
	salary_currency VARCHAR(50),
	salary_in_usd INT,
	employee_residence VARCHAR(50),
	remote_ratio INT,
	company_location VARCHAR(50),
	company_size VARCHAR(50)
)

INSERT INTO salaries_ETL
SELECT DISTINCT * FROM salaries

-- corroboramos que todo este OK.
SELECT * FROM salaries_ETL