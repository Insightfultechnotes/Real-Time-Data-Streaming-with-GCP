from google.cloud import pubsub_v1
import time
import random

project_id = "your-gcp-project-id"
topic_id = "temperature-topic"
publisher = pubsub_v1.PublisherClient()
topic_path = publisher.topic_path(project_id, topic_id)

while True:
    temperature = round(random.uniform(20, 40), 2)
    message = f"Temperature: {temperature}°C"
    publisher.publish(topic_path, message.encode("utf-8"))
    print(f"Published: {message}")
    time.sleep(5)
