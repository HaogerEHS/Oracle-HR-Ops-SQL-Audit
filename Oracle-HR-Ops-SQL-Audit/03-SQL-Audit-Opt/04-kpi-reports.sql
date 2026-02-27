-- HR库KPI报表查询
-- 1. 按部门统计平均薪资
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM hr.departments d
LEFT JOIN hr.employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- 2. 部门人员分布
SELECT d.department_name, COUNT(e.employee_id) AS emp_count
FROM hr.departments d
LEFT JOIN hr.employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- 3. 员工入职年份分布
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(employee_id) AS emp_count
FROM hr.employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;