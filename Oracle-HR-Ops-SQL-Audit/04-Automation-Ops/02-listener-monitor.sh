#!/bin/bash
# Oracle监听监控脚本
status=$(lsnrctl status | grep "STATUS of the LISTENER" -A 10 | grep "READY")

# 监听异常时发送邮件告警
if [ -z "$status" ]; then
    echo "Oracle Listener is down at $(date)" | mail -s "Oracle Listener Alert" admin@example.com
    echo "监听异常，已发送告警邮件！"
else
    echo "监听状态正常"
fi