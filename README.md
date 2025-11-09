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

```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
pip install -r requirements.txt
$env:FLASK_APP = "app.app"
flask run
