with source as (

    select * from {{ source('letterboxd', 'reviews') }}

),

renamed as (

    select
        date as entry_date
        , name as title
        , year as release_year
        , letterboxduri as letterboxd_uri
        , rating
        , rewatch
        , review as review_text
        , tags
        , watcheddate as watched_date

    from source

),

final as (

    select
        -- Create a surrogate key based on the combination of all relevant fields to ensure uniqueness
        {{ dbt_utils.generate_surrogate_key([
            'entry_date', 'title', 'release_year', 'letterboxd_uri', 'rating', 'rewatch', 'review', 'tags', 'watched_date'
        ]) }} as review_id
        , entry_date
        , title
        , release_year
        , letterboxd_uri
        , rating
        , rewatch
        , review_text
        , tags
        , watched_date

    from renamed
)

select * from final
