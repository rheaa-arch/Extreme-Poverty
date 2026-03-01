# Project Overview
   
This project analyzes Singapore public housing rental data to identify rental trends, price differences across flat types and towns, and areas of price stability or volatility. 
The objective is to provide decision-ready insights for managers to understand market movements and potential affordability risks.

# Key Analytical Questions
  1. How have **average monthly rents changed over time**?
  2. How does rent differ by **flat type**?
  3. Which **towns** have the highest and lowest rental prices?
  4. Where are rental prices **stable vs volatile**?
  5. Are there signs of **uneven affordability pressure** across locations?

# Key Metrics & KPIs
  - Average Monthly Rent
  - Maximum Monthly Rent
  - Minimum Monthly Rent
  - Rent Variance (Volatility Indicator)
  - Number of Towns Covered
  - Average Rent by Flat Type
  - Average Rent by Year & Month

# Analytical Approach
  - Aggregated rental data by time (year & month) to identify trends.
  - Grouped data by flat type to compare pricing tiers.
  - Analyzed **town-level rent distribution** using average, minimum, maximum, and variance.
  - Used variance to distinguish stable vs volatile rental markets.
  - Prepared summarized outputs in SQL, then visualized insights in Power BI.

# Key Insights
  - Average monthly rents show a consistent upward trend since 2021.
  - Larger flat types (Executive, 5-room) command significantly higher rents.
  - Rental prices vary widely by town, indicating uneven market conditions.
  - Certain towns exhibit higher rent volatility, suggesting demand concentration or supply constraints.

# Tools
  - PostgreSQL - data aggregation and analysis
  - Power BI - visualization and dashboard design
  - Excel  - initial data inspection
  - Data Source: https://data.gov.sg/datasets/d_c9f57187485a850908655db0e8cfe651/view

# Limitations
  - Rental counts do not represent total housing supply, only approved rentals.
  - Inflation, income levels, and household size were not included.
  - External factors such as policy changes or economic shocks were not modeled.
  - Analysis focuses on historical trends, not predictive forecasting.

# Future Improvements
  - Add month-over-month and year-over-year growth rates.
  - Segment analysis by flat size + town combined.
  - Introduce forecasting models for rent trends.
  - Incorporate income or affordability ratios.
  - Build a risk index combining rent level and volatility.
