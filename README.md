# Scalable YouTube Trends Data Pipeline on AWS

## Project Overview
This project implements a scalable data engineering pipeline designed to analyze trending YouTube videos. It focuses on secure data management, streamlined processing, and analysis of structured and semi-structured data based on video categories and trending metrics. By leveraging AWS services, the system efficiently handles large volumes of data while ensuring scalability.

## Key Features
- **Data Ingestion**: Automates the collection of data from multiple sources into AWS.
- **ETL Pipeline**: Converts raw data into a structured format for easy analysis.
- **Data Lake**: Provides centralized storage for structured and semi-structured data.
- **Scalability**: Dynamically adapts to growing data volumes.
- **Cloud-Based Infrastructure**: Leverages AWS for robust data processing at scale.
- **Data Visualization**: Utilizes Amazon QuickSight to generate interactive dashboards and reports.

## AWS Services Used
### AWS S3
- **Description**: Storage for raw, intermediate, and processed data.
- **Purpose**: Offers scalable, durable, and secure storage for video statistics data.

### AWS Glue
- **Description**: Facilitates data cataloging and performs ETL tasks.
- **Purpose**: Simplifies data preparation and loading for analysis.

### AWS Lambda
- **Description**: Automates the ETL workflow by triggering processes based on S3 events.
- **Purpose**: Enables real-time processing without managing underlying servers.

### Amazon Athena
- **Description**: SQL-based query service for data stored in S3.
- **Purpose**: Provides fast and cost-efficient data analysis.

### AWS IAM
- **Description**: Manages access control and permissions for AWS services.
- **Purpose**: Ensures secure operation and resource access.
