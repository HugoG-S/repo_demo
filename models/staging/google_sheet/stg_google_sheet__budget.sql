with 

source as (

    select * from {{ source('google_sheet', 'budget') }}

),

renamed as (

    select
        _row,
        quantity,
        month,
        product_id,
        _fivetran_synced

    from source

)

select * from renamed