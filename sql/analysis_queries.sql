-- =====================================================
-- Telco Customer Churn Analysis
-- Dataset: WA_Fn-UseC_-Telco-Customer-Churn.csv (7,043 customers)
-- =====================================================


-- Step 1: Clean view
-- Converts blank TotalCharges values to 0 and stores the column as a number.
-- The raw table is not changed.
CREATE OR REPLACE VIEW customers_clean AS
SELECT
    customerID, gender, SeniorCitizen, Partner, Dependents, tenure,
    PhoneService, MultipleLines, InternetService, OnlineSecurity,
    OnlineBackup, DeviceProtection, TechSupport, StreamingTV,
    StreamingMovies, Contract, PaperlessBilling, PaymentMethod,
    MonthlyCharges,
    CASE WHEN TRIM(TotalCharges) = '' THEN 0
         ELSE CAST(TotalCharges AS DECIMAL(10,2))
    END AS TotalCharges,
    Churn
FROM customers;


-- Query 1: Churn rate by contract type
-- Finding: month-to-month customers churn most (42.7%).
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers_clean
GROUP BY Contract
ORDER BY churn_rate_pct DESC;


-- Query 2: Churn rate by tenure band
-- Finding: churn is highest in the first year (47.4%).
SELECT
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 months'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48 months'
        ELSE '49-72 months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers_clean
GROUP BY tenure_group
ORDER BY MIN(tenure);


-- Query 3: Churn rate by tech support (all customers)
-- Finding: customers without tech support churn more (41.6% vs 15.2%).
SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_rate_pct
FROM customers_clean
GROUP BY TechSupport
ORDER BY churn_rate_pct DESC;


