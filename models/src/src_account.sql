WITH raw_account AS 
(
select * from {{ source('retail_banking_demo','account') }}
)
SELECT
account_id
,district_id
,frequency
,to_char(to_date(parseddate,'YYYY-MM-DD'),'YYYYMMDD') AS date_dim_id
FROM raw_account
