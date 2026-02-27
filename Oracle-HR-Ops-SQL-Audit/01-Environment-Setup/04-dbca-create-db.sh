#!/bin/bash
# 静默创建Oracle数据库
dbca -silent -createDatabase \
-templateName General_Purpose.dbc \
-gdbname orcl -sid orcl \
-sysPassword sys123 \
-systemPassword system123 \
-datafileDestination /u01/app/oracle/oradata \
-storageType FS \
-characterSet AL32UTF8 \
-memoryPercentage 20 \
-emConfiguration NONE

# 初始化HR示例库
sqlplus / as sysdba <<EOF
@$ORACLE_HOME/demo/schema/human_resources/hr_main.sql
exit;
EOF