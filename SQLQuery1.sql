/* Total application received and month over month growth of loan application FY-2021 */

SELECT COUNT(id) as Total_application
FROM financial_loan;

/*Month to date loan application or most recent loan application*/

SELECT COUNT(id) as Total_application_dec
FROM financial_loan
WHERE month(issue_date)=12 and year(issue_date)=2021;

/*Month over month growth*/

SELECT COUNT(id) as Total_application_Nov
FROM financial_loan
WHERE month(issue_date) = 11 and year(issue_date) =2021;

 SELECT COUNT(id) as Total_application_oct
FROM financial_loan
WHERE month(issue_date) = 10 and year(issue_date) =2021;

SELECT COUNT(id) as Total_application_sept
FROM financial_loan
WHERE month(issue_date) =9 and year(issue_date)=2021;

