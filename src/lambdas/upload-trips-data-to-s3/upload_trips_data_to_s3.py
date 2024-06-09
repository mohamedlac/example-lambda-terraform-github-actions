import requests
import boto3


def lambda_handler(event, context):
    s3_client = boto3.client('s3')
    url = "https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2023-01.parquet"
    response = requests.get(url)
    response.raise_for_status()  # Raise HTTPError for non-200 responses
    s3_client.put_object(Bucket="nyc-data-08062024",
                         Key="landing/test_data.parquet",
                         Body=response.content)
