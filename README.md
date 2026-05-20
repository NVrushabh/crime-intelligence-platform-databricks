# Chicago Crime Intelligence Platform

An end-to-end crime analytics and intelligence platform built on Databricks using PySpark, Delta Lake, MLflow, Graph Analytics, and Databricks SQL Dashboards.

This project demonstrates a modern lakehouse architecture for ingesting, transforming, analyzing, and visualizing large-scale crime data while integrating machine learning and graph-based crime pattern detection.

---

# Project Architecture

![Architecture Diagram](Architecture%20Diagram.png)

---

# Project Objectives

- Build scalable crime analytics pipelines using Databricks
- Implement Medallion Architecture (Bronze → Silver → Gold)
- Develop machine learning models for crime intelligence
- Detect linked crime patterns using graph analytics
- Create executive-level analytical dashboards
- Demonstrate MLOps workflows using MLflow

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

## Bronze Layer — Raw Data Ingestion
- Ingested raw Chicago crime CSV dataset
- Stored immutable raw Delta tables
- Preserved original schema and source history

## Silver Layer — Data Processing & Feature Engineering
- Data cleaning and preprocessing
- Null handling and schema standardization
- Feature engineering for analytics and ML
- Temporal and categorical transformations

## Gold Layer — Business Analytics
Created analytics-ready Delta tables for:
- Crime hotspots
- Seasonal crime trends
- Hourly crime activity
- Arrest analysis
- Top crime categories
- Crime series pattern detection

---

# Machine Learning Models

## 1. Crime Type Classifier
Predicts crime categories using historical incident patterns and contextual features.

## 2. Arrest Likelihood Scorer
Predicts the probability of arrest for crime incidents.

## 3. Crime Hotspot Predictor
Identifies high-risk districts and recurring hotspot zones.

### ML Engineering Features
- Feature engineering using PySpark
- MLflow experiment tracking
- MLflow Model Registry integration
- Versioned model management
- Distributed model training

---

# Graph Analytics

Implemented GraphFrames-based crime series detection to identify:
- Connected incidents
- Repeated crime patterns
- Linked geographic activity
- Temporal crime clusters

Graph analytics enabled detection of organized and recurring crime activity across districts.

---

# Dashboard & Analytics

Built Databricks SQL dashboards including:
- Hourly Crime Activity Trends
- District Crime Hotspots
- Most Common Crime Types
- Crime Volume by Season
- Arrest Rate Analysis
- Crime Series Pattern Detection

The dashboard layer provides executive-level operational insights for crime intelligence workflows.

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
- Machine Learning Operations

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
```

---

# Dashboard Preview

Add dashboard screenshots here after exporting visualizations from Databricks SQL.

---

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

**Vrushabh Nikhade**  
Master’s Student — Biomedical Engineering  
Stevens Institute of Technology

---
