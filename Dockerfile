# Installing python 
FROM python:3.9

# Installing pipenv into our container
RUN pip install pipenv

# Setting our working directory within the container
WORKDIR /app

# Copying the contents of our program into the container to be run
COPY . .

# Installing the dependencies for our project within the container
RUN pipenv install --system

# This tells tocker to run our application
# Using gunicorn to start our app as a HTTP server
CMD gunicorn app:app -b 0.0.0.0:8080