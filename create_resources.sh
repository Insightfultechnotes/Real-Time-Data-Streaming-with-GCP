1. Create a Pub/Sub Topic:

	gcloud pubsub topics create temperature-topic

2. Create a GCS Bucket:

	gsutil mb -l us-central1 gs://<your-bucket-name>
