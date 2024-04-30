# Uncovering Logistics Opportunities in the EU

## Project Objective
The objective of this project is to find cost-saving opportunities by leveraging supply chain inefficiencies. Through comprehensive analysis of logistics indexes and costs using SQL queries, the project aims to identify areas where operations can be streamlined. The goal is to make improvements that enhance efficiency and reduce expenses.

## Job Description
### PlanetArt - Logistics Data Analyst
PlanetArt is an e-commerce company, specializing in high-quality personalized products. The Logistics Data Analyst role focuses on using data-driven insights to drive business decisions, reduce costs, and improve operational efficiencies. The ideal candidate will have a strong background in analyzing shipping options, managing freight costs, and developing automation for freight cost reporting. The responsibilities also include developing tools for monitoring worldwide shipping method accuracy and designing reports to highlight cost-saving opportunities.

This project is directly relevant to the job role at PlanetArt, as it involves analyzing logistics data to drive business decision and reduce cost. 

## Data
The data for this project was sourced from multiple APIs, web scraping, and public datasets: 

- **OpenAI API**: Used for accessing completion APIs to retrieve knowledge base answers, specifically querying the capital city of each EU country and their corresponding UN/LOCODE.
- **Freightos API**: Used to estimate air freight rates for a 0.1 CBM box from LAX to the capital cities of all EU countries, excluding Cyprus.
- **Web Scraping**: Scraped a list of EU countries and their GDP from 2 different URLs.
- **LPI datasets**: Downloaded from lpi.worldbank.org 

## Notebooks
- [API ETL Notebook](notebooks/API_ETL.ipynb): Collect data from APIs and write data to the SQL database.
- [API SQL Analysis Notebook](notebooks/API_SQL_Analysis.ipynb): Connect to the SQL database and execute two specific SQL queries.
- [Web Scrape ETL Notebook](notebooks/Web_Scrape_ETL.ipynb): Extract data through HTTPS requests and parsing it using web scraping techniques.
- [Web Scrape SQL Analysis Notebook](notebooks/Web_Scrape_SQL_Analysis.ipynb): Connect to the SQL database and execute two specific SQL queries.

**All CSV files used across the four Jupyter notebooks are organized within the `csv` folder of this repository.**
- To access these CSV files, navigate to the `csv` folder located at:
- [CSV Files Directory](notebooks/csv)

## Future Improvements
- **Integrate with Top Shipping Carriers API**: Expand the data retrieval process by integrating APIs from top shipping carriers such as USPS, UPS, FedEx, and DHL.
- **Extend Data Coverage to Additional Countries**: Expand the data beyond the EU countries. 
