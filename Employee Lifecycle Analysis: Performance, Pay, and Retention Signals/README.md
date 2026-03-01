# Project Overview
    
This project analyzes a messy employee dataset to uncover insights related to workforce distribution, performance, compensation alignment, remote work impact, and potential retention risks.
    
The goal is to transform raw, inconsistent HR data into actionable business insights that support managerial decision-making in workforce planning and talent management.
    
The project emphasizes data cleaning, metric derivation (tenure), and analytical reasoning, rather than surface-level reporting.

# Key Analytical Questions
  1. What is the current headcount distribution by department and region?
  2. Which departments have the highest and lowest average performance scores?
  3. Is salary aligned with employee performance, or are there signs of compensation misalignment?
  4. Does remote work impact employee performance outcomes?
  5. Which departments show potential retention risks based on tenure and performance patterns?

# Key Metrics & KPIs
**Workforce & Structure**
  - Total Headcount
  - Headcount by Department
  - Headcount by Region
  - Employee Status Distribution (Active / Inactive / Pending)
    
**Performance**
  - Average Performance Score (Company-wide)
  - Average Performance by Department
  - Performance by Region
  - Performance by Work Arrangement (Remote vs On-site)
    
**Compensation**
  - Average Salary
  - Average Salary by Performance Score
  - Salary Trends by Department
    
**Tenure**
  - Average Tenure (Years)
  - Tenure Groups (<1, 1–3, 3–5, 5+ years)
  - Performance by Tenure Group
    
**Data Quality**
  - Missing Value Percentage

# Analytical Approach
**Data Cleaning & Validation**
  - Standardized column names and formats
  - Handled inconsistent email and phone number formats
  - Converted performance scores and salary to numeric values
  - Identified and quantified missing values
**Feature Engineering**
  - Derived **tenure (years)** from join dates
  - Grouped tenure into lifecycle stages
  - Converted categorical indicators (remote work, status)
**Exploratory Analysis**
  - Used pivot tables to analyze performance, salary, tenure, and headcount
  - Compared averages across departments and regions
  - Evaluated relationships between performance and compensation
**Insight Synthesis**
  - Translated numerical outputs into business-relevant interpretations
  - Avoided overgeneralization by acknowledging aggregation limits

# Key Insights
  - Workforce headcount is **evenly distributed** across departments, with DevOps and Sales being the largest teams.
  - Performance scores across departments are **relatively close**, suggesting standardized evaluation practices.
  - Salary does **not increase linearly with performance**, indicating that compensation may be influenced more by tenure or role seniority than output alone.
- Remote employees show **comparable performance** to on-site employees, suggesting remote work does not negatively affect productivity.
  - Certain departments exhibit **longer tenure among lower performers**, signaling potential performance filtering or incentive misalignment issues.
  - High missing value rates (23%) may affect the precision of compensation and performance analyses.

# Tools
**Microsoft Excel**
  - Data cleaning
  - Pivot tables
  - Calculated fields
  - Dashboard design
**Analytical Techniques**
  - Descriptive statistics
  - Aggregation & segmentation
  - Tenure-based lifecycle analysis
**Data Source**: https://www.kaggle.com/datasets/desolution01/messy-employee-dataset

# Limitations
  - Analysis is based on **aggregated averages**, which may hide individual-level compensation or performance outliers.
  - No resignation or turnover data is available, so retention risk is inferred indirectly.
  - High proportion of missing values may reduce confidence in certain conclusions.
  - Performance scores are assumed to be standardized across departments.

# Future Improvements
  - Flag individual employees with **potential compensation or retention risks** using rule-based logic.
  - Rebuild the analysis using **Python (pandas)** for reproducibility and scalability.
  - Add **statistical validation** (correlation or distribution analysis) between salary and performance.
  - Include time-based analysis if historical data becomes available.
  - Enhance dashboard interactivity using Power BI or Tableau.
