from flask.testing import FlaskClient

from flaskapp.app import create_app


def test_hello_world():
    # Mock first
    client = app.test_client()

    # Real actions
    app = create_app()
    response = client.get('/')

    # Assertions
    assert response.status_code == 200
    assert b'Hello, Flask!' in response.data
