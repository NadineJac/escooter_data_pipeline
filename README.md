![Python](https://img.shields.io/badge/Python-3.13.7-blue?logo=python&logoColor=white)
![OpenWeather API](https://img.shields.io/badge/API-OpenWeather-00A4D3?logo=openweather&logoColor=white)
![Web Scraping](https://img.shields.io/badge/Web%20Scraping-BeautifulSoup-green?logo=python&logoColor=white)
![Cloud](https://img.shields.io/badge/Cloud-[GoogleCloud]-blueviolet?logo=cloudflare&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

# Project Title: Predicting E-Scooter Availability through Automated Data Pipelines

## 🎯 Project Overview
Gans, a fictional fast-growing e-scooter company, aims to optimize scooter distribution across cities by anticipating where and when users will need scooters. While competitors like TIER and Bird emphasize eco-friendly marketing, Gans focuses on operational efficiency.  
This project builds an **automated cloud-based data pipeline** that collects and stores real-time contextual data (e.g. weather, city geography) to help Gans predict e-scooter movements and rebalance their fleet more efficiently.

## 📊 Dataset & Sources
- **Data Sources:**
  - Web scraping for city-related data (country, population, coordinates) from [Wikipedie]
  - [OpenWeather API](https://openweathermap.org/api) for real-time and forecasted weather data
- **Dataset Size & Key Features:**
  - [e.g. ~10,000 daily records across 5 cities]
  - Key features include: temperature, precipitation, wind speed, etc.
- **Data Collection Notes:**
  - Data is collected via automated scripts scheduled to run daily
  - Stored in [cloud storage/database name, e.g. AWS S3, Google BigQuery, PostgreSQL]
  - Data preprocessing includes cleaning, standardizing city identifiers, and converting timestamps to UTC

## 🚀 Key Findings & Results
- Weather patterns (especially rainfall and temperature drops) strongly correlate with reduced scooter usage.
- Morning commuter flow causes consistent scooter shortages in central areas.
- [Add 1–2 more insights, e.g. elevation impacts, tourist hotspots]
- [Model metrics or evaluation if applicable, e.g. initial correlation, accuracy]
- **Business impact:** Improved scooter redistribution planning and reduced manual relocation costs by [ ]%.

## 🛠️ Technologies Used
- **Languages:** Python (3.13.7)
- **Libraries:** pandas, requests, BeautifulSoup4, SQLAlchemy, 
- **Tools:** Jupyter Notebooks, MySQL, [Cloud provider name, e.g. AWS, GCP, Azure]

## 📁 Project Structure
```
├── data/ # Raw and processed datasets
├── notebooks/ # Exploratory notebooks and analysis
├── src/
│ ├── scraping/ # Web scraping scripts for city data
│ ├── weather/ # Weather API data collection scripts
│ ├── pipeline/ # ETL and automation scripts
│ └── utils/ # Helper functions and configurations
├── requirements.txt # Project dependencies
├── README.md # Project documentation
└── config.yaml # API keys and settings (excluded from repo)
```

## 📈 Visualisations
Include plots such as:
1. Daily scooter usage vs. rainfall intensity  
2. City heatmap showing high-demand vs. low-demand zones  
3. Hourly scooter flow patterns across weekdays  

*(Add images or link to notebook cells once generated)*

## 🔗 How to Use This Project
- **Main Notebook:** [Insert link to public Colab or Jupyter notebook]
- **Setup:**
    ```bash
    git clone [repository_url]
    cd [project_folder]
    pip install -r requirements.txt
    ```
    Run the pipeline:
    ```
    python src/pipeline/run_pipeline.py
    ```

Reproduce results: Use config.yaml to set your own API keys and city list.

🚀 Future Work

* Integrate real-time scooter GPS data for predictive modeling
* Add user behavior analytics to capture trip frequency and duration
* Deploy a dashboard for live monitoring of scooter availability
* Extend coverage to additional European cities

