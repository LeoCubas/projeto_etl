with
    source as (
        select
            order_id	
            , product_id		
            , unit_price
            , quantity
            , discount				
            /* Stitch Columns */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','order_details') }}
    )
select * from source 

