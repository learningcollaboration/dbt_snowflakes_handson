WITH src_client AS (
 SELECT
 *
 FROM
 {{ ref('src_client') }}
)
SELECT
client_id
,sex
,date_dim_id
,age
,city
,state
,zipcode
,district_id
FROM
src_client