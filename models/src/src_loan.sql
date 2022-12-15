WITH raw_loan AS 
(
select * from {{ source('retail_banking_demo','loan') }}
)
SELECT
loan_id
,account_id
,amount
,duration
,payments
,status
,location
,purpose
,to_char(to_date(fulldate,'YYYY-MM-DD'),'YYYYMMDD') AS date_dim_id
FROM raw_loan
