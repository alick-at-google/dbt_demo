{% test is_greater_than_equal_one(model, column_name) %}

with validation as (

    select
        {{ column_name }} as val

    from {{ model }}

),

validation_errors as (

    select
        val

    from validation
    -- if this is true, then val is not greater than or equal to 1!
    where val < 1

)

select *
from validation_errors

{% endtest %}