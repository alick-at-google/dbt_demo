
{{ config(materialized='table') }}
with source_data as (
    with users as (
        select
            id,
            state,
            country,
            zip
        from {{ ref('stg_thelook__users') }}
    ),
    orders as (
        select *
        from {{ ref('stg_thelook__orders') }}
    )
SELECT *
FROM users
JOIN orders ON users.id = orders.user_id)

select *
from source_data