# Chicago Crime Intelligence Platform

An end-to-end crime analytics and intelligence platform built on Databricks using PySpark, Delta Lake, MLflow, Graph Analytics, and Databricks SQL Dashboards.

This project demonstrates a modern lakehouse architecture for ingesting, transforming, analyzing, and visualizing large-scale crime data while integrating machine learning and graph-based crime pattern detection.

---

# Project Architecture

![Architecture Diagram](architecture/crime_platform_architecture.png)

---

# Project Objectives

- Build scalable crime analytics pipelines using Databricks
- Implement Medallion Architecture (Bronze → Silver → Gold)
- Develop machine learning models for crime intelligence
- Detect linked crime patterns using graph analytics
- Create executive-level interactive dashboards
- Demonstrate MLOps workflows with MLflow

---

# Technologies Used

- Databricks
- PySpark
- Delta Lake
- Unity Catalog
- MLflow
- Databricks SQL
- GraphFrames
- Python
- SQL
- Machine Learning

---

# Medallion Architecture

## Bronze Layer — Raw Ingestion
- Ingested raw Chicago crime CSV data
- Stored immutable raw Delta tables
- Preserved original schema and history

## Silver Layer — Data Processing
- Data cleaning and validation
- Null handling and type casting
- Feature engineering
- Temporal enrichment

## Gold Layer — Analytics
Created business-ready analytics tables for:
- Crime hotspots
- Seasonal crime trends
- Hourly activity patterns
- Arrest analysis
- Top crime categories
- Crime series detection

---

# Machine Learning Models

## 1. Crime Type Classifier
Predicts crime categories using historical incident patterns.

## 2. Arrest Likelihood Scorer
Predicts probability of arrest for incidents.

## 3. Crime Hotspot Predictor
Identifies high-risk districts and crime concentration zones.

### ML Features
- Feature engineering using PySpark
- Model tracking with MLflow
- Model Registry integration
- Experiment versioning

---

# Graph Analytics

Implemented GraphFrames-based crime series detection to identify:
- Connected incidents
- Repeated crime patterns
- Linked geographic activity
- Temporal crime clusters

---

# Dashboard & Analytics

Built interactive Databricks SQL dashboards including:
- Hourly Crime Activity Trends
- District Crime Hotspots
- Most Common Crime Types
- Crime Volume by Season
- Arrest Rate Analysis
- Crime Series Pattern Detection

---

# Key Engineering Concepts Demonstrated

- Lakehouse Architecture
- Distributed Data Processing
- Delta Table Optimization
- MLOps Pipelines
- Model Registry Management
- Graph Analytics
- SQL Warehousing
- Dashboard Engineering
- Feature Engineering
- Data Governance

---

# Repository Structure

```bash
├── notebooks/
│   ├── bronze_layer
│   ├── silver_layer
│   ├── gold_layer
│   ├── ml_models
│   ├── mlflow_registry
│   ├── graph_analytics
│   └── dashboards
│
├── architecture/
│   └── crime_platform_architecture.png
│
├── screenshots/
│   └── dashboard_images
│
├── sql/
│   └── dashboard_queries
│
└── README.md

# Future Improvements

- Real-time streaming ingestion using Structured Streaming
- Predictive policing simulations
- Geospatial hotspot visualization
- Automated model retraining pipelines
- Real-time alerting workflows
- Interactive semantic-layer dashboards
- Cloud deployment automation

---

# Author

**Vrushabh Anil Nikhade**  
Master’s Student — Biomedical Engineering  
Stevens Institute of Technology

---
