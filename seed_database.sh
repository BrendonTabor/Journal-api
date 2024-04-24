#!/bin/bash

rm db.sqlite3
rm -rf ./journalapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations journalapi
python3 manage.py migrate journalapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

