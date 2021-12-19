# Pewlett-Hackard-Analysis

## Overview of Analysis

This purpose of this project was to analyze employee data from Pewlett-Hackard using SQL, focusing on obtaining data tables with the number of retiring employees by employee title, and the number of employees eligibile to participate in a mentorship program. 

The goal of this project was to learn and apply basic SQL functions in PostgreSQL such as importing and exporting tables into and from SQL, creating databases, querying data from tables, performing joins, and executing functions such as Count, Order By, and Group By. 

## Results

### Deliverable 1:

A table titled "retirement_titles" was created by querying data from different dataframes and joining them together through their primary keys.

<img width="574" alt="Screen Shot 2021-12-18 at 10 00 47 PM" src="https://user-images.githubusercontent.com/90734050/146665685-de8bae88-0d4b-4984-8b3f-2e295717e6ec.png">

<img width="722" alt="Screen Shot 2021-12-18 at 10 01 39 PM" src="https://user-images.githubusercontent.com/90734050/146665697-a5adada7-50eb-4786-98ef-73d230a86f12.png">

<img width="302" alt="Screen Shot 2021-12-18 at 10 11 44 PM" src="https://user-images.githubusercontent.com/90734050/146665863-d58511a7-f7dd-44b8-81cc-14689a442e1a.png">


Four major points:
1. The title of "Senior Engineer" has the highest number of retirees at 25,929 while only 2 Managers will be retiring
2. After querying the titles, a dataframe consisting of unique titles for each employee based on their final position was made using the DISTINCT ON function.
3. The COUNT function was used to obtain the number of retirees based on their job titles.
4. This data can be used to determine which departments and jobs need to be filled within the coming years. 

### Deliverable 2:

This table, titled "mentorship_eligibility" provides a number of employees within a certain age range (birth_date in 1965) that would be able to provide mentorship to new employees

<img width="796" alt="Screen Shot 2021-12-18 at 11 34 06 PM" src="https://user-images.githubusercontent.com/90734050/146667432-43bcd451-ccc5-4ec9-84c3-232e590e625c.png">


Four major points:
1. 1,549 employees are eligibile to become mentors based on this criteria
2. Multiple joins were performed to create this table combining titles, birth date, and employee number
3. Senior Staff (569) and Senior Engineer (501) employees are the most abundant eligible mentors.
4. The company can use this information to determine which departments need the most mentors because of the size of the soon-to-be retiring group. 



## Summary

This analysis gave Pewlett-Hackard a useful list for determining how many employees will be retiring in the next few years, which departments will be losing a large portion of their employees, and the number of eligible mentors that will help new hires acclimate to their jobs.

One important table that I used was determining how many mentors with each title would be leaving, helping to determine how many mentors might be needed to replace the number that is leaving. 

<img width="796" alt="Screen Shot 2021-12-18 at 11 47 05 PM" src="https://user-images.githubusercontent.com/90734050/146667676-6423b09c-e828-4c4b-815b-d45d2bf4a6fd.png">

Another useful table is looking at how many mentors will be available in each department, giving the company insight into how they should allocate mentors by department.

<img width="806" alt="Screen Shot 2021-12-18 at 11 54 10 PM" src="https://user-images.githubusercontent.com/90734050/146667884-adda7bf3-1a5c-44d6-98d8-4cf442f7a455.png">

