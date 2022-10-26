
/*
    ------- DVD Rentals -------
    What are the top and least rented (in-demand) genres and what are what are their total sales?
*/

{{ config(materialized='table') }}

select country, count(distinct customer_id) as customer_base, sum(amount) as total_sales
        from {{ source('public','country') }}
        JOIN {{ source('public','city') }}
        using(country_id)
        join {{ source('public','address') }}
        using(city_id)
        join {{ source('public','customer') }}
        using(address_id)
        join {{ source('public','payment') }}
        using(customer_id)
        group by 1
        order by 2 desc