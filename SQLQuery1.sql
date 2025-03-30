SELECT * FROM Bank_loan_data

Select sum(total_payment)
from Bank_loan_data
where MONTH(issue_date)=11 and YEAR(issue_date)=2021;