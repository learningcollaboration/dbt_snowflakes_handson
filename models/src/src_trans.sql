WITH raw_trans AS 
(
select * from {{ source('retail_banking_demo','trans') }}
)
SELECT
trans_id
,account_id
,type
,operation
,amount
,balance
,k_symbol
,bank
,account
,to_char(to_date(fulldate,'YYYY-MM-DD'),'YYYYMMDD') AS date_dim_id
FROM raw_trans
