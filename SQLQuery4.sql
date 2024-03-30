/* Interest rate and the month over month change in the interest rate FY-2021 */

select avg(int_rate)*100 as Average_int_rate
from financial_loan;
select max(int_rate)*100 as max_int_rate
from financial_loan;
select min(int_rate)*100 as min_int_rate
from financial_loan;

/* Month to date interest rate followed by the previous month average interest rate */

select avg(int_rate)*100 as Average_int_rate_dec
from financial_loan 
where month(issue_date) = 12 and year(issue_date) =2021;
select avg(int_rate)*100 as Average_int_rate_nov
from financial_loan 
where month(issue_date) = 11 and year(issue_date) =2021;