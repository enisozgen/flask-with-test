#!/bin/bash
set -x

timeout 10 python3 /app/api.py & sleep 4

python3 /app/test_api.py
