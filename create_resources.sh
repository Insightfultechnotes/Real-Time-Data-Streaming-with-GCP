✅ Create a Pub/Sub Topic:

	gcloud pubsub topics create temperature-topic

✅ Create a GCS Bucket:

	gsutil mb -l us-central1 gs://<your-bucket-name>
 
 ✅ create a folder
 
 	mkdir gcp_pubsub_cloud_function
  	cd gcp_pubsub_cloud_function

 ✅ Deploy the function:

	 gcloud functions deploy store_temperature_data \
	  --runtime python310 \
	  --trigger-resource temperature-topic \
	  --trigger-event google.pubsub.topic.publish \
	  --entry-point store_temperature_data \
	  --source . \
	  --project your-project-id

  ✅ Run it in Cloud Shell:
  
	pip install --user google-cloud-pubsub
	python publisher.py

  ✅ Cleanup (Optional)

  	gcloud functions delete store_temperature_data
	gcloud pubsub topics delete temperature-topic
	gsutil rm -r gs://your-unique-bucket-name/
