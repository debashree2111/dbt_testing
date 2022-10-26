
with source_data as (
   select * from countries
)

select * from source_data WHERE region = '{{ var("region") }}'