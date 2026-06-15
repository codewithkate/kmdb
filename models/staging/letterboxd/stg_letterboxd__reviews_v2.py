def model(dbt, session):

    # Configure model to use nltk package for text processing
    dbt.config(materialized="table"
               , packages=["pandas", "nltk"]
               , imports = ['@DBT_DEPS/nltk_data/sentiment/vader_lexicon.zip']
               )
    review_df = dbt.source("letterboxd", "reviews").to_pandas()

    review_df['review_length'] = review_df['REVIEW'].apply(lambda x: len(x) if x else 0)

    return review_df