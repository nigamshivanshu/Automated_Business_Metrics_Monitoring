
# Automated Business Metrics Monitoring System

## 📌 Overview
This project implements an **end-to-end, automated analytics system** designed to monitor core business KPIs for a multi-location, multi-platform organization.

The system replaces manual, spreadsheet-based reporting with a **reproducible, SQL + Python-driven pipeline** that ensures:
- Data accuracy
- KPI consistency
- Automation readiness
- Business trust

---

## 🎯 Business Problem
Business leadership requires **daily and weekly KPI monitoring** to track performance across locations and platforms.  
However, manual reporting processes often lead to:
- Inconsistent KPI definitions
- Delayed insights
- Data quality issues
- Reduced confidence in reported numbers

This project addresses these challenges by building a **centralized analytics pipeline** with built-in validation and automation.

---

## 📊 KPIs Covered
- Revenue  
- Orders  
- Average Order Value (AOV)  
- Week-over-Week (WoW) Growth  
- Month-over-Month (MoM) Growth  
- Platform-level metrics  
- Location-level metrics  
- Data quality and anomaly flags  

---

## 🏗️ Architecture Overview

```
Raw Data (SQLite)
      ↓
SQL Extraction & Aggregation
      ↓
Python Cleaning & Validation
      ↓
EDA & KPI Computation (Notebooks)
      ↓
Automated KPI Outputs (CSV)
      ↓
Logs & Audit Trail
```

---

## 🗂️ Project Structure

```
Automated_Business_Metrics_Monitoring/
├── data/
│   ├── business_metrics.db
│   ├── base_orders_cleaned.csv
│   ├── daily_kpis.csv
│   ├── weekly_kpis.csv
│   ├── monthly_kpis.csv
│   └── pipeline_logs.txt
├── sql/
│   ├── base_orders_extract.sql
│   ├── daily_kpi_aggregation.sql
│   └── weekly_kpi_aggregation.sql
├── scripts/
│   └── run_kpi_pipeline.py
├── notebooks/
│   ├── 00_data_pipeline_and_validation.ipynb
│   ├── 01_eda_exploration.ipynb
│   └── 02_kpi_computation.ipynb
└── README.md
```

---

## 🔧 Tools & Technologies
- Python (Pandas, NumPy)
- SQL (SQLite)
- Jupyter Notebooks
- Matplotlib / Seaborn
- Google Colab
- Google Drive (persistent storage)

---

## ⚙️ How to Run the Project

1. Mount Google Drive in Colab  
2. Run `00_data_pipeline_and_validation.ipynb`  
3. Run `01_eda_exploration.ipynb`  
4. Run `02_kpi_computation.ipynb`  
5. Execute the automation script:

```bash
python scripts/run_kpi_pipeline.py
```

---

## ✅ Key Highlights
- Explicit data validation and anomaly detection  
- Clear KPI definitions with edge-case handling  
- Separation of concerns (SQL, Python, analysis)  
- Automation-ready design  
- Recruiter- and interview-friendly structure  

---

## 🚀 Outcome
The system produces **trusted, repeatable, and business-ready KPIs** that can be refreshed daily or weekly with minimal manual effort.

---

## 🎯 Recruiter Summary
Built an end-to-end analytics pipeline using SQL and Python to automate KPI reporting.  
Implemented data validation, anomaly detection, and reproducible metric computation across platforms and locations, replacing manual reporting with a scalable, trust-driven system.
