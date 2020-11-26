from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/get-json')
def hello():
    return jsonify(hello='world') # Returns HTTP Response with {"hello": "world"} json output

def foobar():
    return jsonify(foo='bar')     # Returns HTTP Response with {"foo": "bar"} json output

if __name__ == "__main__":
    app.run(host='0.0.0.0')
