with source as (

    select * from {{ source('letterboxd', 'reviews') }}

),

renamed as (

    select
        date as entry_date
        , name
        , year as release_year
        , letterboxduri as letterboxd_uri
        , rating
        , rewatch
        , review
        , tags
        , watcheddate as watched_date

    from source

)

select * from renamed
