-- 解决ORA-01017密码错误问题
-- 1. 验证用户是否存在
SELECT username FROM dba_users WHERE username = 'MONITOR';

-- 2. 重置monitor用户密码
ALTER USER monitor IDENTIFIED BY "Monitor@123";

-- 3. 测试连接
CONNECT monitor/Monitor@123;