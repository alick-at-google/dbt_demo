
{{ config(materialized='view') }}

with source_data as (

    select * from looker-private-demo.thelook.order_items

)

select *
from source_data