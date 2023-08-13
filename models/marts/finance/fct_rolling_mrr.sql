WITH mrr AS
(SELECT "PLAN_NAME" , "DATE_MONTH" , sum("MRR_AMOUNT") AS mrr
FROM {{ ref('fct_mrr') }}
GROUP BY 1,2
)

SELECT *
  , {{ rolling_average_over_periods('MRR','PLAN_NAME', 'DATE_MONTH', '2') }}
FROM mrr ORDER BY 1,2
