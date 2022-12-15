WITH src_disposition AS (
 SELECT
 *
 FROM
 {{ ref('src_disposition') }}
)
SELECT
disp_id
,client_id
,account_id
,type as disposition_type
FROM
src_disposition