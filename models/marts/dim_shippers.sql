with
    selected as (
        select
            shipper_id	
            , company_name		
            , phone		


        from {{ ref('stg_shippers') }}
    )
    , transformed as (
        select 
            row_number() over (order by shipper_id) as shipper_sk
            , *
        from selected    
        
    )
select * from transformed

