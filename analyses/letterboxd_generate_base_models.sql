{{ codegen.generate_base_model(
    source_name='letterboxd'
    , table_name='reviews'
	, leading_commas= true
    , materialized='view'
) }}