with
    source as (
        select
            order_id
            , customer_id
            , employee_id
            , shipped_date
            , ship_country
 		    , ship_region
            , ship_name
            , order_date
            , ship_postal_code
            , ship_city
            , freight
            , ship_via as shipper_id
            , required_date
            , ship_address
            /* Stitch Columns */
            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','orders') }}
    )
select * from source 

