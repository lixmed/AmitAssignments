CREATE VIEW vw_employee_details AS
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id;



CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT employees.first_name, employees.last_name, projects.proj_name, work.hours
FROM employees
JOIN work ON employees.emp_id = work.emp_id
JOIN projects ON work.proj_id = projects.proj_id
WHERE employees.dept_id = 5;


CREATE VIEW vw_high_status_suppliers AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;
