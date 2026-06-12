with source as (

    select * from {{ ref('base_letterboxd__diary') }}

),

renamed as (

    select
        {{ dbt_utils.generate_surrogate_key([
                'entry_date'
                , 'title'
                , 'release_year'
                , 'letterboxd_uri'
                , 'rating'
                , 'rewatch_flag'
                , 'tags'
                , 'watched_date'
        ]) }}
        , entry_date
        , title
        , release_year
        , letterboxd_uri
        , rating
        , rewatch_flag
        , tags
        , watched_date

    from source

)

select * from renamed