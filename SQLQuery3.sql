/* Total amount received and the month over month(MoM) inflow of funds disbursed */

select sum(total_payment) as total_amount_received 
from financial_loan;

/* The month over month inflow of funds disbursed FY-2021 */

select sum(total_payment) as amount_rececived_dec
from financial_loan
where month(issue_date) = 12 and year(issue_date) = 2021;

select sum(total_payment) as amount_rececived_nov
from financial_loan
where month(issue_date) = 11 and year(issue_date) = 2021;

select sum(total_payment) as amount_rececived_Oct
from financial_loan
where month(issue_date) = 10 and year(issue_date) = 2021;
