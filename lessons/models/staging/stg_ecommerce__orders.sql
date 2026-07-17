WITH source AS (
        SELECT *

        FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
	-- ids
        order_id,
        user_id,

		--timestamps
        created_at,
        returned_at,
        shipped_at,
        delivered_at,

		--Other columns
		status,
        num_of_item AS num_items_ordered

FROM source