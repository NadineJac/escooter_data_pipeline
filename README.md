![Python](https://img.shields.io/badge/Python-3.13.7-blue?logo=python&logoColor=white)
![OpenWeather API](https://img.shields.io/badge/API-OpenWeather-00A4D3?logo=openweather&logoColor=white)
![Web Scraping](https://img.shields.io/badge/Web%20Scraping-BeautifulSoup-green?logo=python&logoColor=white)
![Cloud](https://img.shields.io/badge/Cloud-GCP-blueviolet?logo=cloudflare&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

# Automated Data Pipeline to retrieve whether forecats and incoming flights

## 🎯 Project Overview
Gans, a fictional fast-growing e-scooter company, aims to optimize scooter distribution across cities by anticipating where and when users will need scooters. While competitors like TIER and Bird emphasize eco-friendly marketing, Gans focuses on operational efficiency.  
This project builds an **automated cloud-based data pipeline** that collects and stores real-time contextual data (e.g. weather, incoming flights) to help Gans predict e-scooter movements and rebalance their fleet more efficiently.

## 📊 Dataset & Sources
- **Data Sources:**
  - Web scraping for city-related data (country, population, coordinates) from [Wikipedia](https://en.wikipedia.org/)
  - [OpenWeather API](https://openweathermap.org/api) for forecasted weather data
  - [AeroDataBox API](https://aerodatabox.com/) for scheduled flights
- **Dataset Size & Key Features:**
  - ~1,000 daily records across 3 cities
  - Key features include: temperature, precipitation, wind speed, etc.
- **Data Collection Notes:**
  - Data is collected via automated scripts scheduled to run daily
  - Stored in SQL Cloud (Google Cloud Platform, GCP)
  - Data transformation: converting coordinates to decimal and timestamps to local time (CET)

## 🚀 Key Findings & Results
- Read my Meduium post for a comprehensive description of the project and my main takeaways [LINK]

## 🛠️ Technologies Used
- **Languages:** Python (3.13.7)
- **Libraries:** pandas, requests, BeautifulSoup4, SQLAlchemy, 
- **Tools:** Jupyter Notebooks, MySQL, GCP

## 📁 Project Structure
```
├── notebooks/ # Notebooks for data collection
│ ├── local/ # Locally
│ │ └── keys.env # API keys, local SQL connection (excluded from repo)
│ ├── GCP/ # in GCP
│ │ └── keys.py # API keys, cloud SQL connection (excluded from repo)
├── requirements.txt # Project dependencies
├── README.md # Project documentation
└── LICENSE # MIT License
```

## 🔗 How to Use This Project
- **Setup:**
    ```bash
    git clone [repository_url]
    cd [project_folder]
    pip install -r requirements.txt
    ```
    Set up SQL: in your desired SQL instance run [create_database...](sql/create_database_data_pipeline_example.sql)
    
    Get data locally: run notebooks in[notebooks/local](notebooks/local) in ascending order OR
    Get data in the cloud: create cloud functions using the code in [notebooks/cloud](notebooks/cloud)


Reproduce results: Use key.env to set your own API keys and city list.

🚀 Future Work
* Add automated alerts when heavy rain is forecasted or when the number of flights arriving spikes
* Extend coverage to additional European cities