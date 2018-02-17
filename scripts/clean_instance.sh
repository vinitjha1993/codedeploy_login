#!/bin/bash
kill $(sudo lsof -t -i:8000)
rm -rf /home/ubuntu/django_reg_login/*
