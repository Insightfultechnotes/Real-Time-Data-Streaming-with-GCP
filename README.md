# Real-Time Temperature Streaming Project (Google Cloud Platform)

## Overview

This project demonstrates a **real-time data pipeline** using **Google Cloud Platform (GCP)** services. A simulated temperature sensor sends data to **Pub/Sub**, which triggers a **Cloud Function** to store the data in **Cloud Storage**. The data can then be analyzed using **BigQuery** and visualized with **Looker Studio**.

## Learning Outcomes for Students:

✅ Understand how real-time data streaming works
✅ Learn how GCP services connect together
✅ See how serverless computing (Cloud Functions) responds to events
✅ Practice writing simple Python scripts for cloud integration
✅ Build cloud-native dashboards using Looker Studio

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



