# Udacity fullstack project 2
Udacity Full Stack Web Developer Nanodegree Project 2 - Tournament

##Requirements
* Python 2.7
* PostgreSQL
* psycopg2

##Files
* tournament.py - implementation of a Swiss-system tournament
* tournament.sql - table definitions for the tournament project.
* tournament_test.py - Test cases for tournament.py

##Usage
Create tournament database and relations 
```bash
psql -f tournament.sql
```
Run tests
```bash
python tournament_test.py 
```