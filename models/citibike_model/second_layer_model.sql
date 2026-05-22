{{ config(materialized='view') }}

select
     bikeid
    ,stoptime -  starttime AS trip_time
from {{ ref('first_layer_model') }}
where starttime < DATE('2026-01-01')
  and start_station_id = 3496 -- 1st ave and 110th st
order by 2 desc
