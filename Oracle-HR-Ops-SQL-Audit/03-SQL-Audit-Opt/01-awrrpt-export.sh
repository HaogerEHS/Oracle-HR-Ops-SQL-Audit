#!/bin/bash
# 导出AWR慢查询报告
mkdir -p /home/oracle/reports
sqlplus / as sysdba <<EOF
@$ORACLE_HOME/rdbms/admin/awrrpt.sql
EOF

# 移动报告到指定目录
mv awrrpt_*.html /home/oracle/reports/
echo "AWR报告已导出至 /home/oracle/reports/"