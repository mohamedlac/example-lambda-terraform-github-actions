import requests


def lambda_handler(event, context):
    response = requests.get("https://www.google.com")
    print("Response Code : ", response.status_code)
