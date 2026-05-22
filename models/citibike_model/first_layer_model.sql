{{ config(materialized='table') }}

with raw_bike_trips as (

    select bikeid, starttime, stoptime, start_station_id, end_station_id, start_station_name, end_station_name
    from `bone-and-lumber-12345.dbt_dfreitag.citibike_trips`

)

select *
from raw_bike_trips
