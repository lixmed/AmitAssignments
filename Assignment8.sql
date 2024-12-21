SELECT *
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL 30 DAY;


CREATE PROCEDURE sp_get_employee_hours (IN emp_id INT)
BEGIN
    SELECT e.fname, e.lname, SUM(w.total_hours) AS total_hours
    FROM employees e
    JOIN works_on w ON e.SSN = w.ESSN
    WHERE e.SSN = emp_id
    GROUP BY e.fname, e.lname;
END;




CREATE PROCEDURE sp_department_employee_count ()
BEGIN
    SELECT d.dept_id, d.dept_name, COUNT(e.SSN) AS employee_count
    FROM departments d
    JOIN employees e ON d.dept_id = e.dept_id
    GROUP BY d.dept_id, d.dept_name
    HAVING COUNT(e.SSN) > 5;
END;


