#!/bin/bash

CURRENT_IP=`ifconfig | grep inet | head -1 | awk '{ print $2 }' | awk -F':' '{ print $2 }'`
cd /home/ubuntu/django_reg_login
source /home/ubuntu/django_reg_login/venv/bin/activate
nohup python /home/ubuntu/django_reg_login/manage.py runserver ${CURRENT_IP}:8000 > /dev/null 2>&1 &


