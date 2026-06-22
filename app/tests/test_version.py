from src.app import app

client = app.test_client()


def test_health():

    response = client.get("/health")

    assert response.status_code == 200

    assert response.json["status"] == "healthy"
