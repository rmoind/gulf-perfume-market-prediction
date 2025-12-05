# Scent of Success: Predicting Perfume Trends in the Gulf

![Project Status](https://img.shields.io/badge/Status-Completed-success)
![Python](https://img.shields.io/badge/Python-3.8+-blue)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange)
![Tableau](https://img.shields.io/badge/Tableau-Visualization-red)
![Canva](https://img.shields.io/badge/Canva-Presentation-blue?logo=canva style=for-the-badge)

## Project Overview
The Gulf cosmetic market is shifting rapidly from synthetic western brands to traditional "Natural" products. 
However, the market is crowded. This project utilizes a **Hybrid Data Engineering & Machine Learning** approach to determine if "Natural" is the true driver of sales, or if specific regional ingredients (like Oud) are the key to customer satisfaction.

**Goal:** Predict "Market Hits" by analyzing 60,000+ perfumes, search trends, and social sentiment.

## Tech Stack (Hybrid Path)
* **Data Engineering:** MySQL (Warehousing), SQLAlchemy (Python-SQL Connector).
* **Analysis:** SQL Views, Window Functions, Aggregations.
* **Machine Learning:** Python (Scikit-Learn Random Forest Classifier).
* **Visualization:** Tableau & Matplotlib.

## Data Architecture
I engineered a relational database merging three disparate sources:
1.  **Fragrance Metadata:** Fragrance attributes and longevity stats.
2.  **Google Trends:** Time-series search volume (2018-2025).
3.  **Social Surveys:** Customer demographics and purchase intent.

*(Insert your ERD Screenshot here in the images folder)*

### Key Findings
### 1. The "Oud" Superiority
While "Natural" perfumes have high volume, **Oud perfumes** hold the highest statistically significant rating (**4.17/5.0**) compared to the general market (**4.0/5.0**). Oud is not just a trend; it is the premium standard.

### 2. Market Winners
* **Volume Leader:** Al Haramain (Affordable segment).
* **Quality Leader:** Xerjoff (Luxury segment, rated 4.6/5.0).

### 3. ML Prediction (Random Forest)
The model predicted "Market Hits" with **71% Accuracy**.
* **Top Predictor:** Social Purchase Intent (Score: 0.68).
* **Top Product Feature:** `Is_Oud` (Score: 0.21) — proved to be 2x more important than `Is_Natural`.

## Future Work
* **Regional Dashboard:** Tracking the "East vs. West" battle for market share using the `Regional Market Monitor` prototype.

## How to Run
1.  Clone the repo.
2.  Install requirements: `pip install -r requirements.txt`.
3.  Run the SQL script `sql/schema_setup.sql` to build the database.
4.  Run the Jupyter Notebook `notebooks/perfume_market_prediction.ipynb` to train the model.

**[View the Project Presentation on Canva]**
[text](https://www.canva.com/design/DAG6nFqBA6s/S0qP0QnDAQjvOylF8wVMzQ/edit?utm_content=DAG6nFqBA6s&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

*Project by Rahala MOINDZE - Ironhack Data Analytics Bootcamp 2025*
