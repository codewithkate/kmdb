{{ codegen.generate_source(
	schema_name= 'fresh'
	, database_name= 'analytics'
	, table_names = ['diary', 'reviews']
	, generate_columns = true
	, include_descriptions = true
	, include_data_types = true
	, include_database = true
	, include_schema = true
	) 
}}