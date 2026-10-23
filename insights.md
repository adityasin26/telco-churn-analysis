Loaded 7,043 customers and 21 columns from the original CSV.
Found that TotalCharges was stored as text, with 11 blank-looking values. Those were spaces for new customers with zero tenure.
Converted the column to numbers and filled the blanks with 0.
Confirmed the target column: 1,869 customers churned (about 26.5%).

“New month-to-month customers are the highest-churn group at 51%, so retention efforts should target converting them to longer contracts.”

Month-to-month contracts churn most (42.7%).
Churn is highest in the first year (47.4%).
New month-to-month customers are the riskiest group (51.4%).
Fiber customers churn most (41.9%), partly because most are on month-to-month contracts.
Customers without tech support churn more (41.6% vs 15.2%), and the effect holds within contract type.
Price doesn’t explain fiber churn.


# Key Insights

1. Contract type is the strongest churn driver.
   - Month-to-month: 42.7% churned
   - One year: 11.3% churned
   - Two year: 2.8% churned
2. Customers who churn leave early.
   - Average tenure of customers who stayed: 37.6 months
   - Average tenure of customers who churned: 18.0 months
3. Churn risk falls sharply with tenure.
   - 0-12 months: 47.4% churned
   - 13-24 months: 28.7% churned
   - 25-48 months: 20.4% churned
   - 49-72 months: 9.5% churned
4. Contract type and tenure compound each other.
   - New (0-12 months) month-to-month customers: 51.4% churned (highest-risk group)
   - New (0-12 months) one-year customers: 10.5% churned
   - Two-year customers churned at 0.0% in their first 24 months
5. Customers who churn pay more per month.
   - Average monthly charge, churned: $74.44
   - Average monthly charge, stayed: $61.27
6. Fiber optic internet customers churn the most.
   - Fiber optic: 41.9% churned
   - DSL: 19.0% churned
   - No internet service: 7.4% churned
7. Contract type explains part of the fiber churn, but not all of it.
   - Fiber customers are mostly month-to-month (68.7%)
   - Among month-to-month customers only: fiber 54.6% churned vs DSL 32.2%
   - Internet type seems to matter on its own, but the data can't show why
8. Customers without tech support churn more, and part of this is linked to contract type.
   - Overall: no tech support 41.6% churned vs with tech support 15.2%
   - Among month-to-month customers only: no tech support 50.4% vs with tech support 30.7%






## Hypotheses (to be confirmed or rejected)
- Month-to-month customers re-evaluate the service each month, so they leave more easily. (Supported by contract data)
- Tech support helps customers solve problems and keeps them. (Supported, but associated with contract type)
- Fiber is expensive, and its price may drive churn. (Testing: compare MonthlyCharges by churn within fiber customers)

- Fiber is expensive, and its price drives churn. (REJECTED: within fiber customers, churners pay slightly less ($88.13) than stayers ($93.93). Price alone doesn't explain it.)




Headline: 26.5% of 7,043 customers churned (1,869 customers).

Visual 1: Churn rate by contract type (bar chart)
- Shows month-to-month at 42.7% vs two-year at 2.8%

Visual 2: Churn rate by tenure band (column chart)
- 0-12 months: 47.4%, dropping to 9.5% at 49-72 months



