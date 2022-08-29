
{{ config(materialized='view') }}

with source_data as (

    select * from looker-private-demo.thelook.orders

)

select *
from source_data