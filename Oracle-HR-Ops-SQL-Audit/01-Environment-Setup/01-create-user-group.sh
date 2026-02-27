#!/bin/bash
groupadd oinstall
groupadd dba
useradd -g oinstall -G dba oracle
echo "请设置oracle用户密码："
passwd oracle