SELECT * FROM {{ref("get_relevant_details_for_countries")}}
WHERE __hevo__ingested_at > extract(epoch from {{dbt_utils.dateadd(datepart='day', interval = 2,
 from_date_or_timestamp= "'2022-06-27'")}})