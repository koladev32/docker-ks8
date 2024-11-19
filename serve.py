from flask import Flask, jsonify
import json

# Load the restaurant data from the JSON file
with open("restaurant.json") as file:
    data = json.load(file)

# Initialize the Flask application
app = Flask(__name__)

@app.route("/")
def home():
    return jsonify(data)

if __name__ == "__main__":
    app.run(port=5005, debug=True)
