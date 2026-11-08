SELECT 
    id,
    name
FROM {{ source('ae_raw', 'test') }}