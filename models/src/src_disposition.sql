WITH raw_disposition AS 
(
select * from {{ source('retail_banking_demo','disposition') }}
)
SELECT
disp_id
,client_id
,account_id
,type
FROM raw_disposition

