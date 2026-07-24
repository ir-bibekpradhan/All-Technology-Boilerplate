from flask import Flask, jsonify
from pydantic import BaseModel

app = Flask(__name__)


class HealthResponse(BaseModel):
    status: str
    message: str


@app.route("/")
def hello():
    return jsonify({"message": "Hello from Python boilerplate!"})


@app.route("/health")
def health():
    response = HealthResponse(status="healthy", message="Service is running")
    return jsonify(response.model_dump())


def main():
    app.run(host="0.0.0.0", port=5000, debug=True)


if __name__ == "__main__":
    main()
