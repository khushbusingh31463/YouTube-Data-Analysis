# Data Engineering YouTube Analysis Project on AWS


## Project Overview
This project develops a scalable data engineering pipeline on AWS to analyze YouTube video trends. It involves secure management, streamlined processing, and analysis of structured and semi-structured data based on video categories and trending metrics. The system leverages AWS services to efficiently handle large volumes of data.

## Key Features
- **Data Ingestion:** Automated mechanisms to ingest data from various sources into AWS.
- **ETL Pipeline:** Transformation of raw data into a structured format for analysis.
- **Data Lake:** Centralized repository for storage of structured and semi-structured data.
- **Scalability:** Dynamically scales with increasing data sizes.
- **Cloud-Based Infrastructure:** Utilizes AWS for handling large-scale data processing.
- **Data Visualization:** Amazon QuickSight is employed to create interactive dashboards and reports for analytics.

## AWS Services Used
## AWS Services Used

### AWS S3
- **Description**: Used for storing raw, intermediate, and processed data.
- **Purpose**: Ensures scalable, durable, and secure storage of video statistics data.

### AWS Glue
- **Description**: Manages data cataloging and performs ETL operations.
- **Purpose**: Simplifies data preparation and loading, making it readily analyzable.

### AWS Lambda
- **Description**: Automates the ETL workflow by reacting to S3 events.
- **Purpose**: Enhances real-time processing capabilities without managing servers.

### Amazon Athena
- **Description**: SQL-based service used to query data directly in S3.
- **Purpose**: Facilitates quick and cost-effective data analysis.

### AWS IAM
- **Description**: Manages secure access to AWS services.
- **Purpose**: Controls access and permissions for the safe operation of other services.


## Dataset Description
The dataset from Kaggle includes daily statistics on popular YouTube videos over several months, featuring data such as video title, channel title, publication time, tags, views, likes, dislikes, descriptions, and comment counts, categorized by unique region-specific category_ids.

https://www.kaggle.com/datasets/datasnaek/youtube-new

## Architecture Diagram

![Data Architecture](/AWS_Data_Architecture.png)

## Data Flow and Processing Steps

The data processing workflow can be visualized in steps:

### Data Ingestion
- **Process**: Data (both CSVs and JSONs) is uploaded to S3 buckets manually or via automated scripts.

### Data Transformation
- **Process**: AWS Glue is used to transform raw data into a more analyzable format. ETL jobs are set up to clean, merge, and transform data, making it ready for analysis.

### Data Loading
- **Process**: Transformed data is loaded into S3 buckets again, which now contains data optimized for querying and analysis.

### Data Querying
- **Process**: SQL queries via Amazon Athena are used to analyze the processed data. These queries can calculate statistics like the most viewed, liked, or commented videos.

## Replication Steps

To replicate or implement this pipeline, one should follow these steps:

### Set Up AWS Environment
- **Tasks**:
  - Create the necessary S3 buckets.
  - Set up the AWS Glue Data Catalog with appropriate databases and tables.
  - Write and test ETL scripts in AWS Glue.

### Deploy and Test Lambda Functions
- **Tasks**:
  - Write Lambda functions that trigger on S3 events.
  - Ensure Lambda has the necessary permissions via IAM to interact with Glue and S3.

### Execute Athena Queries
- **Tasks**:
  - Write SQL queries to run in Athena.
  - Test these queries to ensure they return the expected results.

### Monitoring and Optimization
- **Tasks**:
  - Monitor the performance of the ETL jobs and Lambda functions.
  - Optimize the cost and performance of S3, Glue, Lambda, and Athena as needed.

## Advanced Analytics and Visualization

Once the basic pipeline is operational:

- **Tools and Tasks**:
  - Leverage AWS QuickSight or integrate with external BI tools like Tableau or PowerBI to visualize and create dashboards from the Athena query results.

