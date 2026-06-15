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

),

final as (
    select
        -- Create a surrogate key based on the combination of all relevant fields to ensure uniqueness
        {{ dbt_utils.generate_surrogate_key([
            'entry_date', 'title', 'release_year', 'letterboxd_uri', 'rating', 'rewatch_flag', 'tags', 'watched_date'
        ]) }} as diary_id
        , entry_date
        , title
        , release_year
        , letterboxd_uri
        , rating
        , rewatch_flag as rewatch
        , tags
        , watched_date

    from renamed
)

select * from final