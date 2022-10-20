#!/bin/bash
source ./venv/bin/activate
IP_ADDR=$(ip -f inet addr show wlp2s0 | sed -En -e 's/.*inet ([0-9.]+).*/\1/p')
python manage.py runserver $IP_ADDR:8080
