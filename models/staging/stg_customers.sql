with
    source as (
        select
            customer_id
            , contact_name
            , company_name		
            , contact_title	
            , phone	
            , fax
            , country
            , postal_code		
            , city		
            , address	
            , region	
            /* Stitch Columns */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','customers') }}
    )
select * from source 

