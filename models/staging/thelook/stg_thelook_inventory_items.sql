
{{ config(materialized='view') }}

with source_data as (

    select * from looker-private-demo.thelook.inventory_items

)

select *
from source_data