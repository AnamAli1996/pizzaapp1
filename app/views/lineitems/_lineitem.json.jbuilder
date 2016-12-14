json.extract! lineitem, :id, :pizza_id, :order_id, :quantity, :cart_id, :created_at, :updated_at
json.url lineitem_url(lineitem, format: :json)