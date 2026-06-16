{{ codegen.generate_source(
	schema_name= 'dbtkate'
	, database_name= 'Analytics'
	, table_names = ['amc_a_list_pricing']
	, generate_columns = true
	, include_descriptions = true
	, include_data_types = true
	, include_database = true
	, include_schema = true
	) 
}}