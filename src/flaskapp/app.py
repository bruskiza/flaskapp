# src/app.py
from flask import Flask

def create_app():
    app = Flask(__name__)

    # Set configurations or initialize extensions here if needed

    @app.route('/')
    def hello_world():
        return 'Hello, Flask!'

    return app

if __name__ == '__main__':
    # If the script is executed directly, run the app
    create_app().run(debug=True)
