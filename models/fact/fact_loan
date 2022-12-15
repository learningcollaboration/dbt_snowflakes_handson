WITH src_loan AS (
 SELECT
 *
 FROM
 {{ ref('src_loan') }}
)
SELECT
loan_id
,account_id
,amount
,duration
,payments
,status as loan_status
,location as borrower_location
,purpose as loan_purpose
,date_dim_id
FROM
src_loan