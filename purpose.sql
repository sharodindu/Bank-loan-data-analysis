/* Loan purpose */

select 
purpose,
COUNT(id) as total_loan_appliction,
SUM(loan_amount) as funded_amount,
SUM(total_payment) as received_amount
from financial_loan
group by purpose
order by purpose;