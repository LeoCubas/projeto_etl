with
    source as (
        select
            shipper_id	
            , company_name		
            , phone		
			
            /* Stitch Columns */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','shippers') }}
    )
select * from source 

