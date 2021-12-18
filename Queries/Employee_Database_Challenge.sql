SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title, 
	ti.from_date, 
	ti.to_date
INTO retirement_title
FROM employees as e
RIGHT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.to_date;

SELECT * FROM retirement_title;
DROP TABLE retirement_title CASCADE;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_title
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC
;

SELECT * FROM retiring_titles;
DROP TABLE retiring_titles CASCADE;
