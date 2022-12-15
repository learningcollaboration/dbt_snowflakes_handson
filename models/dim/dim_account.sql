WITH src_account AS (
 SELECT
 *
 FROM
 {{ ref('src_account') }}
)
SELECT
account_id
,district_id
,frequency
,date_dim_id
FROM
 src_account