/* Bad loan percentage: By executing this query we can retrive the percentage of bad loans */
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan;

/* Count of bad loan application */

SELECT COUNT(id) AS Bad_Loan_Applications 
FROM financial_loan
WHERE loan_status = 'Charged Off';

/* Total bad loan amount funded */

select sum(loan_amount) as bad_loan_funded
from financial_loan
where loan_status = 'Charged Off';

/* Total bad loan amount received */

select sum(total_payment) as bad_loan_amnt_rec
from financial_loan
where loan_status = 'Charged Off';

select (select sum(loan_amount) as bad_loan_funded
from financial_loan
where loan_status = 'Charged Off') - (select sum(total_payment) as bad_loan_amnt_rec
from financial_loan
where loan_status = 'Charged Off') as loss_incured;