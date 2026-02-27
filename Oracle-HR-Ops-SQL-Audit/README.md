# Oracle HR 系统运维与 SQL 审计实战

## 项目简介
本项目是基于 Oracle 官方 HR 示例库，覆盖从 Linux 环境搭建到自动化运维的全流程，核心目标是掌握数据库运维、SQL 优化、自动化脚本编写三大核心能力。

## 核心能力覆盖
| 模块 | 核心技能 | 解决的问题 |
|------|----------|------------|
| 环境搭建 | Linux 操作、Oracle 静默安装、监听配置 | ORA-12514（监听未注册） |
| 权限安全 | 角色/用户权限管控、最小权限原则 | ORA-01017（密码错误） |
| SQL 优化 | 执行计划分析、索引优化、查询改写 | 慢查询性能问题 |
| 自动化运维 | Shell 脚本、crontab 定时任务 | 重复运维工作自动化 |

## 快速上手
### 1. 环境准备
```bash
# 克隆仓库
git clone https://github.com/HaogerEHS/Oracle-HR-Ops-SQL-Audit.git
# 进入环境搭建目录
cd Oracle-HR-Ops-SQL-Audit/01-Environment-Setup/
# 执行用户创建脚本
chmod +x 01-create-user-group.sh && ./01-create-user-group.sh