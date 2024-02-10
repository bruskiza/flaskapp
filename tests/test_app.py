from flask.testing import FlaskClient

from flaskapp.app import create_app


def test_hello_world():
    app = create_app()
    client = app.test_client()

    response = client.get('/')

    assert response.status_code == 200
    print(response.data)
    assert b'Hello, Flask!' in response.data
