/*how many number and percent person in each group in every segment of credit amount*/
SELECT job, saving_account, checking_account, count(*) as customer_count,
		round(count(*)*100.0/ sum(count(*)) over(),2) as customer_percentage
FROM german_group_loan
GROUP by job;

/*this query is to see which group is potentialy having hard time to pay the loan*/
SELECT job, saving_account, checking_account, count(*) as customer_count, 
	round(count(*)*100.0/ sum(count(*)) over (),2
	) as customer_percentage,
	round(avg(credit_amount), 2) as avg_credit,
	round(avg(duration),2) as avg_duration
FROM german_group_loan
GROUP by job,saving_account,checking_account;

/*this query is to see how long each group to likely pay the loan*/
SELECT purpose, saving_account, checking_account, count(*) as customer_count, 
	round(count(*)*100.0/ sum(count(*)) over (),2
	) as customer_percentage,
	round(avg(credit_amount), 2) as avg_credit,
	round(avg(duration),2) as avg_duration
FROM german_group_loan
GROUP by purpose,saving_account,checking_account;

/*this query is to see how asset owning will affected pay the loan*/
SELECT housing, saving_account, checking_account, count(*) as customer_count, 
	round(count(*)*100.0/ sum(count(*)) over (),2
	) as customer_percentage,
	round(avg(credit_amount), 2) as avg_credit,
	round(avg(duration),2) as avg_duration
FROM german_group_loan
GROUP by housing, saving_account,checking_account;

/*Average Loan Duration (months)*/
SELECT avg(duration) FROM german_group_loan;

/*Average Credit Amount*/
SELECT avg(credit_amount) FROM german_group_loan;

/*Risky Customer Share (%)
later im gonna looked in the chart*/
SELECT saving_account, checking_account, count(*) as customer_count,
		round(count(*)*100.0/ sum(count(*)) over(),2) as customer_percentage
FROM german_group_loan
WHERE saving_account ='Little' AND checking_account ='Little'
GROUP by saving_account, checking_account;

/*what segmnt should have been watched-- explain that it have difficulty to measure because the missing data*/
SELECT saving_account, checking_account, count(*) as customer_count,
		round(count(*)*100.0/ (SELECT (count(*)) FROM german_group_loan),2) as customer_percentage
FROM german_group_loan
WHERE saving_account ='Na' 
AND checking_account ='Na' 
AND job in('0','1') 
GROUP by saving_account, checking_account;
