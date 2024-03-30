/* Debt to income ratio (DTI) and the month over month change in the DTI (Avg, Max, Min) */

select avg(dti)*100 as average_dti
from financial_loan;

select min(dti)*100 as min_dti
from financial_loan;

select max(dti)*100 as max_dti
from financial_loan; 