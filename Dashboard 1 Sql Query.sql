select * from Bank_loan_data

--Good Loan Percentage
select 
	(Count(Case when loan_status='Fully Paid' or loan_status='Current' then id end)) * 100
	/
	count(id) as Good_loan_percentage
From Bank_loan_data

--Good_Loan_Applications
select count(id) as Good_applications
from Bank_loan_data
where loan_status= 'Fully Paid' or loan_status='Current'

--Good_loan_funded
select sum(loan_amount) as Good_applications
from Bank_loan_data
where loan_status= 'Fully Paid' or loan_status='Current'

--Good_Loan_Payment
select sum(total_payment) as Good_applications
from Bank_loan_data
where loan_status= 'Fully Paid' or loan_status='Current'


--Bad Loan Amount Percentage;

select 
	(Count(Case when loan_status='Charged off'  then id end)) * 100
	/
	count(id) as Bad Loan Amount Percentages
From Bank_loan_data

--Bad_Loan_Applications

select count(id) as Bad_Loan_Applications
from Bank_loan_data
where loan_status='Charged off'

--Bad_loan_Applications Funded Amount
select sum(loan_amount) as Bad_loan_Applications Funded Amount
from Bank_loan_data
where loan_status='Charged off'

--Bad_Loan_Refunded

select sum(total_payment) as Bad_Loan_Refunded
from Bank_loan_data
where loan_status='Charged off'




--Grid View
select loan_status AS Total_Loan_Applications,sum(total_payment) as Total_Amount_Received,
sum(loan_amount)as Total_Funded_Amount,
Avg(int_rate * 100) as Interest_Rate,
Avg(dti*100) as DTI
fROM Bank_loan_data
GROUP BY loan_status

--Grid View Mont-To-Date

select loan_status AS Total_Loan_Applications,sum(total_payment) as Total_Amount_Received,
sum(loan_amount)as Total_Funded_Amount,
Avg(int_rate * 100) as Interest_Rate,
Avg(dti*100) as DTI
fROM Bank_loan_data
where month(issue_date)=12 and year(issue_date)=2021
GROUP BY loan_status

--Grid View Previous-To-Date

select loan_status AS Total_Loan_Applications,sum(total_payment) as Total_Amount_Received,
sum(loan_amount)as Total_Funded_Amount,
Avg(int_rate * 100) as Interest_Rate,
Avg(dti*100) as DTI
fROM Bank_loan_data
where month(issue_date)=11 and year(issue_date)=2021
GROUP BY loan_status