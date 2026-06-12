with 

diary as (

    select * from {{ ref('base_letterboxd__diary') }}

),

reviews as (

    select * from {{ ref('base_letterboxd__reviews') }}

),


joined as (

    select
        d.entry_date
        , d.title
        , d.release_year
        , d.letterboxd_uri
        , d.rating
        , d.rewatch_flag
        , d.tags
        , r.review

    from diary d
    left join reviews r
        on r.entry = d.entry_date
        and r.title = d.title
        and r.release_year = d.release_year
        and r.letterboxd_uri = d.letterboxd_uri
        and r.rating = d.rating
        and r.rewatch = d.rewatch_flag
        and r.tags = d.tags
        and r.watched_date = d.watched_date

)

select * from joined