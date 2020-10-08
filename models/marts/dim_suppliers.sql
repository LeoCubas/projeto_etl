with
    selected as (
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

        from {{ ref('stg_suppliers') }}
    )
    , transformed as (
        select 
            row_number() over (order by supplier_id) as supplier_sk
            , *
        from selected    
        
    )
select * from transformed

