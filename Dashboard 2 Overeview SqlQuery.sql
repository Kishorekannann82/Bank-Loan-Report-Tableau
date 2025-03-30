select * from Bank_loan_data

--Monthlly Trends
select DATENAME(MONTH,issue_date) as Months,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment,month(issue_date)
from Bank_loan_data
group by DATENAME(MONTH,issue_date),month(issue_date)
order by month(issue_date)

-- Regional Trends
select address_state,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment
from Bank_loan_data
group by address_state
order by Count(id) desc

--Loan_Term Analysis
select term,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment
from Bank_loan_data
group by term
order by term

--EmployeeLength Analysis

select emp_length,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment
from Bank_loan_data
group by emp_length
order by Count(id) desc

--Purpose of Loan
select purpose,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment
from Bank_loan_data
group by purpose
order by Count(id) desc

--Home Ownership 

select home_ownership,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_payment
from Bank_loan_data
group by home_ownership
order by Count(id) desc 




