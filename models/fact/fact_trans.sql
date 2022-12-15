WITH src_trans AS (
 SELECT
 *
 FROM
 {{ ref('src_trans') }}
)
SELECT
trans_id
,account_id
,type as trans_type
,operation
,amount
,balance
,k_symbol
,bank
,account
,date_dim_id
FROM
src_trans