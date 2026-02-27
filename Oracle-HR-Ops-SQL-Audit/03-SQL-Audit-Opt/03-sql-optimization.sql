-- SQL优化实战
-- 优化1：添加索引（针对全表扫描）
CREATE INDEX idx_emp_salary ON hr.employees(salary);

-- 优化2：改写子查询为JOIN（提升查询效率）
-- 原查询（子查询）
SELECT * FROM hr.employees 
WHERE department_id IN (SELECT department_id FROM hr.departments WHERE location_id = 1700);

-- 优化后（JOIN）
SELECT e.* FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
WHERE d.location_id = 1700;