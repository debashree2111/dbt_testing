
/*
    Customer Grouping
*/

{{ config(materialized='table') }}

with inventory_rentals as (

    select inventory_id, count(*) from {{ source('public','rental') }} group by inventory_id

)

select *
from inventory_rentals

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
