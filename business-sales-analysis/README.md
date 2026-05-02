# E-Commerce Sales Performance Analysis Dashboard

## Overview

This project analyzes transactional e-commerce sales data using Power BI to evaluate revenue performance, product contribution, and geographic distribution. The dashboard is designed to provide a clear, high-level view of business activity while supporting deeper exploration of key revenue drivers.

The analysis focuses on identifying patterns in customer purchasing behavior, understanding which products generate the most revenue, and examining how sales are distributed across different regions.

## Analytical Approach

The dataset consists of individual transaction records, which were aggregated to support meaningful analysis across time, product categories, and geographic locations.

Data preparation was performed using Power Query, where inconsistencies were addressed and data types were standardized to ensure accurate calculations.

The dashboard was structured around three core analytical dimensions:

* Time-based revenue trends
* Product-level performance
* Geographic revenue distribution

Each visual was selected to directly support one of these analytical goals.

## Data Source
The dataset used in this project is a publicly available e-commerce transaction dataset sourced from Kaggle. It contains historical sales records including product-level transaction details, customer identifiers, and geographic information.

## Dashboard Overview

![Dashboard Overview](images/dashboard_overview.png)

This dashboard provides a high-level summary of overall business performance. The total revenue metric highlights aggregate performance, while the monthly trend visual shows how revenue evolves over time. The distribution and product visuals allow for deeper breakdowns across geography and product categories.

The dashboard is designed to give decision-makers a quick understanding of performance and areas requiring further analysis.

## Revenue Distribution by Country

![Country Analysis](images/country_analysis.png)

This visualization shows that revenue is heavily concentrated in the United Kingdom, which accounts for the majority of total sales. Other countries contribute significantly smaller portions, indicating an uneven geographic distribution.

This suggests that the business is highly dependent on a single market, which may introduce risk. Expanding into other regions could improve revenue diversification and long-term stability.

## Top Products by Revenue

![Product Analysis](images/product_analysis.png)

This chart highlights the top-performing products based on total revenue. A small number of products generate a large share of overall sales, indicating a concentration of demand.

This pattern suggests that focusing on high-performing products, while identifying similar opportunities, could further increase revenue. It also highlights the importance of inventory and marketing alignment with top-selling items.

## Key Insights

* **Geographic Concentration**
  The United Kingdom accounts for approximately 85% of total revenue, indicating a heavy reliance on a single market.

* **Seasonal Trend**
  Revenue increases steadily throughout the year, with a noticeable peak in November. This suggests strong seasonal demand, likely tied to increased consumer activity during the holiday period.

* **Product Contribution**
  Revenue is not evenly distributed across products. A small number of high-performing products generate a significant portion of total revenue, with the leading product exceeding 1 million in revenue.

## Business Implications
- The heavy reliance on a single country suggests a need for geographic diversification to reduce business risk and improve long-term stability.
- Focusing on top-performing products can improve profitability, while also identifying similar or complementary products may expand revenue streams.
- Seasonal trends should be incorporated into business planning, particularly for inventory management, marketing campaigns, and staffing during peak periods.
- Expanding market presence in mid-tier countries could improve overall revenue distribution and reduce dependency on the primary market.

## Visualizations

* **Total Revenue (KPI Card)**
  Provides an overview of total business performance.

* **Monthly Revenue Trend**
  Displays how revenue evolves over time, highlighting trends and seasonality.

* **Revenue Distribution by Country (%)**
  Shows the proportional contribution of each country to total revenue.

* **Top Products by Revenue**
  Identifies the highest-performing products driving business results.

## Project Structure

```plaintext
business-sales-analysis/
│
├── data/
│   ├── raw/
│   │   └── raw_data.csv
│   │
│   └── processed/
│       ├── cleaned_data.xlsx
│       └── cleaned_data.csv
│
├── sql/
│   └── sales_analysis.sql
│
├── dashboard/
│   └── sales_dashboard.pbix
│
├── images/
│   ├── dashboard_overview.png
│   ├── product_analysis.png
│   └── country_analysis.png
│
├── docs/
│   └── project_summary.md
│
└── README.md
```

## Usage

1. Download the `.pbix` file from the `dashboard` folder.
2. Open the file using Power BI Desktop.
3. Interact with the visuals to explore trends, product performance, and geographic distribution.

## Author

Daisy Sharma
