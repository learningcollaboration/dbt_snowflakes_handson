WITH raw_district AS 
(
select * from {{ source('retail_banking_demo','district') }}
)
SELECT
district_id
,city
,state_name
,state_abbrev
,region
,division
FROM raw_district

