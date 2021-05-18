from flask import Flask, jsonify
from flask.globals import request

app = Flask(__name__)

@app.route("/food", methods = ['POST'])
def hello_world():
    thisdict = {
        "brand": "Chevy",
        "model": "Mustang",
        "year": 1964
    }
    print(request.data)
    # return cost per gram
    return jsonify(thisdict)

@app.route("/test", methods = ['POST'])
def hello_world2():
    thisdict = {
        "brand": "Chevy",
        "model": "asdsa",
        "year": 111
    }
    print(request.data)
    # return cost per gram
    return jsonify(thisdict)