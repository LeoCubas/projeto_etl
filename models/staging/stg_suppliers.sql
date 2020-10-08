with
    source as (
        select
            supplier_id
            , company_name
            , contact_title	
            , contact_name	
            , homepage
            , phone
            , country		
            , city	
            , address
            , postal_code	
            , region
            , fax				
            /* STITCH */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','suppliers') }}
    )
select * from source 

