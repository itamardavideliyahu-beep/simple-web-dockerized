# simple-web-dockerized

A minimal Flask-based web application running inside a Docker container.  
This project is part of my DevOps portfolio and demonstrates basic containerization skills.

## Tech Stack

- Python 3.11
- Flask
- Docker

## Project Structure

    simple-web-dockerized/
    ├─ app/
    │  └─ app.py
    ├─ requirements.txt
    ├─ Dockerfile
    ├─ .gitignore
    └─ README.md

## Run Locally (with virtual environment)

### Windows (PowerShell)

    python -m venv venv
    .\venv\Scripts\Activate.ps1
    pip install -r requirements.txt
    $env:FLASK_APP = "app.app"
    flask run

### Linux / macOS

    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    export FLASK_APP=app.app
    flask run

Open in your browser:

- http://localhost:5000
- http://localhost:5000/health

## Run with Docker

### Build the image

    docker build -t simple-web-dockerized .

### Run the container

### Run the container

    docker run -d -p 5000:5000 --name simple-web simple-web-dockerized

Then open:

- http://localhost:5000
- http://localhost:5000/health

## Notes

- The `/health` endpoint is included as a basic health check, similar to real production services.
- The Flask built-in server is used here for demo purposes. For production, a WSGI server such as `gunicorn` is recommended.
