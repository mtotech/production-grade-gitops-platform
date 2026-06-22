#

from flask import Flask
from src.config import Config

app = Flask(__name__)


@app.route("/")
def home():

    return {
        "application": Config.APP_NAME,
        "message": "Production Grade GitOps Platform",
        "status": "running"
    }


@app.route("/health")
def health():

    return {
        "status": "healthy"
    }


@app.route("/version")
def version():

    return {
        "version": Config.APP_VERSION
    }


if __name__ == "__main__":

    app.run(
        host="0.0.0.0",
        port=5000
    )
