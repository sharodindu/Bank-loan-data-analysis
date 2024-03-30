/* Good loan percentage:By this query we can retrive the percentage of good loans disbursed from the bank FY-2021 */

select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100) /
count(id) as Good_loan_percentage
from financial_loan;

/* Good loan application count */

select count(id) as good_loan_application
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

/* Total good loan amount funded */

select sum(loan_amount) as good_loan_amount
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

/* Total good loan amount received */

select sum(total_payment) as Good_loan_amount_rec
 from financial_loan
 where loan_status = 'Fully Paid' or loan_status = 'Current';

 /* Profit gained from the funded amount */
 select (select sum(total_payment) as good_loan_amount
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current') - (select sum(loan_amount) as Good_loan_amount_rec
 from financial_loan
 where loan_status = 'Fully Paid' or loan_status = 'Current') /* good loan amount - good loan amount rec */  
 as total_profit;