{{ config(materialized='table') }}

SELECT customer_id FROM {{ source('public','payment') }} WHERE amount=9.99