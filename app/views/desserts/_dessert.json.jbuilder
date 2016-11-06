json.extract! dessert, :id, :dessert_name, :price, :description, :vegetarian, :gluten_free, :image, :created_at, :updated_at
json.url dessert_url(dessert, format: :json)