-- average_attempts should only have one record for each problem_id.

select
    count(*) as num_rows
from
    {{ ref('average_attempts') }}
group by
    problem_id
having num_rows > 1
