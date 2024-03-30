/* Loan status of month till date(MTD) FY- Dec 2021 */

SELECT
        loan_status,
        COUNT(id) AS Loan_application,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate_percentage,
        AVG(dti * 100) AS DTI_percentage
    FROM
        financial_loan
    Where month(issue_date) = 12 and year(issue_date) = 2021
    GROUP BY
        loan_status;
