from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    # Let's make the output a bit more interesting for the demo
    return """
    <body style='background-color: lightblue;'>
        <h1 style='text-align: center; margin-top: 50px;'>
            Hello, World! Version 1
        </h1>
    </body>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)