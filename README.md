## Quick Start  

If you have `docker` and `docker-compose` on your system, first copy the env file with `cp sample.env .env`, update your ```.env``` file, then run `docker-compose up --build` to quickly bring up `django` and `postgres` preconfigured and bound to their default ports.  

Once built, migrate and create a superuser with the following commands:  
`docker-compose exec web python manage.py migrate`
`docker-compose exec web python manage.py createsuperuser`  

## Local Setup  

Initialize Postgres by running the following commands from within the Postgres
interactive terminal. Make sure to replace the parameters within brackets with
your own settings:

1. `psql` to start interactive Postgres terminal.  
2. `CREATE USER {username} WITH PASSWORD {password};`  
3. `CREATE DATABASE {projectname} WITH OWNER {username};`  

In a separate shell, run the following:  

4. `virtualenv .env_py3` create python virtual environment  
5. `source .env_py3/bin/activate` activate virtual environment  
6. `pip install -r requirements.txt`  install python dependencies  
7. `cp sample.env .env` copy sample .env file    
8. Edit `.env` with updated settings, ensure database variables are updated    
9. `python manage.py migrate`  initialize database tables   
10. `python manage.py createsuperuser` create admin user for debugging  

## Running Locally

1. `python manage.py runserver` starts local webserver
