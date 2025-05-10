# Real-Time Temperature Sensor Simulation with Pub/Sub, Cloud Functions, and Cloud Storage

## Overview

This project demonstrates a **real-time data pipeline** using **Google Cloud Platform (GCP)** services. A simulated temperature sensor sends data to **Pub/Sub**, which triggers a **Cloud Function** to store the data in **Cloud Storage**. The data can then be analyzed using **BigQuery** and visualized with **Looker Studio**.

## Educational Value

-  Demonstrates a real-time, serverless data pipeline.<br/>
-  Shows how GCP services integrate seamlessly.<br/>
-  Scalable, pay-as-you-go architecture.<br/>
-  Perfect for teaching IoT, streaming, or cloud-native design.<br/>

## USECASE

-  A temperature sensor (Python script) generates data every few seconds.<br/>
-  This data is published to a Pub/Sub topic.<br/>
-  A Cloud Function subscribes to the topic, processes the message, and stores it in Google Cloud Storage.<br/>

## Project Flow

[Python Script (Publisher)] <BR/>
        ↓ <BR/>
[Pub/Sub Topic: temperature-topic] <BR/>
        ↓ <BR/>
[Cloud Function: store_temperature_data()] <BR/>
        ↓ <BR/>
[GCS Bucket: /temperature_data/] <BR/>

## Architecture

+-------------+ +-------------+ +-------------------+<br/>
| Temperature | ----> | Pub/Sub | ----> | Cloud Function |<br/>
| Publisher | | Topic | | (Python Trigger) |<br/>
+-------------+ +-------------+ +-------------------+|<br/>
||<br/>
v
+----------------+|<br/>
| Cloud Storage ||<br/>
| (Text Files) ||<br/>
+----------------+|<br/>
||<br/>
v
+----------------+|<br/>
| BigQuery ||<br/>
| (Optional) ||<br/>
+----------------+|<br/>
||<br/>
v
+----------------+|<br/>
| Looker Studio ||<br/>
| (Visualization)||<br/>
+----------------+|<br/>

## Learning Outcomes for Students:

✅ Understand how real-time data streaming works <br/>
✅ Learn how GCP services connect together <br/>
✅ See how serverless computing (Cloud Functions) responds to events <br/>
✅ Practice writing simple Python scripts for cloud integration <br/>
✅ Build cloud-native dashboards using Looker Studio <br/>

## Services Used

- **Pub/Sub** – for message queuing
- **Cloud Functions** – to process messages and store them
- **Cloud Storage** – to save temperature logs
- **BigQuery** – to analyze data (optional)
- **Looker Studio** – to visualize trends and metrics

## Enable Required APIs

```bash
gcloud services enable pubsub.googleapis.com \
    cloudfunctions.googleapis.com \
    storage.googleapis.com \
    bigquery.googleapis.com



