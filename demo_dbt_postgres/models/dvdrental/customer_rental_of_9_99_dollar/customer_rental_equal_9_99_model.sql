{{ config(materialized='table') }}

/*
    Find customers that have rented movies priced $9.99
*/
SELECT c.customer_id, c.first_name, c.last_name, c.active, c.email
FROM {{ source('public','customer') }} as c join {{ ref('payments_of_amount_9_99_model') }} as p
on p.customer_id = c.customer_id
where c.active = 1
