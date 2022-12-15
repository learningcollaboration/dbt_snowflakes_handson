WITH src_card AS (
 SELECT
 *
 FROM
 {{ ref('src_card') }}
)
SELECT
card_id
,disp_id
,type as card_type
,date_dim_id
FROM
src_card