/* Total funded amount or total amount of funds disbursed and the month to month flow of funds FY-2021 */

select sum(loan_amount) as total_amount_funded 
from financial_loan;

/* Total funded amount recent months, total amount of funds disbursed */

select sum(loan_amount) as disbursed_on_dec 
from financial_loan
where month(issue_date)=12 and year(issue_date) = 2021;

/* Total disbursed amount on month of November */

select sum(loan_amount) as disbursed_on_nov 
from financial_loan
where month(issue_date)=11 and year(issue_date) = 2021;

/* Total disbursed amount on month of oct */

select sum(loan_amount) as disbursed_on_oct
from financial_loan
where month(issue_date)=10 and year(issue_date) = 2021;

