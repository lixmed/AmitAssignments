select * from employees;
select employee_id , last_name, salary  from  employees where (salary between 2000 and 5000) and manager_id not in (101,200);


select e.first_name, d.department_name  from employees e 
inner join departments d on e.department_id = d.department_id order by d.department_name ASC;


select department_id , count(first_name) as count_of_emp , avg(salary) as avg_salary from employees group by department_id;
