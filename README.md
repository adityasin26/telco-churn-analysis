\# Telco Customer Churn Analysis



\## Problem

Telecom companies lose customers every month, and acquiring a new customer costs more than keeping one. This project looks at which customer characteristics are linked to churn, so a customer success team knows where to focus retention efforts.



\## Data

\- \*\*Source:\*\* \[Telco Customer Churn dataset (Kaggle)](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

\- \*\*Size:\*\* 7,043 customers, 21 columns

\- \*\*Target:\*\* `Churn` (Yes/No)



\## Tools

\- \*\*Python\*\* (Pandas, Matplotlib, Seaborn): exploration and cleaning

\- \*\*SQL\*\* (MySQL): reproducing key metrics in a database

\- \*\*Power BI:\*\* interactive dashboard

\- \*\*Excel:\*\* planned for summary reporting



\## Data Cleaning

\- `TotalCharges` was stored as text, with blank values for 11 new customers (tenure = 0).

\- Converted to a number, and filled the blanks with 0, since these customers had not yet been billed.

\- The original CSV is unchanged. All cleaning happens in code, views, or Power BI.



\## Key Findings

Overall, \*\*26.5%\*\* of customers churned (1,869 of 7,043).



1\. \*\*Contract type is the strongest driver.\*\* Month-to-month customers churn at 42.7%, compared with 11.3% for one-year and 2.8% for two-year contracts.

2\. \*\*Churn is highest early.\*\* Customers in their first 12 months churn at 47.4%, falling to 9.5% after 4 years.

3\. \*\*New month-to-month customers are the highest-risk group\*\* at 51.4%. Among new customers, one-year contracts churn at 10.5%.

4\. \*\*Fiber optic customers churn most\*\* (41.9%). Most are on month-to-month contracts, which explains part of this gap. Within month-to-month customers, fiber still churns more than DSL (54.6% vs 32.2%).

5\. \*\*Customers without tech support churn more:\*\* 41.6% vs 15.2%. Part of this overlaps with contract type, but the gap remains within month-to-month customers (50.4% vs 30.7%).

6\. \*\*Price does not explain fiber churn.\*\* Within fiber customers, churners pay slightly less ($88.13) than those who stay ($93.93).



\## Recommendations

1\. \*\*Convert month-to-month customers to longer contracts.\*\* Offer incentives for one-year commitments, prioritizing new customers.

2\. \*\*Strengthen onboarding and support in the first year\*\*, when churn is highest.

3\. \*\*Test bundling tech support into plans\*\* to see whether it improves retention among month-to-month customers.

4\. \*\*Investigate fiber service quality.\*\* Price is not the driver, so the next step is to check reliability and complaints.



\## Limitations

\- This is observational data. The findings show association, not causation.

\- The dataset is a sample and may not represent any specific company.

\- Factors such as service quality, competitor offers, and customer complaints are not in the data.



\## Project Structure

```

telco-churn-analysis/

├── data/raw/          # Original CSV (unchanged)

├── notebooks/         # Python EDA

├── sql/               # SQL queries

├── power\_bi/          # Dashboard (.pbix) and preview image

└── README.md

```



\## How to Run

1\. Download the dataset from Kaggle into `data/raw/`.

2\. Open `notebooks/01\_data\_exploration.ipynb` in Jupyter.

3\. For SQL, run the queries in `sql/analysis\_queries.sql` after importing the CSV into MySQL.

4\. Open `power\_bi/telco\_churn\_dashboard.pbix` in Power BI Desktop.

