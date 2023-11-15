with 

source as (

    select * from {{ source('sql_server_dbo', 'orders_items') }}

),

renamed as (

    select
    order_id not null,
    product_id not null,
    quantity number
    _fivetran_synced as date_load
    from source

)

select * from renamed
