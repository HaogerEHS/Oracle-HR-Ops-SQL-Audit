-- 创建开发用户
CREATE USER dev_user IDENTIFIED BY "Dev@123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;
GRANT dev_role TO dev_user;

-- 创建测试用户
CREATE USER test_user IDENTIFIED BY "Test@123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;
GRANT test_role TO test_user;

-- 创建只读用户（monitor）
CREATE USER monitor IDENTIFIED BY "Monitor@123" DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;
GRANT read_only_role TO monitor;
GRANT CONNECT, RESOURCE TO monitor;