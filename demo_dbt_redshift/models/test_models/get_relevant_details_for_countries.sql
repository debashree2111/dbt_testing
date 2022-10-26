
SELECT name, subregion, phone_code, capital, currency, __hevo__ingested_at/1000 as
__hevo__ingested_at FROM {{ref("get_countries_by_region")}}

