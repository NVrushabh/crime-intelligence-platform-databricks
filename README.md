# Chicago Crime Intelligence Platform

An end-to-end crime analytics and intelligence platform built on Databricks using PySpark, Delta Lake, MLflow, Graph Analytics, and Databricks SQL Dashboards.

This project demonstrates a modern lakehouse architecture for ingesting, transforming, analyzing, and visualizing large-scale crime data while integrating machine learning and graph-based crime pattern detection.

---

# Project Architecture

[![Architecture Diagram](https://github.com/NVrushabh/crime-intelligence-platform-databricks/raw/main/architecture/Architecture%20Diagram.png)](https://github.com/NVrushabh/crime-intelligence-platform-databricks/blob/main/architecture/Architecture%20Diagram.png)

---

# Dataset

**Chicago Crime Dataset — City of Chicago Open Data Portal**
- Source: [data.cityofchicago.org](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2)
- Records: 1,286,734 crime incidents (2021–2026)
- Format: CSV
- Access: Free, no sign-up required
- Fields: Crime type, location, date, arrest status, district, coordinates

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

![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=flat&logo=databricks&logoColor=white)
![PySpark](https://img.shields.io/badge/PySpark-E25A1C?style=flat&logo=apachespark&logoColor=white)
![Delta Lake](https://img.shields.io/badge/Delta%20Lake-00ADD8?style=flat)
![MLflow](https://img.shields.io/badge/MLflow-0194E2?style=flat&logo=mlflow&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)

- Databricks (Serverless + Unity Catalog)
- PySpark & Spark SQL
- Delta Lake & Medallion Architecture
- MLflow (Experiment Tracking + Model Registry)
- GraphFrames / NetworkX
- Databricks SQL Dashboards
- Python

---

# Setup Instructions

### Prerequisites
- Databricks account (Free Community Edition works)
- Chicago Crime Dataset CSV downloaded from link above

### Steps

**1. Create Unity Catalog Volume**
```
Catalog: workspace
Schema: default
Volume name: crime_data
```

**2. Upload Dataset**
```
Upload CSV to: /Volumes/workspace/default/crime_data/
```

**3. Run Notebooks in Order**
```
01_bronze_ingest      → raw ingestion
02_silver_clean       → cleaning + feature engineering
03_gold_aggregates    → analytics queries
04_ml_models          → train 3 ML models
05_mlflow_registry    → register models
06_graph_analytics    → crime series detection
07_dashboard          → SQL dashboard
```

---

# Medallion Architecture

## Bronze Layer — Raw Data Ingestion
- Ingested 1,286,734 raw Chicago crime records from CSV
- Renamed columns to remove spaces (Delta Lake requirement)
- Stored as immutable raw Delta table in Unity Catalog

## Silver Layer — Data Processing & Feature Engineering
- Converted Date from string to timestamp
- Dropped redundant Location column
- Handled 17,244 null location records (1.3% of data)
- Engineered 6 new features: Hour, Day_Of_Week, Month, Season, Is_Weekend, Is_Night
- Final clean dataset: **1,269,490 records**

## Gold Layer — Business Analytics
Created 6 analytics-ready Delta tables:
- `gold_top_crimes` — top crime types by volume and arrest rate
- `gold_crimes_by_hour` — hourly crime activity patterns
- `gold_crimes_by_district` — district-level crime and arrest rates
- `gold_crimes_by_season` — seasonal and weekend crime trends
- `gold_crime_series` — detected crime series patterns (773 patterns)
- `gold_crime_type_connections` — crime type connection network

---

# Key Findings from Data

- **THEFT** is the #1 crime — 282K incidents but only **6% arrest rate**
- **Midnight** is the most dangerous hour — 91,041 crimes
- **District 8** has the highest crime volume — 81,284 incidents
- **Weapons Violations** have the highest arrest rate — **63.6%**
- **Spring weekdays** have the most crimes — 237,513 incidents
- **773 crime series patterns** detected via graph analytics
- **001XX N State St** — 2,236 theft connections (Chicago's top theft hotspot)

---

# Machine Learning Models

| Model | Algorithm | Metric | Score |
|---|---|---|---|
| Arrest Likelihood Scorer | Logistic Regression | AUC | 0.69 |
| Crime Type Classifier | Random Forest (50 trees) | Accuracy | 31.4% |
| Crime Hotspot Predictor | Logistic Regression | AUC | 0.51 |

### Notes on Model Performance
- **Arrest Scorer (0.69 AUC):** Meaningful prediction — significantly better than random (0.5)
- **Crime Classifier (31.4%):** 10x better than random baseline across 31 crime categories. Production improvement would require weather and event data integration
- **Hotspot Predictor (0.51 AUC):** Time-based features alone insufficient for hotspot prediction — location history and socioeconomic data needed

### ML Engineering Features
- Feature engineering using PySpark Pipelines
- MLflow experiment tracking across all runs
- MLflow Model Registry — 3 versioned models registered
- Distributed model training on Spark MLlib

---

# Graph Analytics

Implemented crime series detection using NetworkX graph analysis to identify:
- Connected crime incidents on same block within 7-day windows
- Repeated crime patterns by location and type
- Linked geographic activity clusters
- Temporal crime series (potential serial perpetrator activity)

**773 crime series patterns detected** across 50,000 sampled 2023 crime records.

[![Detected Crime Series Patterns](https://github.com/NVrushabh/crime-intelligence-platform-databricks/raw/main/screenshots/Detected%20Crime%20Series%20Patterns.png)](https://github.com/NVrushabh/crime-intelligence-platform-databricks/blob/main/screenshots/Detected%20Crime%20Series%20Patterns.png)

---

# Dashboard & Analytics

[![Crime Intelligence Dashboard](https://github.com/NVrushabh/crime-intelligence-platform-databricks/raw/main/screenshots/dashboard.png)](https://github.com/NVrushabh/crime-intelligence-platform-databricks/blob/main/screenshots/dashboard.png)

Built Databricks SQL dashboards including:
- Hourly Crime Activity Trends
- District Crime Hotspots
- Most Common Crime Types with Arrest Rates
- Crime Volume by Season and Weekend
- Arrest Rate Analysis by Crime Type
- Crime Series Pattern Detection

---

# Key Engineering Concepts Demonstrated

- Lakehouse Architecture (Medallion Bronze/Silver/Gold)
- Distributed Data Processing at Scale (1.26M+ records)
- Delta Lake & Unity Catalog
- MLOps Pipelines with MLflow
- Model Registry & Versioned Model Management
- Graph Analytics for Pattern Detection
- Spark SQL Warehousing
- Feature Engineering with PySpark Pipelines
- Data Governance with Unity Catalog

---

# Repository Structure

```
├── Notebooks/
│   ├── 01_bronze_ingest
│   ├── 02_silver_clean
│   ├── 03_gold_aggregates
│   ├── 04_ml_models
│   ├── 05_mlflow_registry
│   ├── 06_graph_analytics
│   └── 07_databricks_sql_dashboard
│
├── architecture/
│   └── Architecture Diagram.png
│
├── screenshots/
│   ├── dashboard.png
│   └── Detected Crime Series Patterns.png
│
├── sql/
│   └── dashboard_queries.sql
│
└── README.md
```

---

# Future Improvements

- Real-time streaming ingestion using Databricks Auto Loader + Structured Streaming
- Hyperparameter tuning via CrossValidator on larger compute clusters
- Geospatial hotspot visualization with Kepler.gl or Folium
- Automated model retraining pipelines using Databricks Jobs
- Real-time alerting workflows for high-risk predictions
- Weather and event data integration for improved hotspot prediction
- Cloud deployment automation with Terraform

---

# Author

**Vrushabh Anil Nikhade**
Master's Student — Biomedical Engineering
Stevens Institute of Technology

[LinkedIn](https://www.linkedin.com/in/nvrushabh) | [GitHub](https://github.com/NVrushabh)
