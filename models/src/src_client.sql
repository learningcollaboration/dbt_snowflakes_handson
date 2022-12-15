WITH raw_client AS 
(
select * from {{ source('retail_banking_demo','client') }}
)
SELECT
client_id
,sex
,to_char(to_date(fulldate,'YYYY-MM-DD'),'YYYYMMDD') AS date_dim_id
,age
,city
,state
,zipcode
,district_id
FROM raw_client
