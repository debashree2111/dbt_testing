{{ config(materialized='table') }}

/*
    Find customers in store #1 that spent less than $2.99 on individual rentals, but have spent a total higher than $5.
*/
SELECT customer_id, SUM(amount)
FROM {{ ref('payments_of_store_1_model') }} sub
WHERE sub.amount < 2.99
{{ dbt_utils.group_by(1) }} HAVING SUM(sub.amount) >= 5