from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Shalom from DevOps (Dockerized) 🚀"

@app.route("/health")
def health():
    return {"status": "ok", "service": "simple-web-dockerized"}
