from flask import Flask

server = Flask(__name__)


@server.route("/")
def home():
    return "Hello, This is my Machine Task"



if __name__ == '__main__':
   server.run(debug = True)