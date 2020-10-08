with
    source as (
        select
            /* Primary key */
            product_id
            /* Foreign Key */
            , supplier_id
            , category_id
            , product_name
            , unit_price
            , quantity_per_unit
            , units_in_stock
            , units_on_order
            , 
                case 
                    when discontinued = 1 then True
                    else False 
                end as is_descontinued
            , reorder_level

            , _sdc_table_version
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
        from {{ source('northwind_etl','products') }}
    )

select * from source 

