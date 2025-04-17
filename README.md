# AWS Data Warehouse Pipeline

This repository documents the end-to-end setup of a Data Warehouse (DWH) pipeline on AWS using limited infrastructure and support. The goal was to migrate data from an on-premise MS SQL Server to AWS and build a scalable and efficient reporting system using Amazon Redshift and Power BI.

---

## 🛠️ Architecture Overview

![Aws-DWH-Architecture](https://github.com/user-attachments/assets/50f87498-c4f3-40c5-a2fa-fdc280708333)

---

## 🚀 Components Used

- **MS SQL Server (On-Prem)**: Source of truth for transactional data.
- **AWS S3**: Used as a staging area for both raw (CSV) and transformed (Parquet) files.
- **AWS Glue**: PySpark job to transform CSV data into optimized Parquet format.
- **Amazon Redshift**: Data warehouse for query performance and scalability.
- **Power BI**: Visualization layer for business insights.

---

## 🔁 Data Flow Process

1. **One-Time Full Load**: Exported base data from SQL Server in batches as CSV files.
2. **S3 Upload**: CSV files uploaded to an S3 bucket.
3. **Glue Job**: PySpark ETL job transformed CSVs to Parquet format.
4. **S3 Parquet Storage**: Optimized files stored back in S3.
5. **Redshift Load**: Parquet files ingested into Redshift using the `COPY` command.
6. **Power BI Dashboards**: Connected to Redshift for real-time reporting.

---

## 👨‍💼 Role & Contribution

- Led the entire initiative from scratch.
- Designed architecture and data flow considering cost, scalability, and performance.
- Automated Glue ETL jobs with scheduling and failure alerts.
- Tuned Redshift performance using distribution/sort keys and WLM queues.
- Integrated Power BI with Redshift for dynamic dashboards.

---

