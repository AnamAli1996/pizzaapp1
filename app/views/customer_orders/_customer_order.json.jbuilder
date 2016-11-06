json.extract! customer_order, :id, :order_id, :customer_id, :employee_id, :delivery_time, :created_at, :updated_at
json.url customer_order_url(customer_order, format: :json)