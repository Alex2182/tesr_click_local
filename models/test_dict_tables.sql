{{
  config(
    materialized='distributed_table',
    engine='ReplicatedMergeTree()',
    order_by='id'
    )
}}

SELECT 
    id,
    name
FROM {{ source('ae_raw', 'test') }}