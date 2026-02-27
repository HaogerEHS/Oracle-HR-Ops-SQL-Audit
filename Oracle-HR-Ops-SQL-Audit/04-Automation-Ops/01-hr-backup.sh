#!/bin/bash
# Oracle HR库自动备份脚本
DATE=$(date +%Y%m%d)
BACKUP_DIR=/home/oracle/backup
LOG_FILE=$BACKUP_DIR/hr_backup_$DATE.log

# 创建备份目录
mkdir -p $BACKUP_DIR

# 执行expdp备份
expdp system/system123@orcl schemas=hr directory=DATA_PUMP_DIR dumpfile=hr_backup_$DATE.dmp logfile=$LOG_FILE

# 清理7天前的备份
find $BACKUP_DIR -name "hr_backup_*.dmp" -mtime +7 -delete
find $BACKUP_DIR -name "hr_backup_*.log" -mtime +7 -delete

echo "备份完成，日志文件：$LOG_FILE"