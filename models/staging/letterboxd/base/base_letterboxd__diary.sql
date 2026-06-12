{{ config(
    materialized='ephemeral'
) }}

with source as (

    select * from {{ source('letterboxd', 'diary') }}

),

renamed as (

    select
        "c1" as entry_date
        , "c2" as title
        , "c3" as release_year
        , "c4" as letterboxd_uri
        , "c5" as rating
        , "c6" as rewatch_flag
        , "c7" as tags
        , "c8" as watched_date
        -- , "c9"

    from source

)

select * from renamed