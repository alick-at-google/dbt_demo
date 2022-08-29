
{{ config(materialized='view') }}

with source_data as (

    select * from looker-private-demo.thelook.products

)

select *
from source_data