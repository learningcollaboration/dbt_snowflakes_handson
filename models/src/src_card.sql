WITH raw_card AS 
(
select * from {{ source('retail_banking_demo','card') }}
)
SELECT
card_id
,disp_id
,type
,to_char(to_date(fulldate,'YYYY-MM-DD'),'YYYYMMDD') AS date_dim_id
FROM raw_card
