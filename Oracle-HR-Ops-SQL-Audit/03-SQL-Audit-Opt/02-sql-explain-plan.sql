-- 分析慢查询执行计划
EXPLAIN PLAN FOR
SELECT * FROM hr.employees WHERE salary > 10000;

-- 查看执行计划
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);