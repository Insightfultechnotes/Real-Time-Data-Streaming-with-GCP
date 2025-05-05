import base64
from google.cloud import storage
from datetime import datetime

BUCKET_NAME = 'your-bucket-name'

def store_temperature_data(event, context):
    data = base64.b64decode(event['data']).decode('utf-8')
    timestamp = datetime.utcnow().strftime('%Y-%m-%d_%H-%M-%S')
    file_name = f'{timestamp}.txt'

    storage_client = storage.Client()
    bucket = storage_client.bucket(BUCKET_NAME)
    blob = bucket.blob(f'temperature_data/{file_name}')
    blob.upload_from_string(data)

    print(f"Stored: temperature_data/{file_name}")
