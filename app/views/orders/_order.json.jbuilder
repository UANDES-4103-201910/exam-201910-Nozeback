json.extract! order, :id, :user_id, :orderstatus_id, :total, :created_at, :updated_at
json.url order_url(order, format: :json)
