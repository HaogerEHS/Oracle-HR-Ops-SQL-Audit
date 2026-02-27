-- 创建三级角色（开发/测试/只读）
CREATE ROLE dev_role;
CREATE ROLE test_role;
CREATE ROLE read_only_role;

-- 分配HR表权限
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees TO dev_role;
GRANT SELECT, INSERT, UPDATE ON hr.employees TO test_role;
GRANT SELECT ON hr.employees TO read_only_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON hr.departments TO dev_role;
GRANT SELECT, INSERT, UPDATE ON hr.departments TO test_role;
GRANT SELECT ON hr.departments TO read_only_role;