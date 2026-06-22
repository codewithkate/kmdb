
with letterboxd_diary as (

    select * from {{ ref('stg_letterboxd__diary') }}

),

final as (
    select
        reservation_id
        , watched_date
        , title
        , release_year
        , letterboxd_uri
        , rating
        , rewatch
        -- Parse array of tags
        , tags[0] as location
        , tags[1] as ticket_cost
        , tags[2] as theatre_format

    from letterboxd_diary
)

select * from final