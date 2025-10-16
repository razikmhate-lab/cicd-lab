from app import app

def test_hello():
    """Tests if the main page returns a successful response."""
    with app.test_client() as client:
        response = client.get('/')
        assert response.status_code == 200
        assert b"Hello, World!" in response.data