#!/bin/bash
# 激活虚拟环境
VIRTUALENV_DIR=/root/python36
source $VIRTUALENV_DIR/bin/activate
#进入项目目录
DJANGO_DIR=/usr/share/nginx/BearCatOMS_v2
cd $DJANGO_DIR
#启动Gunicorn服务
gunicorn BearCatOMSv2.wsgi:application \
--bind 127.0.0.1:9002 \
--workers 2 \
--timeout 30 \
--daemon \
--access-logfile /var/logs/gunicorn/access.log \
--error-logfile /var/logs/gunicorn/error.log
