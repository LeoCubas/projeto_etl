with
    source as (
        select
            employee_id
            , title		
            , title_of_courtesy	    
            , first_name
            , last_name
            , birth_date
            , hire_date	
            , home_phone
            , country		
            , city		
            , postal_code		
            , address
            , region	
            , extension			
            , photo_path		
            , notes			
            , reports_to		

            /* Stitch Columns */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','employees') }}
    )
select * from source 

