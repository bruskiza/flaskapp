# Sample Flask App
from flask import Flask

def create_app():
    app = Flask(__name__)

    @app.route('/')
    def hello_world():
        return 'Hello, Flask!'

    return app

if __name__ == '__main__':          # pragma: no cover
    # If the script is executed directly, run the app
    create_app().run(debug=True)    # pragma: no cover
