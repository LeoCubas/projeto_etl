with
    selected as (
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


        from {{ ref('stg_employees') }}
    )
    , transformed as (
        select 
            row_number() over (order by employee_id) as employee_sk
            , *
        from selected    
        
    )
select * from transformed

