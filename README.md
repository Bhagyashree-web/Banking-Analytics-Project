# 🏦 Banking Data Analytics Project

An **end-to-end data analytics project** for the **banking domain**, using **Python, MySQL, and Power BI**. The project focuses on customer and loan data analysis to derive actionable business insights.

---

## 📌 Objective

To analyze customer demographics, loan history, transactions, and marketing campaign effectiveness to:

- Understand customer behavior
- Optimize loan offerings
- Improve marketing strategies
- Monitor KPIs such as loan performance and customer demographics

---

## 🧰 Tech Stack

| Tool      | Purpose                              |
|-----------|--------------------------------------|
| **MySQL** | Data storage and querying             |
| **Python**| Data extraction, cleaning, analysis   |
| **Pandas**| Data manipulation and EDA             |
| **Power BI** | Data visualization and dashboarding|

---

## 🗂️ Project Structure

Banking_Analytics_Project/
│
├── database/
│ ├── 1_create_tables.sql # SQL schema
│ └── 2_insert_data.sql # Dummy data
│
├── python_scripts/
│ ├── 3_extract_data.py # Fetch data from MySQL
│ ├── 4_clean_analyze_data.py # Clean and analyze data
│ └── 5_export_to_excel.py # Export to Excel for Power BI
│
├── data/
│ └── final_exported_data.xlsx # Cleaned dataset for dashboard
│
├── power_bi/
│ └── 6_banking_dashboard.pbix # Power BI Dashboard file
│
└── README.md
