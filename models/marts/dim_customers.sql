with
    selected as (
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
        from {{ ref('stg_customers') }}
    )
    , transformed as (
        select 
            row_number() over (order by customer_id) as customer_sk
            , *
        from selected    
        
    )
select * from transformed

